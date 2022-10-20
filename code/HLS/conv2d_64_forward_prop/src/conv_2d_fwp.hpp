#pragma once

#include <hls_vector.h>

#define conv2d_64_filter_height 3
#define conv2d_64_filter_width  3
#define conv2d_64_num_filters  64

#define conv2d_64_in_height   14
#define conv2d_64_in_width	  14
#define conv2d_64_in_channels 32

#define conv2d_64_out_height   14
#define conv2d_64_out_width    14
#define conv2d_64_out_channels 64

typedef unsigned int U32;

typedef hls::vector< float , 64 > t_float_64_vector;
typedef hls::vector< float , 32 > t_float_32_vector;
typedef hls::vector< bool , 64 > t_bool_64_vector;

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
	float conv2d_64_weights[conv2d_64_filter_height][conv2d_64_filter_width][conv2d_64_in_channels][conv2d_64_num_filters] ,
	float* conv2d_64_biases ,
	float* conv2d_64_feature_map ,
	bool*  conv2d_64_activations );
}
