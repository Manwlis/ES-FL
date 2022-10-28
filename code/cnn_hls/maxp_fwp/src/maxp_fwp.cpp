#include "maxp_fwp.hpp"

// Reads global memory and puts it on a stream
template < typename in_type , unsigned int num_elements >
void read_mem( const in_type input[num_elements] , hls::stream< in_type >& out_stream )
{
	write_in_stream: for ( unsigned int i = 0 ; i < num_elements ; i++ )
	{
		in_type temp = input[i];
		out_stream.write( temp );
	}
}


template <
	unsigned int in_height     , unsigned int in_width    , unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width >
void create_window_stream_maxp2d (
	hls::stream < float >& input ,
	hls::stream < window < float , filter_height , filter_width > >& window_stream )
{
	unsigned int col_ptr = 0;
	unsigned int row_ptr = 0;

	pixel: for( unsigned int pixel = 0 ; pixel < in_width * in_height ; pixel++ )
	{
		// get new pixel, all channels, and insert it in the line buffer
		channel: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
		{
			float line_buffer[filter_height][in_width][in_channels];

			window < float , filter_height , filter_width > temp_window;

			line_buffer[col_ptr][row_ptr][channel] = input.read();

			get_window: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ ) // filter loops
				for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				{
					int pos_y = static_cast<int>( col_ptr - 1 + filter_y );
					int pos_x = static_cast<int>( row_ptr - 1 + filter_x );

					if ( pos_y >= 0 && pos_x >= 0 ) // legal pos
						temp_window.elements[filter_y][filter_x] = line_buffer[pos_y][pos_x][channel];
				}
			// window filled
			if( col_ptr == filter_height - 1 && row_ptr % filter_width == 1 )
				window_stream.write( temp_window );

			if( channel == in_channels - 1 )
			{
				// keep track of where we insert in the line buffers
				row_ptr++;
				if (row_ptr == in_width )
				{
					row_ptr = 0;
					col_ptr++;
					if( col_ptr == filter_height )
						col_ptr = 0;
				}
			}
		}
	}
}


template < unsigned int num_windows , unsigned int filter_height , unsigned int filter_width >
void maxp2d (
	hls::stream < window < float , filter_height , filter_width > >& window_stream ,
	hls::stream < float >& output_stream ,
	hls::stream < window < bool , filter_height , filter_width > >& activations_stream )
{
	for( unsigned int w = 0 ; w < num_windows ; w++ )
	{
#pragma HLS PIPELINE II=1
		window < float , filter_height , filter_width > temp_window = window_stream.read();

		float max = -std::numeric_limits<float>::infinity();

		// filter dimension loops. filter_x/y == window_x/y
		for( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				if ( temp_window.elements[filter_y][filter_x] > max ) // check for max
					max = temp_window.elements[filter_y][filter_x];

		window < bool , filter_height , filter_width > activation;
		for( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				if ( temp_window.elements[filter_y][filter_x] == max )
					activation.elements[filter_y][filter_x] = true;
				else
					activation.elements[filter_y][filter_x] = false;

		output_stream.write( max );
		activations_stream.write( activation );
	}
}


void accel (
	float input[maxp2d_16_in_height * maxp2d_16_in_width * maxp2d_16_in_channels] ,
	float output[maxp2d_16_out_height * maxp2d_16_out_width * maxp2d_16_out_channels] )
{
#pragma HLS DATAFLOW

	// gmem input streams
	hls::stream< float , 2 > gmem_input_stream;

	// internal data streams
	hls::stream < window < float , maxp2d_16_filter_height , maxp2d_16_filter_width > , 2 > window_stream;

	// output streams
	hls::stream < float , 2 > feature_map_stream;
	hls::stream < window < bool , maxp2d_16_filter_height , maxp2d_16_filter_width > , maxp2d_16_num_windows > activations_window_stream;

	// get inputs and put them in their streams
	read_mem < float , maxp2d_16_in_height * maxp2d_16_in_width * maxp2d_16_in_channels > ( input , gmem_input_stream );

	// maxpool
	create_window_stream_maxp2d <
		maxp2d_16_in_height ,     maxp2d_16_in_width ,     maxp2d_16_in_channels ,
		maxp2d_16_filter_height , maxp2d_16_filter_width >
		( gmem_input_stream , window_stream );

	maxp2d < maxp2d_16_num_windows , maxp2d_16_filter_height , maxp2d_16_filter_width >
		( window_stream , feature_map_stream , activations_window_stream );

	// write in mem
	write_mem < float , maxp2d_16_out_height * maxp2d_16_out_width * maxp2d_16_out_channels ,
		window < bool , maxp2d_16_filter_height , maxp2d_16_filter_width > >
		( feature_map_stream , output , activations_window_stream );
}
