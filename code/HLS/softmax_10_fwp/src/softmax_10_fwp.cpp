#include "softmax_10_fwp.hpp"

template < unsigned int num_kernels , unsigned int num_inputs >
void softmax (
	axis_float_stream& input_stream ,
	float weights[num_inputs * num_kernels] , float biases[num_kernels] ,
	float softmax_feature_map[softmax_num_kernels] )
{
	float weights_local[num_inputs * num_kernels];
	init_weights: for ( unsigned int i = 0 ; i < num_inputs * num_kernels ; i+=16 )
#pragma HLS PIPELINE
		memcpy( &weights_local[i] , &weights[i] , 16 * sizeof( float ) );

	// initialize the sum of each kernel with its bias
	float sum[num_kernels];
	memcpy( &sum[0] , &biases[0] , 10 * sizeof( float ) );

	float softmax_max;

	// pull one input and use it with all the kernels
	calc_sums_and_max: for ( unsigned int i = 0 ; i < num_inputs ; i++ )
	{
#pragma HLS PIPELINE
		axis_float temp_input = input_stream.read();
		softmax_max = -std::numeric_limits<float>::infinity();

		for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
		{
			sum[kernel] += temp_input.data * weights_local[i * num_kernels + kernel];

			if ( sum[kernel] > softmax_max )
				softmax_max = sum[kernel];
		}
	}

	float softmax_sum = 0.f;
	calc_exp_sum: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
		softmax_sum += std::exp( sum[kernel] - softmax_max );

	float constant = softmax_max + hls::log( softmax_sum );
	feature_map: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
#pragma HLS PIPELINE
		softmax_feature_map[kernel] = std::exp( sum[kernel] - constant );
}


void accel (
	axis_float_stream& input_stream,
	float softmax_weights[softmax_num_in * softmax_num_kernels] ,
	float softmax_biases[softmax_num_kernels] ,
	float softmax_feature_map[softmax_num_kernels] )
{
	// call softmax layer
	softmax < softmax_num_kernels , softmax_num_in >
		( input_stream , softmax_weights , softmax_biases , softmax_feature_map );
}
