#include "dense_128_fwp.hpp"

// dense layer
template < unsigned int num_kernels , unsigned int num_inputs >
void dense (
	axis_float_stream& input_stream ,
	float weights[num_inputs * num_kernels] , float biases[num_kernels] ,
	hls::stream < float >& feature_map_stream , hls::stream < bool >& activations_stream )
{
	// can save of the cycles of loops 1 & 3 if dataflow. Added complexity. loops 1 & 2 read from gmem, can't be done now.

	float kernel_sum[num_kernels];
#pragma HLS ARRAY_PARTITION variable=kernel_sum type=complete

//	init_sums: for( unsigned int k = 0 ; k < num_kernels ; k++ )
//#pragma HLS PIPELINE
//		kernel_sum[k] = biases[k];
	init_sums: for( unsigned int k = 0 ; k < num_kernels ; k += 16 )
		memcpy( &kernel_sum[k] , &biases[k] , 16 * sizeof( float ) );

	inputs: for ( unsigned int i = 0 ; i < num_inputs ; i++ )
	{
// axi_m max widen port = 512 bits. 128 kernels * 32 bit floats = 4096 bits. min II = 4096/512 = 8
#pragma HLS PIPELINE II=8

		axis_float temp_input = input_stream.read();

		kernels: for ( unsigned int k = 0 ; k < num_kernels ; k++ )
			kernel_sum[k] += temp_input.data * weights[i * num_kernels + k ];
	}

	activate: for ( unsigned int k = 0 ; k < num_kernels ; k++ )
	{
#pragma HLS PIPELINE
		bool activation = ( kernel_sum[k] > 0 );
		float temp_out = activation ? kernel_sum[k] : 0;

		feature_map_stream.write(temp_out);
		activations_stream.write(activation);
	}
}


// Top function
void accel (
	axis_float_stream& input_stream,
	float dense_weights[dense_num_in * dense_num_kernels] ,
	float dense_biases[dense_num_kernels] ,
	float dense_feature_map[dense_num_kernels] ,
	bool  dense_activations[dense_num_kernels] )
{
#pragma HLS DATAFLOW

	// output streams
	hls::stream < float , 3 > feature_map_stream;
	hls::stream < bool , dense_num_kernels > activations_stream;

	// call dense layer
	dense < dense_num_kernels , dense_num_in >
		( input_stream , dense_weights , dense_biases , feature_map_stream , activations_stream );

	// write in memory
	write_mem_wrapper < float , dense_num_kernels , bool , dense_num_kernels >
		( feature_map_stream , dense_feature_map , activations_stream , dense_activations );
}
