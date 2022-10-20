#pragma once

#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <hls_math.h>
#include <stdio.h>
#include <string.h>

/***** Size definitions *****/
// 28x28x1 image
#define image_height  28
#define image_width   28
#define image_channels 1

// passes through 32 3x3 filters
#define conv2d_32_filter_height 3
#define conv2d_32_filter_width  3
#define conv2d_32_num_filters  32

#define conv2d_32_in_height   image_height   // 28
#define conv2d_32_in_width    image_width    // 28
#define conv2d_32_in_channels image_channels // 1

#define conv2d_32_out_height   conv2d_32_in_height   // 28
#define conv2d_32_out_width	   conv2d_32_in_width    // 28
#define conv2d_32_out_channels conv2d_32_num_filters // 32

// max pooling 2x2x1 with (2,2,1) stride
#define maxp2d_32_filter_height 2
#define maxp2d_32_filter_width  2
#define maxp2d_32_filter_stride 2

#define maxp2d_32_in_height   conv2d_32_out_height   // 28
#define maxp2d_32_in_width    conv2d_32_out_width    // 28
#define maxp2d_32_in_channels conv2d_32_out_channels // 32

#define maxp2d_32_out_height   maxp2d_32_in_height / maxp2d_32_filter_stride // 14
#define maxp2d_32_out_width    maxp2d_32_in_width  / maxp2d_32_filter_stride // 14
#define maxp2d_32_out_channels maxp2d_32_in_channels                         // 32

#define maxp2d_32_num_windows (maxp2d_32_in_height * maxp2d_32_in_width * maxp2d_32_in_channels) / (maxp2d_32_filter_height * maxp2d_32_filter_width )

// 64 3x3 filters
#define conv2d_64_filter_height 3
#define conv2d_64_filter_width  3
#define conv2d_64_num_filters  64

#define conv2d_64_in_height   maxp2d_32_out_height   // 14
#define conv2d_64_in_width	  maxp2d_32_out_width    // 14
#define conv2d_64_in_channels maxp2d_32_out_channels // 32

#define conv2d_64_out_height   maxp2d_32_out_height  // 14
#define conv2d_64_out_width    maxp2d_32_out_width   // 14
#define conv2d_64_out_channels conv2d_64_num_filters // 64

// max pooling 2x2x1 with (2,2,1) stride
#define maxp2d_64_filter_height 2
#define maxp2d_64_filter_width  2
#define maxp2d_64_filter_stride 2

#define maxp2d_64_in_height   conv2d_64_out_height   // 14
#define maxp2d_64_in_width    conv2d_64_out_width    // 14
#define maxp2d_64_in_channels conv2d_64_out_channels // 64

#define maxp2d_64_out_height   maxp2d_64_in_height / maxp2d_64_filter_stride // 7
#define maxp2d_64_out_width    maxp2d_64_in_width  / maxp2d_64_filter_stride // 7
#define maxp2d_64_out_channels maxp2d_64_in_channels                         // 64

#define maxp2d_64_num_windows (maxp2d_64_in_height * maxp2d_64_in_width * maxp2d_64_in_channels) / (maxp2d_64_filter_height * maxp2d_64_filter_width )

// fully connected layer
#define dense_num_in      maxp2d_64_out_channels * maxp2d_64_out_height * maxp2d_64_out_width // 3136
#define dense_num_kernels 128
#define dense_num_out     dense_num_kernels	// 128

// softmax classification layer
#define softmax_num_in      dense_num_out       // 128
#define softmax_num_kernels 10
#define softmax_num_out     softmax_num_kernels // 10

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
#pragma HLS INLINE
	// TODO: test output size padding to enable auto-widening
	write_out_mem: for ( unsigned int i = 0 ; i < num_elements ; i++ )
	{
		out_type temp = in_stream.read();
		output[i] = temp;
	}
}

extern "C"
{
void accel (
	axis_float_stream& input_stream ,
	float* conv2d_32_weights , float* conv2d_32_biases ,
	float* conv2d_64_weights , float* conv2d_64_biases ,
	float* dense_weights , float* dense_biases ,
	float* softmax_weights , float* softmax_biases ,

	float* conv2d_32_feature_map ,
	float* maxp2d_32_feature_map ,
	float* conv2d_64_feature_map ,
	float* maxp2d_64_feature_map ,
	float* dense_feature_map ,
	float* softmax_feature_map );
}
