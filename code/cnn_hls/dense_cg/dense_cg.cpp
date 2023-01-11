#include "dense_cg.hpp"

template < typename data_type , unsigned int array_size >
void stream_array ( data_type array[array_size] , hls::stream < data_type >& stream )
{
	stream_array: for ( unsigned int i = 0 ; i < array_size ; i++ )
		stream.write( array[i] );
}

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

template < unsigned int num_inputs , unsigned int num_kernels >
void dense_regression (
	hls::stream < float >& s_input , hls::stream < float >& s_kernel_error ,
	float weight_grads[num_inputs][num_kernels] , float bias_grads[num_kernels] )
{
	float kernel_errors[num_kernels];
	kernel_errors_bias_grads: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		kernel_errors[kernel] = s_kernel_error.read();
		bias_grads[kernel] += kernel_errors[kernel];
	}

	weight_grads: for ( unsigned int input = 0 ; input < num_inputs ; input++ )
	{
#pragma HLS PIPELINE II=4
		float temp_input = s_input.read();
		for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
			weight_grads[input][kernel] += kernel_errors[kernel] * temp_input;
	}
}

void dataflow_region (
	hls::stream < float >& s_input , hls::stream < float >& s_out_error , bool activations[dense_num_kernels] ,
	float weight_grads[dense_num_in][dense_num_kernels] , float bias_grads[dense_num_kernels] )
{
#pragma HLS DATAFLOW
	hls::stream < bool , 2 > s_activations;
	stream_array < bool , dense_num_kernels > ( activations , s_activations );

	hls::stream < float , 2 > s_kernel_error;
	activate_kernel_errors < dense_num_kernels , dense_num_in > ( s_activations , s_out_error , s_kernel_error );

	dense_regression < dense_num_in , dense_num_kernels > ( s_input , s_kernel_error , weight_grads , bias_grads );
}



void accel ( float gmem_maxp_32_fmap[dense_num_in] , float gmem_dense_out_grads[dense_num_out] , bool activations[dense_num_kernels] ,
	float gmem_weight_grads[dense_num_in][dense_num_kernels] , float gmem_bias_grads[dense_num_kernels] )
{
	float weight_grads[dense_num_in][dense_num_kernels];
#pragma HLS ARRAY_PARTITION variable=weight_grads dim=2 type=complete
	float bias_grads[dense_num_kernels];

	init_weight_grads: for ( unsigned int i = 0 ; i < dense_num_in ; i++ )
		for ( unsigned int k = 0 ; k < dense_num_kernels ; k++ )
			weight_grads[i][k] = 0.f;

	init_bias_grads: for ( unsigned int k = 0 ; k < dense_num_kernels ; k++ )
		bias_grads[k] = 0.f;

	hls::stream < float , dense_num_in > s_input;
	hls::stream < float , dense_num_out > s_out_error;
	stream_array < float ,dense_num_in > ( gmem_maxp_32_fmap , s_input );
	stream_array < float , dense_num_out > ( gmem_dense_out_grads , s_out_error );

	dataflow_region ( s_input , s_out_error , activations , weight_grads , bias_grads );

	save_weight_grads: for ( unsigned int i = 0 ; i < dense_num_in ; i++ )
		for ( unsigned int k = 0 ; k < dense_num_kernels ; k++ )
			gmem_weight_grads[i][k] = weight_grads[i][k];

	save_bias_grads: for ( unsigned int k = 0 ; k < dense_num_kernels ; k++ )
		gmem_bias_grads[k] = bias_grads[k];
}
