#pragma once

#include <hls_stream.h>
#include <hls_math.h>
#include <stdio.h>
#include <string.h>

/***** Size definitions *****/
// 28x28x1 image
#define input_h				28
#define input_w				28
#define input_c				 1

// passes through 16 3x3 filters
#define conv_16_f_h			 3
#define conv_16_f_w			 3
#define conv_16_f			16

#define conv_16_in_h		input_h	// 28
#define conv_16_in_w		input_w	// 28
#define conv_16_in_c		input_c	// 1

#define conv_16_out_h		conv_16_in_h	// 28
#define conv_16_out_w		conv_16_in_w	// 28
#define conv_16_out_c		conv_16_f		// 16


/***** Datatypes definitions *****/
typedef unsigned int U32;

/***** Helper functions & structs *****/
template < typename in_type , unsigned int filter_height , unsigned int filter_width >
struct window {
	in_type elements[filter_height][filter_width];

	void operator=(const window& input)
	{
		for( int h = 0 ; h < filter_height ; h++ )
			for( int w = 0 ; w < filter_width ; w++ )
				this->elements[h][w] = input.elements[h][w];
	}
};

template < typename data_type , unsigned int size >
struct window_1d
{
	data_type elements[size];

	void operator=( const window_1d& in )
	{
		for( int s = 0 ; s < size ; s++ )
			this->elements[s] = in.elements[s];
	}
	void operator+=( const window_1d& in )
	{
		for( int s = 0 ; s < size ; s++ )
			this->elements[s] += in.elements[s];
	}
};

// Reads a stream and puts its data on global memory
template < typename out_type , unsigned int num_elements >
void write_mem ( hls::stream< out_type >& s_input , out_type output[num_elements] )
{
	write_out_mem: for ( unsigned int i = 0 ; i < num_elements ; i++ )
	{
		out_type temp = s_input.read();
		output[i] = temp;
	}
}


extern "C"
{
void accel (
	float gmem_input[input_h][input_w][input_c] ,
	float gmem_conv_16_activated_out_grads[conv_16_out_h][conv_16_out_w][conv_16_out_c] ,
	float gmem_weight_grads[conv_16_f_h][conv_16_f_w][conv_16_f] ,
	float gmem_bias_grads[conv_16_f] );
}
