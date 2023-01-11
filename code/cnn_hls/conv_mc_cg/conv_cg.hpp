#pragma once

#include <hls_stream.h>
#include <hls_math.h>
#include <stdio.h>
#include <string.h>

// 32 3x3 filters
#define conv_32_f_h		 3
#define conv_32_f_w		 3
#define conv_32_num_f	32

#define conv_32_in_h	14
#define conv_32_in_w	14
#define conv_32_in_c	16

#define conv_32_out_h	14
#define conv_32_out_w	14
#define conv_32_out_c	32

/***** Datatypes definitions *****/
typedef unsigned int U32;

/***** Helper functions & structs *****/
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
	float maxp_16_fmap[conv_32_in_h][conv_32_in_w][conv_32_in_c] ,
	float conv_32_activated_out_grads[conv_32_out_h][conv_32_out_w][conv_32_out_c] ,
	float gmem_conv_32_weight_grads[conv_32_f_h][conv_32_f_w][conv_32_in_c][conv_32_num_f] ,
	float gmem_conv_32_bias_grads[conv_32_num_f] );
}
