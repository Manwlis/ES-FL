#pragma once

#include <hls_stream.h>
#include <hls_math.h>
#include <stdio.h>
#include <string.h>

/***** Size definitions *****/
// 28x28x1 image
#define image_height  28
#define image_width   28
#define image_channels 1

// passes through 16 3x3 filters
#define conv_16_filter_height 3
#define conv_16_filter_width  3
#define conv_16_num_filters  16

#define conv_16_in_height   image_height   // 28
#define conv_16_in_width    image_width    // 28
#define conv_16_in_channels image_channels // 1

#define conv_16_out_height   conv_16_in_height   // 28
#define conv_16_out_width	 conv_16_in_width    // 28
#define conv_16_out_channels conv_16_num_filters // 16

// max pooling 2x2x1 with (2,2,1) stride
#define maxp_16_filter_height 2
#define maxp_16_filter_width  2
#define maxp_16_filter_stride 2

#define maxp_16_in_height   conv_16_out_height   // 28
#define maxp_16_in_width    conv_16_out_width    // 28
#define maxp_16_in_channels conv_16_out_channels // 16

#define maxp_16_out_height   maxp_16_in_height / maxp_16_filter_stride // 14
#define maxp_16_out_width    maxp_16_in_width  / maxp_16_filter_stride // 14
#define maxp_16_out_channels maxp_16_in_channels                       // 16

#define maxp_16_num_windows (maxp_16_in_height * maxp_16_in_width * maxp_16_in_channels) / (maxp_16_filter_height * maxp_16_filter_width )

// 32 3x3 filters
#define conv_32_filter_height 3
#define conv_32_filter_width  3
#define conv_32_num_filters  32

#define conv_32_in_height   maxp_16_out_height   // 14
#define conv_32_in_width	maxp_16_out_width    // 14
#define conv_32_in_channels maxp_16_out_channels // 16

#define conv_32_out_height   maxp_16_out_height  // 14
#define conv_32_out_width    maxp_16_out_width   // 14
#define conv_32_out_channels conv_32_num_filters // 32

// max pooling 2x2x1 with (2,2,1) stride
#define maxp_32_filter_height 2
#define maxp_32_filter_width  2
#define maxp_32_filter_stride 2

#define maxp_32_in_height   conv_32_out_height   // 14
#define maxp_32_in_width    conv_32_out_width    // 14
#define maxp_32_in_channels conv_32_out_channels // 32

#define maxp_32_out_height   maxp_32_in_height / maxp_32_filter_stride // 7
#define maxp_32_out_width    maxp_32_in_width  / maxp_32_filter_stride // 7
#define maxp_32_out_channels maxp_32_in_channels                       // 32

#define maxp_32_num_windows (maxp_32_in_height * maxp_32_in_width * maxp_32_in_channels) / (maxp_32_filter_height * maxp_32_filter_width )

// fully connected layer
#define dense_num_in      maxp_32_out_channels * maxp_32_out_height * maxp_32_out_width // 1568
#define dense_num_kernels 64
#define dense_num_out     dense_num_kernels	// 64

// softmax classification layer
#define softmax_num_in      dense_num_out       // 64
#define softmax_num_kernels 10
#define softmax_num_out     softmax_num_kernels // 10

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
#pragma HLS INLINE
	write_out_mem: for ( unsigned int i = 0 ; i < num_elements ; i++ )
	{
		out_type temp = in_stream.read();
		output[i] = temp;
	}
}

extern "C"
{
void accel (
	float input_data[image_height][image_width] ,
	float gmem_conv_16_weights[conv_16_filter_height][conv_16_filter_width][conv_16_num_filters] ,
	float gmem_conv_16_biases[conv_16_num_filters] ,

	float gmem_conv_32_weights[conv_32_in_channels][conv_32_filter_height][conv_32_filter_width][conv_32_num_filters] ,
	float gmem_conv_32_biases[conv_32_num_filters] ,

	float gmem_dense_weights[dense_num_in][dense_num_kernels] ,
	float gmem_dense_biases[dense_num_kernels] ,

	float gmem_softmax_weights[softmax_num_in][softmax_num_kernels] ,
	float gmem_softmax_biases[softmax_num_kernels] ,
	// TODO: remove extra feature channels and stream. Including stuff in other files, function defintions, calls and arrays
	float gmem_conv_16_feature_map[conv_16_out_height * conv_16_out_width * conv_16_out_channels] ,
	float gmem_conv_32_feature_map[conv_32_out_height * conv_32_out_width * conv_32_out_channels] ,
	float gmem_dense_feature_map[dense_num_out] ,
	float gmem_softmax_feature_map[softmax_num_out] );
}
