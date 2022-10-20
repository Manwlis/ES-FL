#pragma once

#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <stdio.h>
#include <string.h>

#define conv2d_32_filter_height 3
#define conv2d_32_filter_width  3
#define conv2d_32_num_filters  32

#define conv2d_32_in_height   28
#define conv2d_32_in_width	  28
#define conv2d_32_in_channels 1

#define conv2d_32_out_height   28
#define conv2d_32_out_width    28
#define conv2d_32_out_channels 32

typedef unsigned int U32;

typedef hls::axis< float , 0 , 0 , 0 > axis_float; // axis stream of floats without side channels
typedef hls::stream< axis_float > axis_float_stream;


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


extern "C"
{
void accel (
	axis_float_stream& input_stream ,
	float gmem_weights[conv2d_32_filter_height][conv2d_32_filter_width][conv2d_32_num_filters] ,
	float* conv2d_32_biases ,
	float* conv2d_32_feature_map ,
	bool*  conv2d_32_activations );
}
