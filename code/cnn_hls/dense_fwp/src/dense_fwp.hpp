#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <stdio.h>
#include <string.h>

// fully connected layer
#define dense_num_in      1568
#define dense_num_kernels 64
#define dense_num_out     64

typedef unsigned int U32;

typedef hls::axis< float , 0 , 0 , 0 > axis_float; // axis stream of floats without side channels
typedef hls::stream< axis_float > axis_float_stream;

extern "C"
{
void accel (
	axis_float_stream& input_stream ,
	float dense_weights[dense_num_in][dense_num_kernels] ,
	float* dense_biases ,
	float* dense_feature_map );
}


// Reads a stream and puts its data on global memory
template < typename out_type_1 , typename out_type_2 , unsigned int num_elements >
void write_mem ( hls::stream< out_type_1 >& in_stream_1 , out_type_1 output[num_elements] , hls::stream< out_type_2 >& in_stream_2 )
{
	write_out_mem: for ( unsigned int i = 0 ; i < num_elements ; i++ )
	{
		out_type_1 temp = in_stream_1.read();
		output[i] = temp;

		out_type_2 blackhole = in_stream_2.read();
	}
}
