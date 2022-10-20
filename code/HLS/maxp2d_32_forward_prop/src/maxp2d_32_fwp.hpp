#pragma once

#include <hls_vector.h>
#include <limits>

#define maxp2d_32_filter_height 2
#define maxp2d_32_filter_width  2
#define maxp2d_32_filter_stride 2

#define maxp2d_32_in_height   28
#define maxp2d_32_in_width    28
#define maxp2d_32_in_channels 32

#define maxp2d_32_out_height   14
#define maxp2d_32_out_width    14
#define maxp2d_32_out_channels 32

#define maxp2d_32_num_windows (maxp2d_32_in_height * maxp2d_32_in_width * maxp2d_32_in_channels) / (maxp2d_32_filter_height * maxp2d_32_filter_width )

typedef unsigned int U32;
typedef hls::vector< float , 32 > t_float_32_vector;

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
	float* output ,
	window < bool , maxp2d_32_filter_height , maxp2d_32_filter_width >* activations );
}
