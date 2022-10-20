#include "conv_2d_fwp.hpp"
#include <hls_stream.h>

// Reads global memory and puts it on a stream
template < typename in_type , unsigned int num_elements >
void read_mem( const in_type input[num_elements] , hls::stream< in_type >& out_stream )
{
#pragma HLS INLINE
	write_in_stream: for ( unsigned int i = 0 ; i < num_elements ; i++ )
	{
		in_type temp = input[i];
		out_stream.write( temp );
	}
}

// Wrapper of all read_mem calls. Dataflow requires all gmem reads in one function
template <
	typename in_type_1 , unsigned int num_elements_in1 ,
	typename in_type_2 , unsigned int num_elements_in2 ,
	typename in_type_3 , unsigned int num_elements_in3 >
void read_mem_wrapper (
		const in_type_1 input_1[num_elements_in1] , hls::stream< in_type_1 >& out_stream_1 ,
		const in_type_2 input_2[num_elements_in2] , hls::stream< in_type_2 >& out_stream_2 ,
		const in_type_3 input_3[num_elements_in3] , hls::stream< in_type_3 >& out_stream_3 )
{
	read_mem < in_type_1 , num_elements_in1 > ( input_1 , out_stream_1 );
	read_mem < in_type_2 , num_elements_in2 > ( input_2 , out_stream_2 );
	read_mem < in_type_3 , num_elements_in3 > ( input_3 , out_stream_3 );
}


// Reads a stream and puts its data on global memory
template < typename out_type , unsigned int num_elements >
void write_mem ( hls::stream< out_type >& in_stream , out_type output[num_elements] )
{
#pragma HLS INLINE
	// TODO: test output size padding to enable auto-widening
	write_out_mem: for ( unsigned int i = 0 ; i < num_elements ; i++ )
	{
		out_type temp = in_stream.read();
		output[i] = temp;
	}
}
// Wrapper of all write_mem calls. Dataflow requires all gmem writes in one function
template <
	typename out_type_1 , unsigned int num_elements_out_1 ,
	typename out_type_2 , unsigned int num_elements_out_2 >
void write_mem_wrapper (
		hls::stream< out_type_1 >& in_stream_1 , out_type_1 output_1[num_elements_out_1] ,
		hls::stream< out_type_2 >& in_stream_2 , out_type_2 output_2[num_elements_out_2] )
{
#pragma HLS inline recursive
	write_mem < out_type_1 , num_elements_out_1 > ( in_stream_1 , output_1 );
	write_mem < out_type_2 , num_elements_out_2 > ( in_stream_2 , output_2 );
}

// extension of https://github.com/Xilinx/Vitis-Tutorials/blob/2022.1/Hardware_Acceleration/Design_Tutorials/01-convolution-tutorial/lab2_conv_filter_kernel_design.md
// to work with multiple input channels. Creates a window per cycle.
template < typename in_type ,
	unsigned int in_height     , unsigned int in_width    , unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width >
void create_window_stream_conv2d (
	hls::stream< in_type >& input_stream ,
	hls::stream< window < in_type , filter_height , filter_width > >& window_stream )
{
	// line and window buffer
	in_type line_buffer[filter_height-1][in_width][in_channels];
#pragma HLS ARRAY_PARTITION variable=line_buffer dim=2 complete // this can be removed if II=2

	window < in_type , filter_height , filter_width > temp_windows[in_channels]; // one temp window per channel

	// required iterations to fill buffers
	unsigned int ramp_up = in_width * ( ( filter_width - 1 ) / 2 ) + ( ( filter_height - 1 ) / 2 );
	const unsigned int num_pixels = in_width * in_height; // TODO: check const

	// points where in the line buffers the window is going to shift
	unsigned int col_ptr = 0;
	pixel: for ( unsigned int pixel_counter = 0 ; pixel_counter < num_pixels + ramp_up ; pixel_counter++ )
	{
		channel: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
		{
			//get new pixel, all its channels
			in_type new_pixel;

			if( pixel_counter < num_pixels )
				new_pixel = input_stream.read();
			else
				new_pixel = 0.f;

			// shift window and add new pixels
			shift_windows: for( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			{
				// all columns except last
				shift_firsts_cols: for ( unsigned int filter_x = 0 ; filter_x < filter_width - 1 ; filter_x++ )
						temp_windows[channel].elements[filter_y][filter_x] = temp_windows[channel].elements[filter_y][filter_x+1];

				// last column
				if ( filter_y < filter_height - 1 )
					temp_windows[channel].elements[filter_y][filter_width-1] = line_buffer[filter_y][col_ptr][channel];
				else
					temp_windows[channel].elements[filter_y][filter_width-1] = new_pixel;
			}

			// shift line buffer and add new pixel
			shift_line_buf: for( unsigned int line = 0 ; line < int(filter_height) - 2 ; line++ )
				line_buffer[line][col_ptr][channel] = line_buffer[line+1][col_ptr][channel];

			line_buffer[filter_height-2][col_ptr][channel] = new_pixel;

			// do not write until the window fills up with useful data
			if ( pixel_counter >= ramp_up )
				window_stream.write( temp_windows[channel] );
		}
		// move window on the line buffers
		if( col_ptr == in_width - 1 )
			col_ptr = 0;
		else
			col_ptr++;
	}
}

// does not influence the order of the windows, only their contents
template < typename in_type ,
	unsigned int in_height     , unsigned int in_width     , unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void pad_windows (
		hls::stream < window < in_type , filter_height , filter_width > >& input_window_stream ,
		hls::stream < window < in_type , filter_height , filter_width > >& output_window_stream )
{
	in_y: for( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
			in_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
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


template <
	typename in_type ,
	unsigned int in_height     , unsigned int in_width     , unsigned int in_channels ,
	unsigned int out_height    , unsigned int out_width    , unsigned int out_channels ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv2d (
	hls::stream < window < float , filter_height , filter_width > >& input_window_stream , // inputs
	hls::stream < float >& weights_stream ,  // variables
	hls::stream < float >& biases_stream ,
	hls::stream < float >& feature_map_stream , // outputs
	hls::stream < bool >& activations_stream )
{
	// local storage for weights
	float weights[filter_height][filter_width][in_channels][num_filters];

	// load weights in local storage
	store_weights_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
		store_weights_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
			store_weights_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
				store_weights_f: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
					weights[filter_y][filter_x][channel][filter] = weights_stream.read();

	float biases[num_filters];

	store_biases: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		biases[filter] = biases_stream.read();

	// input / output dimensions loops, in_x/y == out_x/y
	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
	{
#pragma HLS DATAFLOW

		hls::stream< float , 2 > filter_sum_stream;

		window < in_type , filter_height , filter_width > temp_window[in_channels];

		read_windows: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
		{
#pragma HLS PIPELINE
			temp_window[channel] = input_window_stream.read();
		}

		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ ) // TODO: maybe concate last two loops?
		{
#pragma HLS PIPELINE
			float temp_sum = biases[filter];
			filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
					in_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
						temp_sum += temp_window[channel].elements[filter_y][filter_x] * weights[filter_y][filter_x][channel][filter];
			filter_sum_stream.write( temp_sum );
		}

		activation: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		{
#pragma HLS PIPELINE
			float temp_sum = filter_sum_stream.read();
			// activate with relu & write in output streams
			bool activation = temp_sum > 0.f;
			float temp_out = activation ? temp_sum : 0.f;
			feature_map_stream.write( temp_out );
			activations_stream.write( activation );
		}
	}

//	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
//	{
//#pragma HLS PIPELINE II=128
//
//		window < in_type , filter_height , filter_width > temp_window[in_channels];
//
//		read_windows: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
//		{
//#pragma HLS UNROLL skip_exit_check
//			temp_window[channel] = input_window_stream.read();
//		}
//
//		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ ) // TODO: maybe concate last two loops?
//		{
//			float temp_sum = biases[filter];
//			filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
//				filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
//					in_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
//						temp_sum += temp_window[channel].elements[filter_y][filter_x] * weights[filter_y][filter_x][channel][filter];
//
//			// activate with relu & write in output streams
//			float activation = temp_sum > 0.f;
//			float temp_out = activation ? temp_sum : 0.f;
//			feature_map_stream.write( temp_out );
//			activations_stream.write( activation );
//		}
//	}
}


// Top function
void accel (
	float input[conv2d_64_in_height * conv2d_64_in_width * conv2d_64_in_channels],
	float conv2d_64_weights[conv2d_64_filter_height * conv2d_64_filter_width * conv2d_64_in_channels * conv2d_64_num_filters] ,
	float conv2d_64_biases[conv2d_64_num_filters] ,
	float conv2d_64_feature_map[conv2d_64_out_height * conv2d_64_out_width * conv2d_64_num_filters] ,
	bool  conv2d_64_activations[conv2d_64_out_height * conv2d_64_out_width * conv2d_64_num_filters] )
{
#pragma HLS DATAFLOW

	// gmem input streams
	hls::stream< float , 3 > gmem_input_stream;
	hls::stream< float , 3 > gmem_weights_stream;
	hls::stream< float , 3 > biases_stream;

	// data streams
	hls::stream< window < float , conv2d_64_filter_height , conv2d_64_filter_width > , 10 > conv2d_64_window_stream;
	hls::stream< window < float , conv2d_64_filter_height , conv2d_64_filter_width > , 10 > conv2d_64_padded_window_stream;

	// output streams
	hls::stream< float , 4 > feature_map_stream;
	hls::stream< bool , conv2d_64_out_height * conv2d_64_out_width * conv2d_64_num_filters > activations_stream;

	// get inputs and put them in their streams
	read_mem_wrapper <
		float , conv2d_64_filter_height * conv2d_64_filter_width * conv2d_64_in_channels * conv2d_64_num_filters ,
		float , conv2d_64_num_filters ,
		float , conv2d_64_in_height * conv2d_64_in_width * conv2d_64_in_channels >
		( conv2d_64_weights , gmem_weights_stream , conv2d_64_biases , biases_stream , input , gmem_input_stream );

	// create windows
	create_window_stream_conv2d < float ,
		conv2d_64_in_height , conv2d_64_in_width , conv2d_64_in_channels ,
		conv2d_64_filter_height , conv2d_64_filter_width >
		( gmem_input_stream , conv2d_64_window_stream );

	pad_windows < float ,
		conv2d_64_in_height , conv2d_64_in_width , conv2d_64_in_channels ,
		conv2d_64_filter_height , conv2d_64_filter_width , conv2d_64_num_filters >
		( conv2d_64_window_stream , conv2d_64_padded_window_stream );

	// full convolution
	conv2d < float ,
		conv2d_64_in_height ,     conv2d_64_in_width ,     conv2d_64_in_channels ,
		conv2d_64_out_height ,    conv2d_64_out_width ,    conv2d_64_out_channels ,
		conv2d_64_filter_height , conv2d_64_filter_width , conv2d_64_num_filters >
		( conv2d_64_padded_window_stream , gmem_weights_stream , biases_stream , feature_map_stream , activations_stream );

	// write in memory
	write_mem_wrapper <
		float , conv2d_64_out_height * conv2d_64_out_width * conv2d_64_num_filters ,
		bool , conv2d_64_out_height * conv2d_64_out_width * conv2d_64_num_filters >
		( feature_map_stream , conv2d_64_feature_map , activations_stream , conv2d_64_activations );
}
