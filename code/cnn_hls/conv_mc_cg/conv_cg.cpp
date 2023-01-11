#include "conv_cg.hpp"

void stream_input ( float maxp_16_fmap[conv_32_in_h][conv_32_in_w][conv_32_in_c] , hls::stream < float >& s_input )
{
	stream_input:
	for ( unsigned int h = 0 ; h < conv_32_in_h ; h++ )
		for ( unsigned int w = 0 ; w < conv_32_in_w ; w++ )
			for ( unsigned int c = 0 ; c < conv_32_in_c ; c++ )
				s_input.write( maxp_16_fmap[h][w][c] );
}

template < typename in_type ,
	unsigned int in_height ,     unsigned int in_width ,     unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width , unsigned int partition_factor >
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

template < uint _out_h , uint _out_w , uint _out_c >
void conv_cg_mc_group_kernel_errors ( hls::stream < float >& s_kernel_error ,	// out_height * out_width * out_channels
	hls::stream < window_1d < float , _out_c > >& s_grouped_kernel_errors )		// out_height * out_width
{
	window_1d < float , _out_c > temp_group;
	out_y: for( uint out_y = 0 ; out_y < _out_h ; out_y++ )
		out_x: for( uint out_x = 0 ; out_x < _out_w ; out_x++ )
			out_c: for( uint out_c = 0 ; out_c < _out_c ; out_c++ )
			{
#pragma HLS PIPELINE II=1
				temp_group.elements[out_c] = s_kernel_error.read();

				if ( out_c == _out_c - 1 )
					s_grouped_kernel_errors.write( temp_group );
			}
}

template < typename _in_type , uint _in_h , uint _in_w , uint _in_c , uint _f_h , uint _f_w , uint _num_f >
void conv_cg_mc (
hls::stream < window < _in_type , _f_h , _f_w > >& s_in_window ,			// in_height * in_width * num_inputs
	hls::stream < window_1d < float , _num_f > >& s_grouped_kernel_errors ,	// out_height * out_width
	float weight_grads[_f_h][_f_w][_in_c][_num_f] , float bias_grads[_num_f] )
{
	window_1d < float , _num_f > out_grads;

	in_y: for( uint in_y = 0 ; in_y < _in_h ; in_y++ ) // in_y == out_y
		in_x: for( uint in_x = 0 ; in_x < _in_w ; in_x++ ) // in_x == out_x
			in_c: for ( uint in_c = 0 ; in_c < _in_c ; in_c++ )
			{
#pragma HLS PIPELINE II=16
				// get out grads and calculate bias grads
				if ( in_c == 0 )
				{
					out_grads = s_grouped_kernel_errors.read();
					calc_bias_grads: for( uint filter = 0 ; filter < _num_f ; filter++ )
						bias_grads[filter] += out_grads.elements[filter] ;
				}

				// get layer's input
				window < _in_type , _f_h , _f_w >  in_window = s_in_window.read();

				// calc weight gradients
				calc_weights_grads: for( uint filter_y = 0 ; filter_y < _f_h ; filter_y++ )
					for ( uint filter_x = 0 ; filter_x < _f_w ; filter_x++ )
						for ( uint filter = 0 ; filter < _num_f ; filter++ )
							weight_grads[filter_y][filter_x][in_c][filter] += in_window.elements[filter_y][filter_x] * out_grads.elements[filter];
			}
}



void dataflow_region (
	float maxp_16_fmap[conv_32_in_h][conv_32_in_w][conv_32_in_c] ,
	hls::stream < float >& s_activated_out_grads ,
	float weight_grads[conv_32_f_h][conv_32_f_w][conv_32_in_c][conv_32_num_f] , float bias_grads[conv_32_num_f] )
{
#pragma HLS DATAFLOW

	hls::stream < float , 3 > s_input;
	hls::stream < window < float , conv_32_f_h , conv_32_f_w > , 3 > s_in_window;
	hls::stream < window < float , conv_32_f_h , conv_32_f_w > , 3 > s_in_padded_window;

	stream_input ( maxp_16_fmap , s_input );

	conv_create_window_stream < float , conv_32_in_h , conv_32_in_w , conv_32_in_c , conv_32_f_h , conv_32_f_w , 0 >
		( s_input , s_in_window );

	conv_pad_windows < float , conv_32_in_h , conv_32_in_w , conv_32_in_c , conv_32_f_h , conv_32_f_w >
		( s_in_window , s_in_padded_window );


	hls::stream < window_1d < float , conv_32_out_c > , 3 > s_grouped_kernel_errors;

	conv_cg_mc_group_kernel_errors < conv_32_out_h , conv_32_out_w , conv_32_out_c > ( s_activated_out_grads , s_grouped_kernel_errors );
	conv_cg_mc < float , conv_32_in_h , conv_32_in_w , conv_32_in_c , conv_32_f_h , conv_32_f_w , conv_32_num_f >
		( s_in_padded_window , s_grouped_kernel_errors , weight_grads , bias_grads );

}


void accel (
	float maxp_16_fmap[conv_32_in_h][conv_32_in_w][conv_32_in_c] ,
	float conv_32_activated_out_grads[conv_32_out_h][conv_32_out_w][conv_32_out_c],

	float gmem_conv_32_weight_grads[conv_32_f_h][conv_32_f_w][conv_32_in_c][conv_32_num_f] ,
	float gmem_conv_32_bias_grads[conv_32_num_f] )
{
	// local variable gradients
	float weight_grads[conv_32_f_h][conv_32_f_w][conv_32_in_c][conv_32_num_f];
	float bias_grads[conv_32_num_f];
#pragma HLS ARRAY_PARTITION variable=weight_grads dim=4 type=complete

	// init local variable gradients
	init_weight_grads:
	for ( unsigned int h = 0 ; h < conv_32_f_h ; h++ )
		for ( unsigned int w = 0 ; w < conv_32_f_w ; w++ )
			for ( unsigned int c = 0 ; c < conv_32_in_c ; c++ )
				for ( unsigned int f = 0 ; f < conv_32_num_f ; f++ )
					weight_grads[h][w][c][f] = 0.f;

	init_bias_grads:
	for ( unsigned int k = 0 ; k < conv_32_num_f ; k++ )
		bias_grads[k] = 0.f;

	// put inputs in streams
	hls::stream < float , conv_32_out_h * conv_32_out_w * conv_32_out_c > s_activated_out_grads;

	stream_activated_out_error:
	for ( unsigned int h = 0 ; h < conv_32_out_h ; h++ )
		for ( unsigned int w = 0 ; w < conv_32_out_w ; w++ )
			for ( unsigned int c = 0 ; c < conv_32_out_c; c++ )
				s_activated_out_grads.write( conv_32_activated_out_grads[h][w][c] );

	// calculate gradients
	dataflow_region ( maxp_16_fmap , s_activated_out_grads , weight_grads , bias_grads );

	// write results in gmem
	save_weight_grads:
	for ( unsigned int h = 0 ; h < conv_32_f_h ; h++ )
		for ( unsigned int w = 0 ; w < conv_32_f_w ; w++ )
			for ( unsigned int c = 0 ; c < conv_32_in_c ; c++ )
				for ( unsigned int f = 0 ; f < conv_32_num_f ; f++ )
					gmem_conv_32_weight_grads[h][w][c][f] = weight_grads[h][w][c][f];


	save_bias_grads:
	for ( unsigned int f = 0 ; f < conv_32_num_f ; f++ )
		gmem_conv_32_bias_grads[f] = bias_grads[f];
}
