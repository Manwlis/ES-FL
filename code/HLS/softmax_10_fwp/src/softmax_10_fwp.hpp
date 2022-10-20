#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <hls_vector.h>
#include <hls_math.h>
#include <stdio.h>
#include <string.h>

#define softmax_num_in      128
#define softmax_num_kernels 10
#define softmax_num_out     10

typedef unsigned int U32;

typedef hls::axis< float , 0 , 0 , 0 > axis_float; // axis stream of floats without side channels
typedef hls::stream< axis_float > axis_float_stream;

typedef hls::vector< float , 10 > t_float_10_vector;

extern "C"
{
void accel (
	axis_float_stream& input_stream ,
	float* softmax_weights ,
	float* softmax_biases ,
	float* softmax_feature_map );
}


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
