#include "conv_sc_cg.hpp"


void stream_input ( float input[input_h][input_w][input_c] , hls::stream < float >& s_input )
{
	stream_input:
	for ( unsigned int h = 0 ; h < input_h ; h++ )
		for ( unsigned int w = 0 ; w < input_w ; w++ )
			for ( unsigned int c = 0 ; c < input_c ; c++ )
				s_input.write( input[h][w][c] );
}

template < typename in_type ,
	unsigned int in_height ,     unsigned int in_width ,     unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width >
void conv_create_window_stream ( hls::stream< in_type >& s_input , hls::stream< window < in_type , filter_height , filter_width > >& s_in_window )
{
	in_type line_buffer[filter_height-1][in_width][in_channels];

	window < in_type , filter_height , filter_width > temp_windows[in_channels];

	const unsigned int ramp_up = in_width * ( ( filter_width - 1 ) / 2 ) + ( ( filter_height - 1 ) / 2 );
	const unsigned int num_pixels = in_width * in_height;

	unsigned int col_ptr = 0;
	pixel: for ( unsigned int pixel_counter = 0 ; pixel_counter < num_pixels + ramp_up ; pixel_counter++ )
		in_c: for ( unsigned int in_c = 0 ; in_c < in_channels ; in_c++ )
		{
#pragma HLS PIPELINE II=1
			in_type new_pixel;

			if( pixel_counter < num_pixels )
				new_pixel = s_input.read();
			else
				new_pixel = 0.f;

			shift_windows: for( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			{
				shift_firsts_cols: for ( unsigned int filter_x = 0 ; filter_x < filter_width - 1 ; filter_x++ )
						temp_windows[in_c].elements[filter_y][filter_x] = temp_windows[in_c].elements[filter_y][filter_x+1];

				if ( filter_y < filter_height - 1 )
					temp_windows[in_c].elements[filter_y][filter_width-1] = line_buffer[filter_y][col_ptr][in_c];
				else
					temp_windows[in_c].elements[filter_y][filter_width-1] = new_pixel;
			}
			shift_line_buf: for( unsigned int line = 0 ; line < int(filter_height) - 2 ; line++ )
				line_buffer[line][col_ptr][in_c] = line_buffer[line+1][col_ptr][in_c];

			line_buffer[filter_height-2][col_ptr][in_c] = new_pixel;

			if ( pixel_counter >= ramp_up )
				s_in_window.write( temp_windows[in_c] );

			if ( in_c == in_channels - 1 )
			{
				if( col_ptr == in_width - 1 )
					col_ptr = 0;
				else
					col_ptr++;
			}
		}
}

template < typename in_type ,
	unsigned int in_height ,     unsigned int in_width ,     unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width >
void conv_pad_windows (
	hls::stream < window < in_type , filter_height , filter_width > >& s_in_window ,
	hls::stream < window < in_type , filter_height , filter_width > >& s_in_padded_window )
{
	in_y: for( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
			in_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
			{
#pragma HLS PIPELINE II=1
				window < in_type , filter_height , filter_width > temp_window = s_in_window.read();

				filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
					filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
					{
						int y_offseted = static_cast<int>( in_y + filter_y - filter_height / 2 );
						int x_offseted = static_cast<int>( in_x + filter_x - filter_width / 2 );
						bool illegal_pixel_pos = ( y_offseted < 0 ) || ( y_offseted >= int(in_height) ) || ( x_offseted < 0 ) || ( x_offseted >= int(in_width) );

						if ( illegal_pixel_pos )
							temp_window.elements[filter_y][filter_x] = 0.f;
					}
				s_in_padded_window.write( temp_window );
			}
}

template < typename _in_type ,
	unsigned int _in_h , unsigned int _in_w , unsigned int _in_c ,
	unsigned int _f_h , unsigned int _f_w , unsigned int _num_f >
void conv_sc_cg (
	hls::stream < window < float , _f_h , _f_w > >& s_in_pad_wnd , // in_height * in_width
	hls::stream < float >& s_kernel_error , // out_height * out_width * num_filters
	float weight_grads[_f_h][_f_w][_num_f] , float bias_grads[_num_f] )
{
	window < _in_type , _f_h , _f_w >  in_wnd;
	in_y: for( unsigned int in_y = 0 ; in_y < _in_h ; in_y++ )
		in_x: for( unsigned int in_x = 0 ; in_x < _in_w ; in_x++ )
			out_f: for ( unsigned int filter = 0 ; filter < _num_f ; filter++ )
			{
#pragma HLS PIPELINE II=1
				if ( filter == 0 )
					in_wnd = s_in_pad_wnd.read();

				float out_grad = s_kernel_error.read();
				bias_grads[filter] += out_grad;

				calc_weights:
				for( unsigned int filter_y = 0 ; filter_y < _f_h ; filter_y++ )
					for ( unsigned int filter_x = 0 ; filter_x < _f_w ; filter_x++ )
						weight_grads[filter_y][filter_x][filter] += in_wnd.elements[filter_y][filter_x] * out_grad;
			}
}


void dataflow_region (
	float gmem_input[input_h][input_w][input_c] ,
	hls::stream < float >& s_activated_out_grads ,
	float weight_grads[conv_16_f_h][conv_16_f_w][conv_16_f] ,
	float bias_grads[conv_16_f] )
{
#pragma HLS DATAFLOW
	hls::stream < float , 3 > s_input;
	hls::stream < window < float , conv_16_f_h , conv_16_f_w > , 3 > s_in_wnd;
	hls::stream < window < float , conv_16_f_h , conv_16_f_w > , 3 > s_in_pad_wnd;

	stream_input ( gmem_input , s_input );

	conv_create_window_stream < float , conv_16_in_h , conv_16_in_w , conv_16_in_c , conv_16_f_h , conv_16_f_w >
		( s_input , s_in_wnd );

	conv_pad_windows < float , conv_16_in_h , conv_16_in_w , conv_16_in_c , conv_16_f_h , conv_16_f_w >
		( s_in_wnd , s_in_pad_wnd );

	conv_sc_cg < float , conv_16_in_h , conv_16_in_w , conv_16_in_c , conv_16_f_h , conv_16_f_w , conv_16_f >
		( s_in_pad_wnd , s_activated_out_grads , weight_grads , bias_grads );
}


void accel (
	float gmem_input[input_h][input_w][input_c] ,
	float gmem_conv_16_activated_out_grads[conv_16_out_h][conv_16_out_w][conv_16_out_c] ,
	float gmem_weight_grads[conv_16_f_h][conv_16_f_w][conv_16_f] ,
	float gmem_bias_grads[conv_16_f] )
{
	float weight_grads[conv_16_f_h][conv_16_f_w][conv_16_f];
	float bias_grads[conv_16_f];

	// init local variable gradients
	init_weight_grads:
	for ( unsigned int h = 0 ; h < conv_16_f_h ; h++ )
		for ( unsigned int w = 0 ; w < conv_16_f_w ; w++ )
				for ( unsigned int f = 0 ; f < conv_16_f ; f++ )
					weight_grads[h][w][f] = 0.f;

	init_bias_grads:
	for ( unsigned int k = 0 ; k < conv_16_f ; k++ )
		bias_grads[k] = 0.f;


	hls::stream < float , conv_16_out_h * conv_16_out_w * conv_16_out_c > s_activated_out_grads;
	stream_activated_out_error:
	for ( unsigned int h = 0 ; h < conv_16_out_h ; h++ )
		for ( unsigned int w = 0 ; w < conv_16_out_w ; w++ )
			for ( unsigned int c = 0 ; c < conv_16_out_c; c++ )
				s_activated_out_grads.write( gmem_conv_16_activated_out_grads[h][w][c] );

	// calculate gradients
	dataflow_region ( gmem_input , s_activated_out_grads , weight_grads , bias_grads );

	// write results in gmem
	save_weight_grads:
	for ( unsigned int h = 0 ; h < conv_16_f_h ; h++ )
		for ( unsigned int w = 0 ; w < conv_16_f_w ; w++ )
				for ( unsigned int f = 0 ; f < conv_16_f ; f++ )
					gmem_weight_grads[h][w][f] = weight_grads[h][w][f];

	save_bias_grads:
	for ( unsigned int f = 0 ; f < conv_16_f ; f++ )
		gmem_bias_grads[f] = bias_grads[f];
}
