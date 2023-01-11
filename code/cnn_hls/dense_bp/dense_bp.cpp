#include "dense_bp.hpp"

template < unsigned int num_kernels , unsigned int num_inputs >
void activate_kernel_errors ( hls::stream< bool >& s_activations , hls::stream< float >& s_out_error , hls::stream< float >& s_kernel_error )
{
	kernel_errors: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		float kernel_out_error = s_out_error.read();
		bool kernel_activation = s_activations.read();
		float kernel_error = kernel_activation ? kernel_out_error : 0.f;
		s_kernel_error.write( kernel_error );
	}
}


template < unsigned int num_kernels , unsigned int num_inputs >
void dense_error_propagation ( float weights[dense_num_in][dense_num_kernels] , hls::stream< float >& s_kernel_error , hls::stream< float >& s_in_error )
{
	float kernel_in_errors[num_kernels];
#pragma HLS ARRAY_PARTITION variable=kernel_in_errors type=complete

	kernel_errors: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
		kernel_in_errors[kernel] = s_kernel_error.read();

	input: for ( unsigned int input = 0 ; input < num_inputs ; input++ )
	{
#pragma HLS PIPELINE II=4
		float input_sum = 0.f;
		kernel: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
			input_sum += weights[input][kernel] * kernel_in_errors[kernel];

		s_in_error.write( input_sum );
	}
}


void dataflow_region ( float gmem_weights[dense_num_in][dense_num_kernels] , hls::stream < bool >& s_activations , float dense_out_error[dense_num_kernels] ,
	float dense_in_error[dense_num_in] )
{
#pragma HLS DATAFLOW
	hls::stream < float , 2 > s_out_error;
	array_to_stream < float , dense_num_kernels > ( dense_out_error , s_out_error );

	hls::stream < float , 2 > s_kernel_error;
	activate_kernel_errors < dense_num_kernels , dense_num_in > ( s_activations, s_out_error, s_kernel_error );

	hls::stream < float , 2 > s_in_error;
	dense_error_propagation < dense_num_kernels , dense_num_in > ( gmem_weights , s_kernel_error , s_in_error );

	stream_to_array < float , dense_num_in > ( s_in_error , dense_in_error );
}


void accel ( float gmem_dense_weights[dense_num_in][dense_num_kernels] , float dense_out_error[dense_num_kernels] , bool activations[dense_num_kernels] ,
	float dense_in_error[dense_num_in] )
{
	float dense_weights[dense_num_in][dense_num_kernels];
	save_variables_locally < float , dense_num_kernels , dense_num_in > ( gmem_dense_weights , dense_weights );

	hls::stream< bool , dense_num_kernels > s_activations;
	array_to_stream < bool , dense_num_kernels > ( activations , s_activations );

	dataflow_region( dense_weights , s_activations , dense_out_error , dense_in_error );
}
