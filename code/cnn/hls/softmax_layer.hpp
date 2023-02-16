/**
 * @file softmax_layer.hpp
 * @author Emmanouil Petrakos
 * @brief Softmax layer of a FPGA-based CNN implementation.
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
 * @brief Forward propagation of the softmax layer.
 * @tparam uint, number of layer kernels
 * @tparam uint, number of layer inputs
 * @param stream< float >, layer inputs
 * @param float [_num_in][_num_k] , layer weights
 * @param float [_num_k] , layer biases
 * @param stream< float >, layer outputs
 */
template < uint _batch_size , uint _num_k , uint _num_in >
void softmax_fp ( hls::stream < float >& s_input , float weights[_num_in][_num_k] , float biases[_num_k] , hls::stream < float >& s_output )
{
	float kernel_sum[_num_k];

	batch: for ( uint batch = 0 ; batch < _batch_size ; batch++ )
	{
		kernels_init: for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
#pragma HLS PIPELINE II=1
			kernel_sum[kernel] = biases[kernel];

		float softmax_max;

		calc_sums_and_max: for ( uint input = 0 ; input < _num_in ; input++ )
		{
#pragma HLS PIPELINE II=3 style=frp
			float temp_input = s_input.read();
			softmax_max = -std::numeric_limits<float>::infinity();

			for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
			{
				kernel_sum[kernel] += weights[input][kernel] * temp_input;

				if ( input == _num_in - 1 && kernel_sum[kernel] > softmax_max )
					softmax_max = kernel_sum[kernel];
			}
		}
		float softmax_sum = 0.f;
		calc_exp_sum: for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
#pragma HLS PIPELINE II=3
			softmax_sum += std::exp( kernel_sum[kernel] - softmax_max ); // TODO: check hls:: instead of std::

		float constant = softmax_max + hls::log( softmax_sum );
		feature_map: for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
		{
#pragma HLS PIPELINE II=1 style=frp
			float temp_out = std::exp( kernel_sum[kernel] - constant );
			s_output.write( temp_out );
		}
	}
}

/***********************************************************************************/
/******************************** Back Propagation *********************************/
/***********************************************************************************/
/**
 * @brief Loss function of the CNN.
 * @tparam uint, number of layer kernels
 * @param stream< float >, s_prediction
 * @param uint, true label
 * @param stream< float >, prediction errors
 */
template < uint _num_batches , uint _batch_size , uint _num_k >
void sparce_categorical_cross_entropy ( hls::stream < float >& s_prediction , hls::stream < t_label >& s_labels ,
	hls::stream < float >& s_total_out_error_bp , hls::stream < float >& s_total_out_error_gc )
{
	t_label correct_label;
	batch: for ( uint batch_elem = 0 ; batch_elem < _batch_size ; batch_elem++ )
		output_error: for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
		{
#pragma HLS PIPELINE II=1 style=frp
			// read correct label. Axi read, if large batch maybe becomes too wide? TODO: check with large batch
			if ( kernel == 0 )
				correct_label = s_labels.read();

			float kernel_prediction = s_prediction.read();
			float temp_out_error = - float( correct_label == kernel ) + kernel_prediction ;
			s_total_out_error_bp.write( temp_out_error );
			s_total_out_error_gc.write( temp_out_error );
		}
}

/**
 * @brief Back propagation of the softmax layer.
 * @tparam uint, number of layer kernels
 * @tparam uint, number of layer inputs
 * @param stream< float >, layer output error
 * @param uint, layer weights
 * @param stream< float >, layer input error
 */
template < uint _batch_size , uint _num_k , uint _num_in >
void softmax_bp ( hls::stream < float >& s_out_error , float weights[_num_in][_num_k] , hls::stream < float >& s_in_error )
{
	float kernel_error[_num_k];

	batch: for ( uint batch = 0 ; batch < _batch_size ; batch++ )
	{
		kernel_errors: for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
#pragma HLS PIPELINE II=1 style=frp
			kernel_error[kernel] = s_out_error.read();

		input_error: for ( uint input = 0 ; input < _num_in ; input++ )
		{
#pragma HLS PIPELINE II=1 style=frp
			float input_sum = 0.f;
			kernel: for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
				input_sum += weights[input][kernel] * kernel_error[kernel];

			s_in_error.write( input_sum );
		}
	}
}

/***********************************************************************************/
/****************************** Gradient Calculation *******************************/
/***********************************************************************************/
template < uint _batch_size , uint _num_k , uint _num_in >
void softmax_cg ( hls::stream < float >& s_input , hls::stream < float >& s_out_error ,
	float weight_grads[_num_in][_num_k] , float bias_grads[_num_k] )
{
	float kernel_errors[_num_k];

	batch: for ( uint batch = 0 ; batch < _batch_size ; batch++ )
	{
		kernel_errors_bias_grads: for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
		{
#pragma HLS PIPELINE II=1 style=frp
			kernel_errors[kernel] = s_out_error.read();
			bias_grads[kernel] += kernel_errors[kernel];
		}
		weight_grads: for ( uint input = 0 ; input < _num_in ; input++ )
		{
#pragma HLS PIPELINE II=1 style=frp
			float temp_input = s_input.read();
			for ( uint kernel = 0 ; kernel < _num_k ; kernel++ )
				weight_grads[input][kernel] += kernel_errors[kernel] * temp_input;
		}
	}
}
