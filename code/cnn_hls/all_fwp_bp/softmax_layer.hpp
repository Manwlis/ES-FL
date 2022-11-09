/**
 * @file softmax_layer.hpp
 * @author Emmanouil Petrakos
 * @brief Softmax layer of a FPGA-based CNN implementation.
 *
 * @copyright None
 *
 * Developed with Vitis HLS 2022.1.
 */

#include "all_fwp_bp.hpp"

/***********************************************************************************/
/******************************* Forward Propagation *******************************/
/***********************************************************************************/
/**
 * @brief Forward propagation of the softmax layer.
 * @tparam unsigned int, number of layer kernels
 * @tparam unsigned int, number of layer inputs
 * @param stream< float >, layer inputs
 * @param float [num_inputs][num_kernels] , layer weights
 * @param float [num_kernels] , layer biases
 * @param stream< float >, layer outputs
 */
template < unsigned int num_kernels , unsigned int num_inputs >
void softmax ( hls::stream < float >& s_input , float weights[num_inputs][num_kernels] , float biases[num_kernels] , hls::stream < float >& s_output )
{
	float kernel_sum[num_kernels];
#pragma HLS ARRAY_PARTITION variable=kernel_sum type=complete

	kernels_init: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
		kernel_sum[kernel] = biases[kernel];

	float softmax_max;

	calc_sums_and_max: for ( unsigned int input = 0 ; input < num_inputs ; input++ )
	{
		float temp_input = s_input.read();
		softmax_max = -std::numeric_limits<float>::infinity();

		for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
		{
			kernel_sum[kernel] += weights[input][kernel] * temp_input;

			if ( input == num_inputs - 1 && kernel_sum[kernel] > softmax_max )
				softmax_max = kernel_sum[kernel];
		}
	}

	float softmax_sum = 0.f;
	calc_exp_sum: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
		softmax_sum += std::exp( kernel_sum[kernel] - softmax_max );

	float constant = softmax_max + hls::log( softmax_sum );
	feature_map: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		float temp_out = std::exp( kernel_sum[kernel] - constant );
		s_output.write( temp_out );
	}
}

/***********************************************************************************/
/******************************** Back Propagation *********************************/
/***********************************************************************************/
/**
 * @brief Loss function of the CNN.
 * @tparam unsigned int, number of layer kernels
 * @param stream< float >, s_prediction
 * @param unsigned int, true label
 * @param stream< float >, prediction errors
 */
template < unsigned int num_kernels >
void sparce_categorical_cross_entropy ( hls::stream < float >& s_prediction , unsigned int label , hls::stream < float >& s_total_out_error )
{
	output_error: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		float kernel_prediction = s_prediction.read();
		float temp_out_error = - float( label == kernel ) + kernel_prediction ;
		s_total_out_error.write( temp_out_error );
	}
}

/**
 * @brief Back propagation of the softmax layer.
 * @tparam unsigned int, number of layer kernels
 * @tparam unsigned int, number of layer inputs
 * @param stream< float >, layer output error
 * @param unsigned int, layer weights
 * @param stream< float >, layer input error
 */
template < unsigned int num_kernels , unsigned int num_inputs >
void softmax_error_propagation ( hls::stream < float >& s_out_error , float weights[num_inputs][num_kernels] , hls::stream < float >& s_in_error )
{
	float kernel_error[num_kernels];
//#pragma HLS ARRAY_PARTITION variable=kernel_in_error type=complete TODO: find appropriate value

	kernel_errors: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
		kernel_error[kernel] = s_out_error.read();

	input_error: for ( unsigned int input = 0 ; input < num_inputs ; input++ )
	{
		float input_sum = 0.f;
		kernel: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
			input_sum += weights[input][kernel] * kernel_error[kernel];

		s_in_error.write( input_sum );
	}
}

/***********************************************************************************/
/****************************** Gradient Calculation *******************************/
/***********************************************************************************/

