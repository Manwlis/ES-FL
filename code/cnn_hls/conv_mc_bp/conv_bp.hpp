#pragma once

#include <hls_stream.h>
#include <hls_math.h>
#include <stdio.h>
#include <string.h>

// 32 3x3 filters
#define conv_32_filter_height 3
#define conv_32_filter_width  3
#define conv_32_num_filters  32

#define conv_32_in_height   14
#define conv_32_in_width	14
#define conv_32_in_channels 16

#define conv_32_out_height   14
#define conv_32_out_width    14
#define conv_32_out_channels 32

#define conv_32_bp_num_windows conv_32_out_height * conv_32_out_width * conv_32_out_channels
#define conv_32_num_weights conv_32_filter_height * conv_32_filter_width * conv_32_in_channels * conv_32_num_filters

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

template < typename data_type , unsigned int array_size >
void array_to_stream( data_type array[array_size] , hls::stream < data_type >& stream )
{
	for ( unsigned int i = 0 ; i < array_size ; i++ )
	{
		data_type temp = array[i];
		stream.write( temp );
	}
}

template < typename data_type , unsigned int num_elements >
void stream_to_array ( hls::stream< data_type >& in_stream , data_type output[num_elements] )
{
	for ( unsigned int i = 0 ; i < num_elements ; i++ )
		 output[i] = in_stream.read();
}

extern "C"
{
void accel (
	float conv_32_out_error[conv_32_out_height * conv_32_out_width * conv_32_out_channels] ,
	bool conv_32_activations[conv_32_out_height * conv_32_out_width * conv_32_out_channels] ,
	float gmem_conv_32_weights[conv_32_filter_height][conv_32_filter_width][conv_32_in_channels][conv_32_num_filters] ,
	float conv_32_in_error[conv_32_in_height * conv_32_in_width * conv_32_in_channels] );
}
