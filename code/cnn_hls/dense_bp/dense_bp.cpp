#include "dense_bp.hpp"

template < unsigned int num_kernels , unsigned int num_inputs >
void dense_error_propagation (
	float weights[dense_num_in][dense_num_kernels] ,
	hls::stream< bool >& activations_stream ,
	hls::stream< float >& out_error_stream ,
	hls::stream< float >& in_error_stream )
{
	float kernel_in_errors[num_kernels];
#pragma HLS ARRAY_PARTITION variable=kernel_in_errors type=complete

	kernel_errors: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		float kernel_out_error = out_error_stream.read();
		bool kernel_activation = activations_stream.read();
		kernel_in_errors[kernel] = kernel_activation ? kernel_out_error : 0.f;
	}

	in_error: for ( unsigned int input = 0 ; input < num_inputs ; input++ )
	{
#pragma HLS PIPELINE II=3
		float in_sum = 0.f;
		kernel: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
			in_sum += weights[input][kernel] * kernel_in_errors[kernel];
		
		in_error_stream.write( in_sum );
	}
}

void dataflow_region (
	float gmem_weights[dense_num_in][dense_num_kernels] ,
	hls::stream< bool >& activations_stream ,
	float dense_out_error[dense_num_kernels] ,
	float dense_in_error[dense_num_in] )
{
#pragma HLS DATAFLOW
	hls::stream< float , 2 > out_error_stream;
	array_to_stream < float , dense_num_kernels > ( dense_out_error , out_error_stream );

	hls::stream< float , 2 > in_error_stream;
	dense_error_propagation < dense_num_kernels , dense_num_in > ( gmem_weights , activations_stream , out_error_stream , in_error_stream );

	stream_to_array < float , dense_num_in > ( in_error_stream , dense_in_error );
}


void accel (
	float gmem_dense_weights[dense_num_in][dense_num_kernels] ,
	float dense_out_error[dense_num_kernels] ,
	bool activations[dense_num_kernels] ,
	float dense_in_error[dense_num_in] )
{
//#pragma HLS INTERFACE mode=m_axi port=gmem_dense_weights bundle=gmem_weights
	float dense_weights[dense_num_in][dense_num_kernels];
//#pragma HLS ARRAY_RESHAPE variable=dense_weights dim=2 type=block factor=3
	save_variables_locally < float , dense_num_kernels , dense_num_in > ( gmem_dense_weights , dense_weights );

	hls::stream< bool , dense_num_kernels > activations_stream;
	array_to_stream < bool , dense_num_kernels > ( activations , activations_stream );

	dataflow_region( dense_weights , activations_stream , dense_out_error , dense_in_error );
}
