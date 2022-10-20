#pragma once

#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <hls_math.h>
#include <stdio.h>
#include <string.h>


// softmax classification layer
#define softmax_num_in      128
#define softmax_num_kernels 10
#define softmax_num_out     10

/***** Datatypes definitions *****/
typedef unsigned int U32;

typedef hls::axis< float , 0 , 0 , 0 > axis_float; // axis stream of floats without side channels
typedef hls::stream< axis_float > axis_float_stream;

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
	// TODO: test output size padding to enable auto-widening
	write_out_mem: for ( unsigned int i = 0 ; i < num_elements ; i++ )
	{
#pragma HLS PIPELINE II=1
		out_type temp = in_stream.read();
		output[i] = temp;
	}
}

extern "C"
{
void accel (
	float gmem_softmax_weights[softmax_num_in][softmax_num_kernels] ,
	float* layer_output ,
	unsigned int label ,
	float* input_error );
}
