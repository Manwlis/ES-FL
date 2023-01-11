#include "conv_bp.hpp"

template < unsigned int out_height , unsigned int out_width , unsigned int out_channels >
void conv_bp_activate_error (
	hls::stream < float >& s_out_error ,
	hls::stream < bool >& s_activations ,
	hls::stream < float >& s_activated_out_error )
{
	outputs: for ( unsigned int kernel = 0 ; kernel < out_height * out_width * out_channels ; kernel++ )
	{
		float kernel_error = s_out_error.read();
		bool kernel_activation = s_activations.read();

		float activated_kernel_error = kernel_activation ? kernel_error : 0.f;

		s_activated_out_error.write( activated_kernel_error );
	}
}

template < typename in_type ,
	unsigned int in_height ,     unsigned int in_width ,     unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width , unsigned int partition_factor >
void conv_create_window_stream ( hls::stream< in_type >& s_input , hls::stream< window < in_type , filter_height , filter_width > >& s_in_window )
{
	in_type line_buffer[filter_height-1][in_width][in_channels];
#pragma HLS ARRAY_PARTITION variable=line_buffer dim=2 type=cyclic factor=partition_factor

	window < in_type , filter_height , filter_width > temp_windows[in_channels];

	const unsigned int ramp_up = in_width * ( ( filter_width - 1 ) / 2 ) + ( ( filter_height - 1 ) / 2 );
	const unsigned int num_pixels = in_width * in_height;

	unsigned int col_ptr = 0;
	pixel: for ( unsigned int pixel_counter = 0 ; pixel_counter < num_pixels + ramp_up ; pixel_counter++ )
	{
		channel: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
		{
			in_type new_pixel;

			if( pixel_counter < num_pixels )
				new_pixel = s_input.read();
			else
				new_pixel = 0.f;

			shift_windows: for( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			{
				shift_firsts_cols: for ( unsigned int filter_x = 0 ; filter_x < filter_width - 1 ; filter_x++ )
						temp_windows[channel].elements[filter_y][filter_x] = temp_windows[channel].elements[filter_y][filter_x+1];

				if ( filter_y < filter_height - 1 )
					temp_windows[channel].elements[filter_y][filter_width-1] = line_buffer[filter_y][col_ptr][channel];
				else
					temp_windows[channel].elements[filter_y][filter_width-1] = new_pixel;
			}
			shift_line_buf: for( unsigned int line = 0 ; line < int(filter_height) - 2 ; line++ )
				line_buffer[line][col_ptr][channel] = line_buffer[line+1][col_ptr][channel];

			line_buffer[filter_height-2][col_ptr][channel] = new_pixel;

			if ( pixel_counter >= ramp_up )
				s_in_window.write( temp_windows[channel] );
		}
		if( col_ptr == in_width - 1 )
			col_ptr = 0;
		else
			col_ptr++;
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

template <
	unsigned int in_height ,     unsigned int in_width     , unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv_bp_mc_sum (
	hls::stream < window < float , filter_height , filter_width > >& s_in_window ,
	float weights[filter_height][filter_width][in_channels][num_filters] ,
	hls::stream < window_1d< float , in_channels > >& s_channel_sums_per_filter )
{
	in_y: for ( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
			filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
			{
#pragma HLS PIPELINE II=3
				window < float , filter_height , filter_width > temp_window = s_in_window.read();
				window_1d < float , in_channels > channel_sums;

				in_c: for ( unsigned int in_c = 0 ; in_c < in_channels ; in_c++ )
				{
					channel_sums.elements[in_c] = 0;
					filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
						filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
							channel_sums.elements[in_c] += temp_window.elements[filter_y][filter_x]
															* weights[filter_height - 1 - filter_y][filter_width - 1 - filter_x][in_c][filter];
				}
				s_channel_sums_per_filter.write( channel_sums );
			}
}

template < unsigned int in_height , unsigned int in_width , unsigned int in_channels , unsigned int num_filters >
void conv_bp_mc_aggregate_channels (
	hls::stream < window_1d< float , in_channels > >& s_channel_sums_per_filter ,
	hls::stream < window_1d< float , in_channels > >& s_channel_sums )
{
	window_1d< float , in_channels > channel_sums;
	in_y: for ( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
			filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
			{
#pragma HLS PIPELINE II=3
				window_1d< float , in_channels > temp = s_channel_sums_per_filter.read();
				if ( filter == 0 )
					channel_sums = temp;
				else
					channel_sums += temp;

				if ( filter == num_filters - 1 )
					s_channel_sums.write( channel_sums );
			}
}


template < unsigned int in_height , unsigned int in_width , unsigned int in_channels >
void conv_bp_mc_stream (
	hls::stream < window_1d< float , in_channels > >& s_channel_sums  ,
	hls::stream < float >& s_output )
{
	window_1d< float , in_channels > channel_sums;
	in_y: for ( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
			in_c: for ( unsigned int in_c = 0 ; in_c < in_channels ; in_c++ )
			{
#pragma HLS PIPELINE II=1
				if ( in_c == 0 )
					channel_sums = s_channel_sums.read();

				s_output.write( channel_sums.elements[in_c] );
			}
}


void dataflow_region (
	float conv_32_out_error[conv_32_out_height * conv_32_out_width * conv_32_out_channels] ,
	hls::stream < bool >& s_conv_32_activations ,
	float conv_32_weights[conv_32_filter_height][conv_32_filter_width][conv_32_in_channels][conv_32_num_filters] ,
	float conv_32_in_error[conv_32_in_height * conv_32_in_width * conv_32_in_channels] )
{
#pragma HLS STABLE variable=conv_32_weights
#pragma HLS DATAFLOW
	hls::stream < float , 3 > s_conv_32_out_error;
	hls::stream < float , 3 > s_conv_32_activated_out_error;
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 3 > s_conv_32_out_error_window;
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 3 > s_conv_32_out_error_paddded_window;
	hls::stream < window_1d< float , conv_32_in_channels > , 3 > s_channel_sums_per_filter;
	hls::stream < window_1d< float , conv_32_in_channels > , 3 > s_channel_sums;

	hls::stream < float , 3 > s_conv_32_in_error;

	array_to_stream < float , conv_32_out_height * conv_32_out_width * conv_32_out_channels > ( conv_32_out_error , s_conv_32_out_error );

	// filter unactivated errors
	conv_bp_activate_error < conv_32_out_height , conv_32_out_width , conv_32_out_channels > ( s_conv_32_out_error , s_conv_32_activations , s_conv_32_activated_out_error );

	// put activations & errors in windows
	conv_create_window_stream < float , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , 14 >
		( s_conv_32_activated_out_error , s_conv_32_out_error_window );

	// pad windows
	conv_pad_windows < float , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_window , s_conv_32_out_error_paddded_window );

	// calculate error of each input per filter
	conv_bp_mc_sum < conv_32_in_height , conv_32_in_width , conv_32_in_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_out_error_paddded_window , conv_32_weights , s_channel_sums_per_filter );

	conv_bp_mc_aggregate_channels < conv_32_in_height , conv_32_in_width , conv_32_in_channels , conv_32_num_filters >
		( s_channel_sums_per_filter , s_channel_sums );

	conv_bp_mc_stream < conv_32_in_height , conv_32_in_width , conv_32_in_channels > ( s_channel_sums , s_conv_32_in_error );

	// write output in gmem
	stream_to_array < float , conv_32_in_height * conv_32_in_width * conv_32_in_channels > ( s_conv_32_in_error , conv_32_in_error );
}


void accel (
	float conv_32_out_error[conv_32_out_height * conv_32_out_width * conv_32_out_channels] ,
	bool conv_32_activations[conv_32_out_height * conv_32_out_width * conv_32_out_channels] ,
	float gmem_conv_32_weights[conv_32_filter_height][conv_32_filter_width][conv_32_in_channels][conv_32_num_filters] ,
	float conv_32_in_error[conv_32_in_height * conv_32_in_width * conv_32_in_channels] )
{
	// save weights locally
	float conv_32_weights[conv_32_filter_height][conv_32_filter_width][conv_32_in_channels][conv_32_num_filters];
	for ( unsigned int h = 0 ; h < conv_32_filter_height ; h++ )
		for ( unsigned int w = 0 ; w < conv_32_filter_width ; w++ )
			for ( unsigned int c = 0 ; c < conv_32_in_channels ; c++ )
				for ( unsigned int f = 0 ; f < conv_32_num_filters ; f++ )
					conv_32_weights[h][w][c][f] = gmem_conv_32_weights[h][w][c][f];

	// create stream of windows for the activations
	hls::stream < bool , 3 > s_conv_32_activations;
	array_to_stream < bool , conv_32_out_height * conv_32_out_width * conv_32_out_channels > ( conv_32_activations , s_conv_32_activations );

	// call dataflow region
	dataflow_region ( conv_32_out_error , s_conv_32_activations , conv_32_weights , conv_32_in_error );
}
