#pragma once

#include <hls_stream.h>
#include <ap_axi_sdata.h>

#include <stdio.h>
#include <string.h>

#define conv2d_16_filter_height 3
#define conv2d_16_filter_width  3
#define conv2d_16_num_filters  16

#define conv2d_16_in_height   28
#define conv2d_16_in_width	  28
#define conv2d_16_in_channels 1

#define conv2d_16_out_height   28
#define conv2d_16_out_width    28
#define conv2d_16_out_channels 16

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


// Wrapper of all write_mem calls. Dataflow requires all gmem writes in one function
template <
	typename out_type_1 , typename out_type_2 , unsigned int num_elements_out >
void write_mem_wrapper (
		hls::stream< out_type_1 >& in_stream_1 , out_type_1 output_1[num_elements_out] ,
		hls::stream< out_type_2 >& in_stream_2 )
{
	write_out_mem: for ( unsigned int i = 0 ; i < num_elements_out ; i++ )
	{
		out_type_1 temp = in_stream_1.read();
		output_1[i] = temp;
		out_type_2 black_hole = in_stream_2.read(); // the stream must be emptied but there is nowhere for the data to go.
	}
}


extern "C"
{
void accel (
	axis_float_stream& input_stream ,
	float gmem_weights[conv2d_16_num_filters][conv2d_16_filter_height][conv2d_16_filter_width] ,
	float* conv2d_16_biases ,
	float* conv2d_16_feature_map );
}
