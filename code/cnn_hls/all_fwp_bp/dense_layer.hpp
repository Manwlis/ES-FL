/**
 * @file dense_layer.hpp
 * @author Emmanouil Petrakos
 * @brief Dense layer of a FPGA-based CNN implementation.
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
 * @brief Forward propagation of the Dense ReLU activated layer.
 * @tparam unsigned int, number of layer kernels
 * @tparam unsigned int, number of layer inputs
 * @param stream< float >, layer inputs
 * @param float [num_inputs][num_kernels] , layer weights
 * @param float [num_kernels] , layer biases
 * @param stream< float >, layer outputs
 * @param stream< float >, layer outputs
 */
template < unsigned int num_kernels , unsigned int num_inputs >
void dense (
	hls::stream < float >& s_input , float weights[num_inputs][num_kernels] , float biases[num_kernels] ,
	hls::stream < float >& s_output_1 , hls::stream < float >& s_output_2 , hls::stream < bool >& s_activations )
{
	// can save of the cycles of loops 1 & 3 if dataflow. Added complexity. loops 1 & 2 read from gmem, can't be done now.
	float kernel_sum[num_kernels];
#pragma HLS ARRAY_PARTITION variable=kernel_sum type=complete

	kernels_init: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
		kernel_sum[kernel] = biases[kernel];

	inputs: for ( unsigned int input = 0 ; input < num_inputs ; input++ )
	{
		float temp_input = s_input.read();

		kernels: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
			kernel_sum[kernel] += weights[input][kernel] * temp_input;
	}

	activate: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		bool activation = ( kernel_sum[kernel] > 0 );
		float temp_out = activation ? kernel_sum[kernel] : 0;

		s_output_1.write( temp_out );
		s_output_2.write( temp_out );
		s_activations.write( activation );
	}
}

/***********************************************************************************/
/******************************** Back Propagation *********************************/
/***********************************************************************************/
/**
 * @brief Back propagation of the Dense ReLU activated layer.
 * @tparam unsigned int, number of layer kernels
 * @tparam unsigned int, number of layer inputs
 * @param float [num_inputs][num_kernels] , layer weights
 * @param stream< bool >, layer activations during forward propagation
 * @param stream< float >, layer output error
 * @param stream< float >, layer input error
 */
template < unsigned int num_kernels , unsigned int num_inputs >
void dense_error_propagation (
	float weights[dense_num_in][dense_num_kernels] ,
	hls::stream< bool >& s_activations , hls::stream< float >& s_out_error ,
	hls::stream< float >& s_in_error )
{
	// TODO: local buffer for kernel_activation. Bool so cheap. same partition as kernel_in_errors. Unclog stream
	float kernel_in_errors[num_kernels];
#pragma HLS ARRAY_PARTITION variable=kernel_in_errors type=complete // TODO: partition block factor = II or size/II

	kernel_errors: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		float kernel_out_error = s_out_error.read();
		bool kernel_activation = s_activations.read();
		kernel_in_errors[kernel] = kernel_activation ? kernel_out_error : 0.f;
	}

	input_error: for ( unsigned int input = 0 ; input < num_inputs ; input++ )
	{
		float input_sum = 0.f;
		kernel: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
			input_sum += weights[input][kernel] * kernel_in_errors[kernel];

		s_in_error.write( input_sum );
	}
}

/***********************************************************************************/
/****************************** Gradient Calculation *******************************/
/***********************************************************************************/
