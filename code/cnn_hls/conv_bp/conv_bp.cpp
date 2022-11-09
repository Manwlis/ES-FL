#include "conv_bp.hpp"


template < typename in_type ,
	unsigned int in_height     , unsigned int in_width    , unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width >
void conv_mc_create_window_stream (
	hls::stream< in_type >& input_stream ,
	hls::stream< window < in_type , filter_height , filter_width > >& window_stream )
{
	in_type line_buffer[filter_height-1][in_width][in_channels];
#pragma HLS ARRAY_PARTITION variable=line_buffer dim=2 complete // this can be removed if II=2

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
				new_pixel = input_stream.read();
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
				window_stream.write( temp_windows[channel] );
		}
		if( col_ptr == in_width - 1 )
			col_ptr = 0;
		else
			col_ptr++;
	}
}


template < typename in_type ,
	unsigned int in_height     , unsigned int in_width     , unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv_pad_windows (
		hls::stream < window < in_type , filter_height , filter_width > >& input_window_stream ,
		hls::stream < window < in_type , filter_height , filter_width > >& output_window_stream )
{
	in_y: for( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
			in_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
			{
				window < in_type , filter_height , filter_width > temp_window = input_window_stream.read();

				filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
					filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
					{
						int y_offseted = static_cast<int>( in_y + filter_y - filter_height / 2 );
						int x_offseted = static_cast<int>( in_x + filter_x - filter_width / 2 );
						bool illegal_pixel_pos = ( y_offseted < 0 ) || ( y_offseted >= int(in_height) ) || ( x_offseted < 0 ) || ( x_offseted >= int(in_width) );

						if ( illegal_pixel_pos )
							temp_window.elements[filter_y][filter_x] = 0.f;
					}
				output_window_stream.write( temp_window );
			}
}


template < unsigned int out_height , unsigned int out_width , unsigned int out_channels ,
	unsigned int filter_height , unsigned int filter_width >
void activate_out_error (
	hls::stream < window < float , filter_height , filter_width > >& out_error_windows_stream ,
	hls::stream < window < bool , filter_height , filter_width > >& activation_windows_stream ,
	hls::stream < window < float , filter_height , filter_width > >& filtered_error_windows_stream )
{
	outputs: for ( unsigned int out_counter = 0 ; out_counter < out_height * out_width * out_channels ; out_counter++ )
	{
		window < float , filter_height , filter_width > out_error_window = out_error_windows_stream.read();
		window < bool , filter_height , filter_width > activation_window = activation_windows_stream.read();

		window < float , filter_height , filter_width > filtered_error_window;

		filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				filtered_error_window.elements[filter_y][filter_x] =
					activation_window.elements[filter_y][filter_x] ? out_error_window.elements[filter_y][filter_x] : 0.f;

		filtered_error_windows_stream.write( filtered_error_window );
	}
}

template < typename out_type , unsigned int in_height , unsigned int in_width , unsigned int in_channels >
void split_streams ( hls::stream< out_type >& in_stream , hls::stream< out_type > out_streams[in_channels] )
{
	in_y: for( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
			in_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
			{
				out_type temp = in_stream.read();
				out_streams[channel].write( temp );
			}
}


template < unsigned int filter , unsigned int in_channels ,
	unsigned int    out_height , unsigned int    out_width , unsigned int out_channels ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv_bp_mc_sum (
	hls::stream < window < float , filter_height , filter_width > >& filtered_error_windows_stream ,
	float weights[filter_height * filter_width * in_channels],
	hls::stream < float >& conv_32_in_error_stream )
{
	outputs: for ( unsigned int out_counter = 0 ; out_counter < out_height * out_width ; out_counter++ )
	{
#pragma HLS PIPELINE II=32
		window < float , filter_height , filter_width > temp_error_window = filtered_error_windows_stream.read();

		in_channel: for ( unsigned int in_c = 0 ; in_c < in_channels ; in_c++ )
		{
			float temp_sum = 0;
			filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
					temp_sum += temp_error_window.elements[filter_y][filter_x] *
						weights[ ( filter_height - 1 - filter_y ) * filter_width * in_channels + ( filter_width - 1 - filter_x ) * in_channels + in_c];

			conv_32_in_error_stream.write( temp_sum );
		}
	}
}


template < unsigned int out_height , unsigned int out_width , unsigned int out_channels , unsigned int in_channels >
void conv_bp_aggregate (
	hls::stream < float > conv_32_in_error_per_filter_streams[conv_32_out_channels] ,
	hls::stream < float >& conv_32_in_error_stream )
{
	inputs: for ( unsigned int out_counter = 0 ; out_counter < out_height * out_width ; out_counter++ )
		in_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
		{
			float temp_sum = 0;

			filter: for ( unsigned int filter = 0 ; filter < out_channels ; filter++ )
				temp_sum += conv_32_in_error_per_filter_streams[filter].read();

			conv_32_in_error_stream.write( temp_sum );
		}
}


void dataflow_region (
	float conv_32_out_error[conv_32_out_height * conv_32_out_width * conv_32_out_channels] ,
	hls::stream < window < bool , conv_32_filter_height , conv_32_filter_width > >& conv_32_activation_windows_stream ,
	float conv_32_weights[conv_32_num_filters][conv_32_filter_height * conv_32_filter_width * conv_32_in_channels] ,
	float conv_32_in_error[conv_32_in_height * conv_32_in_width * conv_32_in_channels] )
{
#pragma HLS STABLE variable=conv_32_weights
#pragma HLS DATAFLOW
	hls::stream < float , 1000 > conv_32_out_error_stream;
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 1000 > conv_32_out_error_windows_stream;
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 1000 > conv_32_out_error_paddded_windows_stream;
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 1000 > conv_32_filtered_error_windows_stream;
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 1000 > conv_32_out_error_splitted_streams[conv_32_out_channels];
	hls::stream < float , 1000 > conv_32_in_error_per_filter_streams[conv_32_out_channels];

	hls::stream < float , 1000 > conv_32_in_error_stream;

	array_to_stream < float , conv_32_out_height * conv_32_out_width * conv_32_out_channels >
		( conv_32_out_error , conv_32_out_error_stream );

	// put error in windows
	conv_mc_create_window_stream < float , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( conv_32_out_error_stream , conv_32_out_error_windows_stream );

	// pad windows
	conv_pad_windows < float , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_windows_stream , conv_32_out_error_paddded_windows_stream );

	// filter unactivated error
	activate_out_error < conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( conv_32_out_error_paddded_windows_stream , conv_32_activation_windows_stream , conv_32_filtered_error_windows_stream );

	split_streams < window < float , conv_32_filter_height , conv_32_filter_width > , conv_32_out_height , conv_32_out_width , conv_32_out_channels >
		( conv_32_filtered_error_windows_stream , conv_32_out_error_splitted_streams );

	// calculate error of each input per filter
	conv_bp_mc_sum < 0 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[0] , conv_32_weights[0] , conv_32_in_error_per_filter_streams[0] );
	conv_bp_mc_sum < 1 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[1] , conv_32_weights[1] , conv_32_in_error_per_filter_streams[1] );
	conv_bp_mc_sum < 2 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[2] , conv_32_weights[2] , conv_32_in_error_per_filter_streams[2] );
	conv_bp_mc_sum < 3 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[3] , conv_32_weights[3] , conv_32_in_error_per_filter_streams[3] );
	conv_bp_mc_sum < 4 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[4] , conv_32_weights[4] , conv_32_in_error_per_filter_streams[4] );
	conv_bp_mc_sum < 5 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[5] , conv_32_weights[5] , conv_32_in_error_per_filter_streams[5] );
	conv_bp_mc_sum < 6 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[6] , conv_32_weights[6] , conv_32_in_error_per_filter_streams[6] );
	conv_bp_mc_sum < 7 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[7] , conv_32_weights[7] , conv_32_in_error_per_filter_streams[7] );
	conv_bp_mc_sum < 8 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[8] , conv_32_weights[8] , conv_32_in_error_per_filter_streams[8] );
	conv_bp_mc_sum < 9 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[9] , conv_32_weights[9] , conv_32_in_error_per_filter_streams[9] );
	conv_bp_mc_sum < 10 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[10] , conv_32_weights[10] , conv_32_in_error_per_filter_streams[10] );
	conv_bp_mc_sum < 11 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[11] , conv_32_weights[11] , conv_32_in_error_per_filter_streams[11] );
	conv_bp_mc_sum < 12 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[12] , conv_32_weights[12] , conv_32_in_error_per_filter_streams[12] );
	conv_bp_mc_sum < 13 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[13] , conv_32_weights[13] , conv_32_in_error_per_filter_streams[13] );
	conv_bp_mc_sum < 14 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[14] , conv_32_weights[14] , conv_32_in_error_per_filter_streams[14] );
	conv_bp_mc_sum < 15 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[15] , conv_32_weights[15] , conv_32_in_error_per_filter_streams[15] );
	conv_bp_mc_sum < 16 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[16] , conv_32_weights[16] , conv_32_in_error_per_filter_streams[16] );
	conv_bp_mc_sum < 17 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[17] , conv_32_weights[17] , conv_32_in_error_per_filter_streams[17] );
	conv_bp_mc_sum < 18 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[18] , conv_32_weights[18] , conv_32_in_error_per_filter_streams[18] );
	conv_bp_mc_sum < 19 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[19] , conv_32_weights[19] , conv_32_in_error_per_filter_streams[19] );
	conv_bp_mc_sum < 20 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[20] , conv_32_weights[20] , conv_32_in_error_per_filter_streams[20] );
	conv_bp_mc_sum < 21 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[21] , conv_32_weights[21] , conv_32_in_error_per_filter_streams[21] );
	conv_bp_mc_sum < 22 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[22] , conv_32_weights[22] , conv_32_in_error_per_filter_streams[22] );
	conv_bp_mc_sum < 23 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[23] , conv_32_weights[23] , conv_32_in_error_per_filter_streams[23] );
	conv_bp_mc_sum < 24 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[24] , conv_32_weights[24] , conv_32_in_error_per_filter_streams[24] );
	conv_bp_mc_sum < 25 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[25] , conv_32_weights[25] , conv_32_in_error_per_filter_streams[25] );
	conv_bp_mc_sum < 26 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[26] , conv_32_weights[26] , conv_32_in_error_per_filter_streams[26] );
	conv_bp_mc_sum < 27 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[27] , conv_32_weights[27] , conv_32_in_error_per_filter_streams[27] );
	conv_bp_mc_sum < 28 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[28] , conv_32_weights[28] , conv_32_in_error_per_filter_streams[28] );
	conv_bp_mc_sum < 29 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[29] , conv_32_weights[29] , conv_32_in_error_per_filter_streams[29] );
	conv_bp_mc_sum < 30 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[30] , conv_32_weights[30] , conv_32_in_error_per_filter_streams[30] );
	conv_bp_mc_sum < 31 , conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_out_error_splitted_streams[31] , conv_32_weights[31] , conv_32_in_error_per_filter_streams[31] );

	conv_bp_aggregate < conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_in_channels >
		( conv_32_in_error_per_filter_streams , conv_32_in_error_stream );

	// write output in gmem
	stream_to_array < float , conv_32_in_height * conv_32_in_width * conv_32_in_channels >
		( conv_32_in_error_stream , conv_32_in_error );
}


void accel (
	float conv_32_out_error[conv_32_out_height * conv_32_out_width * conv_32_out_channels] ,
	bool conv_32_activations[conv_32_out_height * conv_32_out_width * conv_32_out_channels] ,
	float gmem_conv_32_weights[conv_32_num_filters][conv_32_filter_height][conv_32_filter_width][conv_32_in_channels] ,
	float conv_32_in_error[conv_32_in_height * conv_32_in_width * conv_32_in_channels] )
{
	// save weights locally
	float conv_32_weights[conv_32_num_filters][conv_32_filter_height * conv_32_filter_width * conv_32_in_channels];
//#pragma HLS STREAM variable=conv_32_weights type=shared depth=3
#pragma HLS ARRAY_PARTITION variable=conv_32_weights type=complete dim=1
	for ( unsigned int f = 0 ; f < conv_32_num_filters ; f++ )
		for ( unsigned int h = 0 ; h < conv_32_filter_height ; h++ )
			for ( unsigned int w = 0 ; w < conv_32_filter_width ; w++ )
				for ( unsigned int c = 0 ; c < conv_32_in_channels ; c++ )
					conv_32_weights[f][h * conv_32_filter_width * conv_32_in_channels + w * conv_32_in_channels + c ] =
							gmem_conv_32_weights[f][h][w][c];

	// create stream of windows for the activations
	hls::stream < bool , 1000 > conv_32_activations_stream;
	hls::stream < window < bool , conv_32_filter_height , conv_32_filter_width > , conv_32_bp_num_windows > conv_32_activation_windows_stream;

	array_to_stream < bool , conv_32_out_height * conv_32_out_width * conv_32_out_channels >
		( conv_32_activations , conv_32_activations_stream );

	conv_mc_create_window_stream < bool ,
		conv_32_out_height , conv_32_out_width , conv_32_out_channels ,
		conv_32_filter_height , conv_32_filter_width >
		( conv_32_activations_stream , conv_32_activation_windows_stream );

	// call dataflow region
	dataflow_region( conv_32_out_error , conv_32_activation_windows_stream , conv_32_weights , conv_32_in_error );
}
