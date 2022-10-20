#include "conv_2d_fwp.hpp"



// extension of https://github.com/Xilinx/Vitis-Tutorials/blob/2022.1/Hardware_Acceleration/Design_Tutorials/01-convolution-tutorial/lab2_conv_filter_kernel_design.md
// to work with multiple input channels. Creates a window per cycle.
template < typename in_type ,
	unsigned int in_height     , unsigned int in_width    ,
	unsigned int filter_height , unsigned int filter_width >
void create_window_stream_conv2d (
	axis_float_stream& input_stream ,
	hls::stream< window < in_type , filter_height , filter_width > >& window_stream )
{
	// line and window buffer
	in_type line_buffer[filter_height-1][in_width];
#pragma HLS ARRAY_PARTITION variable=line_buffer dim=2 complete // this can be removed if II=2

	window < in_type , filter_height , filter_width > temp_windows; // one temp window per channel

	// required iterations to fill buffers
	unsigned int ramp_up = in_width * ( ( filter_width - 1 ) / 2 ) + ( ( filter_height - 1 ) / 2 );
	unsigned int num_pixels = in_width * in_height;

	// points where in the line buffers the window is going to shift
	unsigned int col_ptr = 0;
	pixel: for ( unsigned int pixel_counter = 0 ; pixel_counter < num_pixels + ramp_up ; pixel_counter++ )
	{
		//get new pixel, all its channels
		in_type new_pixel;

		if( pixel_counter < num_pixels )
		{
			axis_float temp_input = input_stream.read();
			new_pixel = temp_input.data;
		}
		else
			new_pixel = 0.f;

		// shift window and add new pixels
		shift_windows: for( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
		{
			// all columns except last
			shift_firsts_cols: for ( unsigned int filter_x = 0 ; filter_x < filter_width - 1 ; filter_x++ )
					temp_windows.elements[filter_y][filter_x] = temp_windows.elements[filter_y][filter_x+1];

			// last column
			if ( filter_y < filter_height - 1 )
				temp_windows.elements[filter_y][filter_width-1] = line_buffer[filter_y][col_ptr];
			else
				temp_windows.elements[filter_y][filter_width-1] = new_pixel;
		}

		// shift line buffer and add new pixel
		shift_line_buf: for( unsigned int line = 0 ; line < int(filter_height) - 2 ; line++ )
			line_buffer[line][col_ptr] = line_buffer[line+1][col_ptr];

		line_buffer[filter_height-2][col_ptr] = new_pixel;

		// do not write until the window fills up with useful data
		if ( pixel_counter >= ramp_up )
			window_stream.write( temp_windows );

		// move window on the line buffers
		if( col_ptr == in_width - 1 )
			col_ptr = 0;
		else
			col_ptr++;
	}
}

// does not influence the order of the windows, only their contents
template < typename in_type ,
	unsigned int in_height     , unsigned int in_width     ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void pad_windows (
		hls::stream < window < in_type , filter_height , filter_width > >& input_window_stream ,
		hls::stream < window < in_type , filter_height , filter_width > >& output_window_stream )
{
	in_y: for( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
		{
			// get window
			window < in_type , filter_height , filter_width > temp_window = input_window_stream.read();

			// filter dimensions loops, filter_y/x == window_y/x
			filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				{
					// get neighboring pixel's coordinates
					int y_offseted = static_cast<int>( in_y + filter_y - filter_height / 2 );
					int x_offseted = static_cast<int>( in_x + filter_x - filter_width / 2 );
					bool illegal_pixel_pos = ( y_offseted < 0 ) || ( y_offseted >= int(in_height) ) || ( x_offseted < 0 ) || ( x_offseted >= int(in_width) );

					if ( illegal_pixel_pos )
						temp_window.elements[filter_y][filter_x] = 0.f;

					// maybe stream window elements
				}
			// put padded window in stream
			output_window_stream.write( temp_window );
		}
}


template < typename in_type ,
	unsigned int in_height     , unsigned int in_width     ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv2d_sum (
	hls::stream < window < float , filter_height , filter_width > >& input_window_stream , // inputs
	float gmem_weights[filter_height][filter_width][num_filters] ,
	float gmem_biases[num_filters] ,
	hls::stream < float >& kernel_sums )
{
	// load weights in local storage
	float weights[filter_height][filter_width][num_filters];
	store_weights_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
		store_weights_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				store_weights_f: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
					weights[filter_y][filter_x][filter] = gmem_weights[filter_y][filter_x][filter];

	// load biases in local storage
	float biases[num_filters];
	store_biases: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		biases[filter] = gmem_biases[filter];

	// input / output dimensions loops, in_x/y == out_x/y
	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
	{
#pragma HLS PIPELINE II=32

		float filter_sum_stream;

		window < in_type , filter_height , filter_width > temp_window;

		temp_window = input_window_stream.read();

		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ ) // TODO: maybe concate last two loops?
		{
			float temp_sum = biases[filter];

			// this is used to reduce axi read request. It can be replaced by reading weights in filt_x loop.
			// Seems to have no effect, the tool optimizes them anyway.
			// !!!!!! change how the weights are stored &read in the testbench to use it
//			float temp_weights[filter_height * filter_width];
//			memcpy( &temp_weights[0] , &weights[filter * filter_height * filter_width] , filter_height * filter_width * sizeof( float ) );

			filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
					temp_sum += temp_window.elements[filter_y][filter_x] * weights[filter_y][filter_x][filter];
//								* weights[filter_y * filter_width * num_filters + filter_x * num_filters + filter]; 	// normal shape
//								* weights[filter * filter_height * filter_width + filter_y * filter_width + filter_x];	// changed shape
//								* temp_weights[filter_y * filter_width + filter_x];										// changed shape, memcpy

			kernel_sums.write( temp_sum );
		}
	}
}


template < unsigned int in_height , unsigned int in_width ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv2d_activate (
	hls::stream < float >& kernel_sums ,
	hls::stream < float >& feature_map_stream , // outputs
	hls::stream < bool >& activations_stream )
{
	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		{
			float temp_sum = kernel_sums.read();
			// activate with relu & write in output streams
			float activation = temp_sum > 0.f;
			float temp_out = activation ? temp_sum : 0.f;
			feature_map_stream.write( temp_out );
			activations_stream.write( activation );
		}
}

// Top function
void accel (
	axis_float_stream& input_stream ,
	float conv2d_32_weights[conv2d_32_filter_height][conv2d_32_filter_width][conv2d_32_num_filters] ,
	float conv2d_32_biases[conv2d_32_num_filters] ,
	float conv2d_32_feature_map[conv2d_32_out_height * conv2d_32_out_width * conv2d_32_num_filters] ,
	bool  conv2d_32_activations[conv2d_32_out_height * conv2d_32_out_width * conv2d_32_num_filters] )
{
#pragma HLS DATAFLOW

	// data streams
	hls::stream < window < float , conv2d_32_filter_height , conv2d_32_filter_width > , 3 > conv2d_32_window_stream;
	hls::stream < window < float , conv2d_32_filter_height , conv2d_32_filter_width > , 3 > conv2d_32_padded_window_stream;
	hls::stream < float , 3 > kernel_sums;

	// output streams
	hls::stream < float , 3 > feature_map_stream;
	hls::stream < bool , conv2d_32_out_height * conv2d_32_out_width * conv2d_32_num_filters > activations_stream;

	// create windows
	create_window_stream_conv2d < float , conv2d_32_in_height , conv2d_32_in_width ,
		conv2d_32_filter_height , conv2d_32_filter_width >
		( input_stream , conv2d_32_window_stream );

	pad_windows < float , conv2d_32_in_height , conv2d_32_in_width ,
		conv2d_32_filter_height , conv2d_32_filter_width , conv2d_32_num_filters >
		( conv2d_32_window_stream , conv2d_32_padded_window_stream );

	// full convolution
	conv2d_sum < float , conv2d_32_in_height , conv2d_32_in_width ,
		conv2d_32_filter_height , conv2d_32_filter_width , conv2d_32_num_filters >
		( conv2d_32_padded_window_stream , conv2d_32_weights , conv2d_32_biases , kernel_sums );

	conv2d_activate < conv2d_32_in_height , conv2d_32_in_width ,
		conv2d_32_filter_height , conv2d_32_filter_width , conv2d_32_num_filters >
		( kernel_sums , feature_map_stream , activations_stream );

	// write in memory
	write_mem_wrapper <
		float , conv2d_32_out_height * conv2d_32_out_width * conv2d_32_num_filters ,
		bool , conv2d_32_out_height * conv2d_32_out_width * conv2d_32_num_filters >
		( feature_map_stream , conv2d_32_feature_map , activations_stream , conv2d_32_activations );
}
