#pragma once

#include <hls_stream.h>

#define conv2d_32_filter_height 3
#define conv2d_32_filter_width  3
#define conv2d_32_num_filters  32

#define conv2d_32_in_height   14
#define conv2d_32_in_width	  14
#define conv2d_32_in_channels 16

#define conv2d_32_out_height   14
#define conv2d_32_out_width    14
#define conv2d_32_out_channels 32

typedef unsigned int U32;


template < typename in_type , unsigned int filter_height , unsigned int filter_width >
struct window {
	in_type elements[filter_height][filter_width];

	void operator=(const window& input)
	{
		for( int y = 0 ; y < filter_height ; y++ )
			for( int x = 0 ; x < filter_width ; x++ )
				this->elements[y][x] = input.elements[y][x];
	}
};


// Reads a stream and puts its data on global memory
template < typename out_type_1 , typename out_type_2 , unsigned int num_elements >
void write_mem ( hls::stream< out_type_1 >& in_stream_1 , out_type_1 output_1[num_elements] , hls::stream< out_type_2 >& in_stream_2 )
{
	write_out_mem: for ( unsigned int i = 0 ; i < num_elements ; i++ )
	{
		out_type_1 temp = in_stream_1.read();
		output_1[i] = temp;
		out_type_2 blackhole = in_stream_2.read();
	}
}


extern "C"
{
void accel (
	float* input ,
	float conv2d_32_weights[conv2d_32_filter_height][conv2d_32_filter_width][conv2d_32_in_channels][conv2d_32_num_filters] ,
	float* conv2d_32_biases ,
	float* conv2d_32_feature_map );
}
