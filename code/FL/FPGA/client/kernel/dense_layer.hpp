/**
 * @file dense_layer.hpp
 * @author Emmanouil Petrakos
 * @brief Dense layer of a FPGA-based CNN implementation.
 *
 * @copyright None
 *
 * Developed with Vitis HLS 2022.1.
 */

#include "cnn_accelerator.hpp"

/***********************************************************************************/
/******************************* Forward Propagation *******************************/
/***********************************************************************************/
/**
 * @brief Forward propagation of the Dense ReLU activated layer.
 * @tparam uint, number of layer kernels
 * @tparam uint, number of layer inputs
 * @param stream< float >, layer inputs
 * @param float [_num_in][_num_k] , layer weights
 * @param float [_num_k] , layer biases
 * @param stream< float >, layer outputs
 * @param stream< float >, layer outputs
 */
template < uint _batch_size , uint _num_k , uint _num_in >
void dense_fp (
	hls::stream < float >& s_input , float weights[_num_in][_num_k] , float biases[_num_k] ,
	hls::stream < float >& s_output_1 , hls::stream < float >& s_output_2 , hls::stream < bool >& s_activations )
{
	float kernel_sum[_num_k];

	batch: for ( uint batch = 0 ; batch < _batch_size ; batch++ )
	{
		kernels_init: for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )// can be unrolled
	#pragma HLS PIPELINE II=1
			kernel_sum[kernel] = biases[kernel];

		inputs: for ( uint input = 0 ; input < _num_in ; input++ )
		{
	#pragma HLS PIPELINE II=10 style=frp
			float temp_input = s_input.read();

			kernels: for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
				kernel_sum[kernel] += weights[input][kernel] * temp_input;
		}

		activate: for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
		{
	#pragma HLS PIPELINE II=1  style=frp
			bool activation = ( kernel_sum[kernel] > 0 );
			float temp_out = activation ? kernel_sum[kernel] : 0;

			s_output_1.write( temp_out );
			s_output_2.write( temp_out );
			s_activations.write( activation );
		}
	}
}

/***********************************************************************************/
/******************************** Back Propagation *********************************/
/***********************************************************************************/
template < uint _batch_size , uint _num_k , uint _num_in >
void activate_kernel_errors (
	hls::stream< bool >& s_activations , hls::stream< float >& s_out_error , 
	hls::stream< float >& s_kernel_error_bp , hls::stream< float >& s_kernel_error_cg )
{
	batch: for ( uint batch = 0 ; batch < _batch_size ; batch++ )
		kernel_errors: for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
		{
#pragma HLS PIPELINE II=1 style=frp
			float kernel_out_error = s_out_error.read();
			bool kernel_activation = s_activations.read();
			float kernel_error = kernel_activation ? kernel_out_error : 0.f;
			s_kernel_error_bp.write( kernel_error );
			s_kernel_error_cg.write( kernel_error );
		}
}

/**
 * @brief Back propagation of the Dense ReLU activated layer.
 * @tparam uint, number of layer kernels
 * @tparam uint, number of layer inputs
 * @param float [_num_in][_num_k] , layer weights
 * @param stream< float >, layer kernel error
 * @param stream< float >, layer input error
 */
template < uint _batch_size , uint _num_k , uint _num_in >
void dense_bp ( float weights[_num_in][_num_k] , hls::stream< float >& s_kernel_error , hls::stream< float >& s_in_error )
{
	float kernel_in_errors[_num_k];

	batch: for ( uint batch = 0 ; batch < _batch_size ; batch++ )
	{
		kernel_errors: for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
#pragma HLS PIPELINE II=1 style=frp
			kernel_in_errors[kernel] = s_kernel_error.read();

		input: for ( uint input = 0 ; input < _num_in ; input++ )
		{
#pragma HLS PIPELINE II=10 style=frp
			float input_sum = 0.f;
			kernel: for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
				input_sum += weights[input][kernel] * kernel_in_errors[kernel];

			s_in_error.write( input_sum );
		}
	}
}

/***********************************************************************************/
/****************************** Gradient Calculation *******************************/
/***********************************************************************************/
template < uint _batch_size , uint _num_k , uint _num_in >
void dense_cg ( hls::stream < float >& s_input , hls::stream < float >& s_kernel_error ,
	float weight_grads[_num_in][_num_k] , float bias_grads[_num_k] )
{
	float kernel_errors[_num_k];

	batch: for ( uint batch = 0 ; batch < _batch_size ; batch++ )
	{
		kernel_errors_bias_grads: for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
		{
#pragma HLS PIPELINE II=1 style=frp
			kernel_errors[kernel] = s_kernel_error.read();
			bias_grads[kernel] += kernel_errors[kernel];
		}
		weight_grads: for ( uint input = 0 ; input < _num_in ; input++ )
		{
#pragma HLS PIPELINE II=10 style=frp
			float temp_input = s_input.read();
			for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
				weight_grads[input][kernel] += kernel_errors[kernel] * temp_input;
		}
	}
}
