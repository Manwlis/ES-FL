#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <stdio.h>
#include <string.h>

// fully connected layer
#define dense_num_in      3136
#define dense_num_kernels 128
#define dense_num_out     128

typedef unsigned int U32;

typedef hls::axis< float , 0 , 0 , 0 > axis_float; // axis stream of floats without side channels
typedef hls::stream< axis_float > axis_float_stream;

extern "C"
{
void accel (
	axis_float_stream& input_stream ,
	float* dense_weights ,
	float* dense_biases ,
	float* dense_feature_map ,
	bool*  dense_activations );
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
