#include "softmax_fwp.hpp"

template < unsigned int num_kernels , unsigned int num_inputs >
void softmax (
	axis_float_stream& input_stream ,
	float weights[num_inputs][num_kernels] , float biases[num_kernels] ,
	float softmax_feature_map[softmax_num_kernels] )
{
	float local_weights[num_inputs][num_kernels];
	memcpy( local_weights , weights , num_inputs * num_kernels * sizeof( float ) );

	// kernel sums and maximum kernel
	// initialize the kernel_sum of each kernel with its bias
	float kernel_sum[num_kernels];
#pragma HLS ARRAY_PARTITION variable=kernel_sum type=complete
	memcpy( kernel_sum , biases , num_kernels * sizeof( float ) );

	float softmax_max;

	// pull one input and use it with all the kernels
	calc_kernel_sums_and_max: for ( unsigned int i = 0 ; i < num_inputs ; i++ )
	{
		axis_float temp_input = input_stream.read();
		softmax_max = -std::numeric_limits<float>::infinity();

		for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
		{
			kernel_sum[kernel] += temp_input.data * local_weights[i][kernel];

			if ( kernel_sum[kernel] > softmax_max )
				softmax_max = kernel_sum[kernel];
		}
	}

	// total exponential sum
	float softmax_sum = 0.f;
	calc_exp_kernel_sum: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
		softmax_sum += std::exp( kernel_sum[kernel] - softmax_max );

	// generate output
	float constant = softmax_max + hls::log( softmax_sum );
	save_feature_map: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
		softmax_feature_map[kernel] = hls::exp( kernel_sum[kernel] - constant );
}


void accel (
	axis_float_stream& input_stream,
	float softmax_weights[softmax_num_in][softmax_num_kernels] ,
	float softmax_biases[softmax_num_kernels] ,
	float softmax_feature_map[softmax_num_kernels] )
{
	// call softmax layer
	softmax < softmax_num_kernels , softmax_num_in >
		( input_stream , softmax_weights , softmax_biases , softmax_feature_map );
}
