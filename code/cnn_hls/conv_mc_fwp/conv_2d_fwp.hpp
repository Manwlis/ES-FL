#pragma once

#include <hls_stream.h>

#define conv_32_filter_height 3
#define conv_32_filter_width  3
#define conv_32_num_filters  32

#define conv_32_in_height   14
#define conv_32_in_width	  14
#define conv_32_in_channels 16

#define conv_32_out_height   14
#define conv_32_out_width    14
#define conv_32_out_channels 32

typedef unsigned int U32;


template < typename data_type , unsigned int filter_height , unsigned int filter_width >
struct window
{
	data_type elements[filter_height][filter_width];

	void operator=(const window& input)
	{
		for( int y = 0 ; y < filter_height ; y++ )
			for( int x = 0 ; x < filter_width ; x++ )
				this->elements[y][x] = input.elements[y][x];
	}
};

template < typename data_type , unsigned int size >
struct window_1d
{
	data_type elements[size];

	void operator=(const window_1d& input)
	{
		for( int s = 0 ; s < size ; s++ )
			this->elements[s] = input.elements[s];
	}
	void operator+=(const window_1d& input)
	{
		for( int s = 0 ; s < size ; s++ )
			this->elements[s] += input.elements[s];
	}
};


extern "C"
{
void accel (
	float* input ,
	float conv_32_weights[conv_32_filter_height][conv_32_filter_width][conv_32_in_channels][conv_32_num_filters] ,
	float* conv_32_biases ,
	float* conv_32_feature_map );
}
