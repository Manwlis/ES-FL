#include "softmax_cg.hpp"


template < unsigned int num_kernels >
void sparce_categorical_cross_entropy (
	hls::stream < float >& s_output , unsigned int label ,
	hls::stream < float >& s_out_error )
{
	kernel_error: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		float kernel_prediction = s_output.read();
		float temp_kernel_error = - float( label == kernel ) + kernel_prediction ; // -(yi - ai)
		s_out_error.write( temp_kernel_error );
	}
}


template < unsigned int array_size >
void stream_array ( float array[array_size] , hls::stream < float >& stream )
{
	stream_array: for ( unsigned int i = 0 ; i < array_size ; i++ )
		stream.write( array[i] );
}


template < unsigned int array_size_1 , unsigned int array_size_2 >
void stream_array_wrapper ( float array_1[array_size_1] , hls::stream < float >& stream_1 , float array_2[array_size_2] , hls::stream < float >& stream_2 )
{
	stream_array < array_size_1 > ( array_1 , stream_1 );
	stream_array < array_size_2 > ( array_2 , stream_2 );
}


template < unsigned int num_inputs , unsigned int num_kernels >
void softmax_regression ( hls::stream < float >& s_input , hls::stream < float >& s_out_error ,
	float weight_grads[num_inputs][num_kernels] , float bias_grads[num_kernels] )
{
	float kernel_errors[num_kernels];
	kernel_errors_bias_grads: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		kernel_errors[kernel] = s_out_error.read();
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
	float gmem_dense_feature_map[softmax_num_in] , float gmem_softmax_feature_map[softmax_num_kernels] , unsigned int label ,
	float weight_gradients[softmax_num_in][softmax_num_kernels] , float bias_gradients[softmax_num_kernels] )
{
#pragma HLS DATAFLOW
	hls::stream < float , softmax_num_in > s_input;
	hls::stream < float , 2 > s_output;
	stream_array_wrapper < softmax_num_in , softmax_num_kernels > ( gmem_dense_feature_map , s_input , gmem_softmax_feature_map , s_output );

	hls::stream < float , 2 > s_out_error;
	sparce_categorical_cross_entropy < softmax_num_kernels > ( s_output , label , s_out_error );

	softmax_regression < softmax_num_in , softmax_num_kernels > ( s_input , s_out_error , weight_gradients , bias_gradients );
}

void accel ( float gmem_dense_feature_map[softmax_num_in] , float gmem_softmax_feature_map[softmax_num_kernels] , unsigned int label ,
	float gmem_weight_gradients[softmax_num_in][softmax_num_kernels] , float gmem_bias_gradients[softmax_num_kernels] )
{
	float weight_gradients[softmax_num_in][softmax_num_kernels];
#pragma HLS ARRAY_PARTITION variable=weight_gradients type=complete dim=2
	float bias_gradients[softmax_num_kernels];

	init_weight_grads: for ( unsigned int i = 0 ; i < softmax_num_in ; i++ )
		for ( unsigned int k = 0 ; k < softmax_num_kernels ; k++ )
			weight_gradients[i][k] = 0.f;

	init_bias_grads: for ( unsigned int k = 0 ; k < softmax_num_kernels ; k++ )
		bias_gradients[k] = 0.f;

	dataflow_region ( gmem_dense_feature_map , gmem_softmax_feature_map , label , weight_gradients , bias_gradients );

	save_weight_grads: for ( unsigned int i = 0 ; i < softmax_num_in ; i++ )
		for ( unsigned int k = 0 ; k < softmax_num_kernels ; k++ )
			gmem_weight_gradients[i][k] = weight_gradients[i][k];

	save_bias_grads: for ( unsigned int k = 0 ; k < softmax_num_kernels ; k++ )
		gmem_bias_gradients[k] = bias_gradients[k];
}
