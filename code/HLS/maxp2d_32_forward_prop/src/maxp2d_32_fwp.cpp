#include "maxp2d_32_fwp.hpp"
#include <hls_stream.h>

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


template <
	unsigned int in_height     , unsigned int in_width    , unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width >
void create_window_stream_maxp2d (
	hls::stream < float >& input ,
	hls::stream < window < float , filter_height , filter_width > >& window_stream )
{
	float line_buffer[filter_height][in_width][in_channels];

	const unsigned int num_pixels = in_width * in_height;
	unsigned int col_ptr = 0;
	unsigned int row_ptr = 0;

	for( unsigned int pixel = 0 ; pixel < num_pixels ; pixel++ )
	{
		// get new pixel, all channels, and insert it in the line buffer
		for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
		{
			window < float , filter_height , filter_width > temp_window;

			line_buffer[col_ptr][row_ptr][channel] = input.read();

			for ( uint filter_y = 0 ; filter_y < filter_height ; filter_y++ ) // filter loops
				for ( uint filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				{
					int pos_y = static_cast<int>( col_ptr - 1 + filter_y );
					int pos_x = static_cast<int>( row_ptr - 1 + filter_x );

					if ( pos_y >= 0 && pos_x >= 0 ) // legal pos
						temp_window.elements[filter_y][filter_x] = line_buffer[pos_y][pos_x][channel];
				}
			// window filled
			if( col_ptr == filter_height - 1 && row_ptr % filter_width == 1 )
				window_stream.write( temp_window );
		}
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

template <
	unsigned int num_windows , unsigned int filter_height , unsigned int filter_width >
void maxp2d (
		hls::stream < window < float , filter_height , filter_width > >& window_stream ,
		hls::stream < float >& output_stream ,
		hls::stream < window < bool , filter_height , filter_width > >& activations_stream )
{
	window < bool , filter_height , filter_width > activation;

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
		float input[maxp2d_32_in_height * maxp2d_32_in_width * maxp2d_32_in_channels] ,
		float output[maxp2d_32_out_height * maxp2d_32_out_width * maxp2d_32_out_channels] ,
		window < bool , maxp2d_32_filter_height , maxp2d_32_filter_width > activations[maxp2d_32_num_windows] )
{
#pragma HLS DATAFLOW

	// gmem input streams
	hls::stream< float , 2 > gmem_input_stream;

	// internal data streams
	hls::stream < window < float , maxp2d_32_filter_height , maxp2d_32_filter_width > , 3 > window_stream;

	// output streams
	hls::stream < float , 2 > feature_map_stream;
	hls::stream < window < bool , maxp2d_32_filter_height , maxp2d_32_filter_width > , maxp2d_32_num_windows > activations_window_stream;

	// get inputs and put them in their streams
	read_mem < float , maxp2d_32_in_height * maxp2d_32_in_width * maxp2d_32_in_channels > ( input , gmem_input_stream );

	// maxpool
	create_window_stream_maxp2d <
		maxp2d_32_in_height ,     maxp2d_32_in_width ,     maxp2d_32_in_channels ,
		maxp2d_32_filter_height , maxp2d_32_filter_width >
		( gmem_input_stream , window_stream );

	maxp2d < maxp2d_32_num_windows , maxp2d_32_filter_height , maxp2d_32_filter_width >
		( window_stream , feature_map_stream , activations_window_stream );

	// write in mem
	write_mem_wrapper <
		float , maxp2d_32_out_height * maxp2d_32_out_width * maxp2d_32_out_channels ,
		window < bool , maxp2d_32_filter_height , maxp2d_32_filter_width > , maxp2d_32_num_windows >
		( feature_map_stream , output , activations_window_stream , activations );

}
