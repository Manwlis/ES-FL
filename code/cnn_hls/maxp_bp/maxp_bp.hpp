#pragma once

#include <hls_stream.h>
#include <hls_math.h>
#include <stdio.h>
#include <string.h>


// max pooling 2x2x1 with (2,2,1) stride
#define maxp2d_32_filter_height 2
#define maxp2d_32_filter_width  2
#define maxp2d_32_filter_stride 2

#define maxp2d_32_in_height   14
#define maxp2d_32_in_width    14
#define maxp2d_32_in_channels 32

#define maxp2d_32_out_height   7
#define maxp2d_32_out_width    7
#define maxp2d_32_out_channels 32

#define maxp2d_32_num_in maxp2d_32_in_height * maxp2d_32_in_width * maxp2d_32_in_channels
#define maxp2d_32_num_out maxp2d_32_out_height * maxp2d_32_out_width * maxp2d_32_out_channels

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
	float maxp_output_error[maxp2d_32_num_out] ,
	bool maxp_activations[maxp2d_32_num_out][maxp2d_32_filter_height][maxp2d_32_filter_width] ,
	float maxp_input_error[maxp2d_32_num_in] );
}
