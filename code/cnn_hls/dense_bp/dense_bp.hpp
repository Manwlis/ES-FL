#pragma once

#include <hls_stream.h>
#include <hls_math.h>
#include <stdio.h>
#include <string.h>

// fully connected layer
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

template < typename variable_type , unsigned int num_kernels , unsigned int num_inputs >
void save_variables_locally ( float gmem_softmax_weights[num_inputs][num_kernels] , float softmax_weights[num_inputs][num_kernels] )
{
	memcpy( softmax_weights , gmem_softmax_weights , num_inputs * num_kernels * sizeof(variable_type) );
}

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
	float gmem_dense_weights[dense_num_in][dense_num_kernels] ,
	float dense_output_error[dense_num_kernels] ,
	bool activations[dense_num_kernels] ,
	float dense_input_error[dense_num_in] );
}
