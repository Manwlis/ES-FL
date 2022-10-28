#pragma once

#include <hls_stream.h>
#include <limits>

#define maxp2d_16_filter_height 2
#define maxp2d_16_filter_width  2
#define maxp2d_16_filter_stride 2

#define maxp2d_16_in_height   28
#define maxp2d_16_in_width    28
#define maxp2d_16_in_channels 16

#define maxp2d_16_out_height   14
#define maxp2d_16_out_width    14
#define maxp2d_16_out_channels 16

#define maxp2d_16_num_windows (maxp2d_16_in_height * maxp2d_16_in_width * maxp2d_16_in_channels) / (maxp2d_16_filter_height * maxp2d_16_filter_width )

typedef unsigned int U16;

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

extern "C"
{
void accel (
	float* input ,
	float* output );
}

template < typename out_type_1 , unsigned int num_elements_1 , typename out_type_2 >
void write_mem ( hls::stream< out_type_1 >& in_stream_1 , out_type_1 output[num_elements_1] , hls::stream< out_type_2 >& in_stream_2 )
{
	write_out_mem: for ( unsigned int i = 0 ; i < num_elements_1 ; i++ )
	{
		out_type_1 temp = in_stream_1.read();
		output[i] = temp;
		out_type_2 blackhole = in_stream_2.read();
	}
}
