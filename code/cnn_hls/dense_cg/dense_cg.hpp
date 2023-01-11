#pragma once

#include <hls_stream.h>
#include <hls_math.h>
#include <stdio.h>
#include <string.h>

#define dense_num_in      1568
#define dense_num_kernels 64
#define dense_num_out     64

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


// Reads a stream and puts its data on global memory
template < typename out_type , unsigned int num_elements >
void write_mem ( hls::stream< out_type >& in_stream , out_type output[num_elements] )
{
	write_out_mem: for ( unsigned int i = 0 ; i < num_elements ; i++ )
	{
		out_type temp = in_stream.read();
		output[i] = temp;
	}
}

extern "C"
{
void accel (
	float maxp_32_fmap[dense_num_in] ,
	float dense_out_grads[dense_num_out] , bool activations[dense_num_kernels] ,
	float weight_gradients[dense_num_in][dense_num_kernels] ,
	float bias_gradients[dense_num_kernels] );
}
