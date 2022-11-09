#include "conv_2d_fwp.hpp"


template < typename in_type ,
	unsigned int filter_height , unsigned int filter_width , unsigned int in_channels , unsigned int num_filters >
void read_weights ( const in_type input[filter_height][filter_width][in_channels][num_filters] , hls::stream< in_type > out_stream[in_channels] )
{
#pragma HLS INLINE
	read_weights_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
		read_weights_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
			read_weights_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
				read_weights_f: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
				{
					in_type temp = input[filter_y][filter_x][channel][filter];
					out_stream[channel].write( temp );
				}
}

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
	typename in_type_1 , typename in_type_2 , typename in_type_3 ,
	unsigned int filter_height , unsigned int filter_width , unsigned int in_channels , unsigned int num_filters ,
	unsigned int num_inputs >
void read_mem_wrapper (
		const in_type_1 input_1[filter_height][filter_width][in_channels][num_filters] , hls::stream< in_type_1 > out_stream_1[in_channels] ,
		const in_type_2 input_2[num_filters] , hls::stream< in_type_2 >& out_stream_2 ,
		const in_type_3 input_3[num_inputs] , hls::stream< in_type_3 >& out_stream_3 )
{
	read_weights < in_type_1 , filter_height , filter_width , in_channels , num_filters > ( input_1 , out_stream_1 );
	read_mem < in_type_2 , num_filters > ( input_2 , out_stream_2 );
	read_mem < in_type_3 , num_inputs > ( input_3 , out_stream_3 );
}


// extension of https://github.com/Xilinx/Vitis-Tutorials/blob/2022.1/Hardware_Acceleration/Design_Tutorials/01-convolution-tutorial/lab2_conv_filter_kernel_design.md
// to work with multiple input channels. Creates a window per cycle.
template < typename in_type ,
	unsigned int in_height     , unsigned int in_width    , unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width >
void create_window_stream_conv2d (
	hls::stream< in_type >& input_stream ,
	hls::stream< window < in_type , conv2d_32_filter_height , conv2d_32_filter_width > >& window_stream )
{
	// line and window buffer
	in_type line_buffer[filter_height-1][in_width][in_channels];
#pragma HLS ARRAY_PARTITION variable=line_buffer dim=2 complete // this can be removed if II=2

	window < in_type , filter_height , filter_width > temp_windows[in_channels]; // one temp window per channel

	// required iterations to fill buffers
	const unsigned int ramp_up = in_width * ( ( filter_width - 1 ) / 2 ) + ( ( filter_height - 1 ) / 2 );
	const unsigned int num_pixels = in_width * in_height;

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
		hls::stream < window < in_type , filter_height , filter_width > > output_window_stream[in_channels] )
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
						bool illegal_pixel_pos = ( y_offseted < 0 ) || ( y_offseted >= static_cast<int>(in_height) ) || ( x_offseted < 0 ) || ( x_offseted >= static_cast<int>(in_width) );

						if ( illegal_pixel_pos )
							temp_window.elements[filter_y][filter_x] = 0.f;

						// maybe stream window elements
					}
				// put padded window in stream
				output_window_stream[channel].write( temp_window );
			}
}

template <
	typename in_type ,
	unsigned int in_height     , unsigned int in_width     ,
	unsigned int out_height    , unsigned int out_width    , unsigned int out_channels ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv2d (
	hls::stream < window < float , filter_height , filter_width > >& input_window_stream , // inputs
	hls::stream < float >& weights_stream ,  // variables
	hls::stream < float >& in_channel_map_stream ) // outputs
{
	// local storage for weights
	float weights[filter_height][filter_width][num_filters];

	// load weights in local storage
	store_weights_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
		store_weights_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				store_weights_f: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
					weights[filter_y][filter_x][filter] = weights_stream.read();

	// input / output dimensions loops, in_x/y == out_x/y
	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
	{
#pragma HLS PIPELINE II=32

		window < in_type , filter_height , filter_width > temp_window;

		temp_window = input_window_stream.read();

		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ ) // TODO: maybe concate last two loops?
		{
			float temp_sum = 0;
			filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
						temp_sum += temp_window.elements[filter_y][filter_x] * weights[filter_y][filter_x][filter];

			in_channel_map_stream.write( temp_sum );
		}
	}
}

template < 	unsigned int in_height , unsigned int in_width , unsigned int in_channels , unsigned int num_filters >
void aggregate_channels (
	hls::stream < float >& biases_stream ,
	hls::stream < float > in_channel_map_stream[in_channels] ,
	hls::stream < float >& feature_map_stream , // outputs
	hls::stream < bool >& activations_stream )
{
	float biases[num_filters];
	store_biases: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		biases[filter] = biases_stream.read();

	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		{
			float temp_sum = biases[filter];

			in_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
				temp_sum += in_channel_map_stream[channel].read();

			bool activation = temp_sum > 0.f;
			float temp_out = activation ? temp_sum : 0.f;

			feature_map_stream.write( temp_out );
			activations_stream.write( activation );
		}
}


// Top function
void accel (
	float input[conv2d_32_in_height * conv2d_32_in_width * conv2d_32_in_channels ],
	float conv2d_32_weights[conv2d_32_filter_height][conv2d_32_filter_width][conv2d_32_in_channels][conv2d_32_num_filters] ,
	float conv2d_32_biases[conv2d_32_num_filters] ,
	float conv2d_32_feature_map[conv2d_32_out_height * conv2d_32_out_width * conv2d_32_num_filters] )
{
#pragma HLS DATAFLOW

	// gmem streams
	hls::stream < float , 2 > gmem_input_stream;
	hls::stream < float , 2 > gmem_weights_stream[conv2d_32_in_channels];
	hls::stream < float , 2 > biases_stream;

	// internal data streams
	hls::stream < window < float , conv2d_32_filter_height , conv2d_32_filter_width > , 2 > conv2d_32_window_stream;
	hls::stream < window < float , conv2d_32_filter_height , conv2d_32_filter_width > , 2 > conv2d_32_padded_window_stream[conv2d_32_in_channels];
	hls::stream < float , 2 > in_channel_map_stream[conv2d_32_in_channels];

	// output streams
	hls::stream < float , 2 > feature_map_stream;
	hls::stream < bool , conv2d_32_out_height * conv2d_32_out_width * conv2d_32_num_filters > activations_stream;

	// get inputs and put them in their streams
	read_mem_wrapper < float , float , float ,
		conv2d_32_filter_height , conv2d_32_filter_width , conv2d_32_in_channels , conv2d_32_num_filters ,
		conv2d_32_in_height * conv2d_32_in_width * conv2d_32_in_channels >
		( conv2d_32_weights , gmem_weights_stream , conv2d_32_biases , biases_stream , input , gmem_input_stream );

	// create windows
	create_window_stream_conv2d < float ,
		conv2d_32_in_height , conv2d_32_in_width , conv2d_32_in_channels ,
		conv2d_32_filter_height , conv2d_32_filter_width >
		( gmem_input_stream , conv2d_32_window_stream );

	pad_windows < float ,
		conv2d_32_in_height , conv2d_32_in_width , conv2d_32_in_channels ,
		conv2d_32_filter_height , conv2d_32_filter_width , conv2d_32_num_filters >
		( conv2d_32_window_stream , conv2d_32_padded_window_stream );

	for ( unsigned int in_channel = 0 ; in_channel < conv2d_32_in_channels ; in_channel++ )
	{
#pragma HLS UNROLL skip_exit_check
		// full convolution
		conv2d < float , conv2d_32_in_height , conv2d_32_in_width ,
			conv2d_32_out_height ,    conv2d_32_out_width ,    conv2d_32_out_channels ,
			conv2d_32_filter_height , conv2d_32_filter_width , conv2d_32_num_filters >
			( conv2d_32_padded_window_stream[in_channel] , gmem_weights_stream[in_channel] , in_channel_map_stream[in_channel] );
	}

	aggregate_channels < conv2d_32_in_height , conv2d_32_in_width , conv2d_32_in_channels , conv2d_32_num_filters >
		( biases_stream , in_channel_map_stream , feature_map_stream , activations_stream );

	// write in memory
	write_mem < float , bool , conv2d_32_out_height * conv2d_32_out_width * conv2d_32_num_filters >
		( feature_map_stream , conv2d_32_feature_map , activations_stream );
}
