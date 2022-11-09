#include "softmax_cg.hpp"


template < unsigned int num_kernels >
void sparce_categorical_cross_entropy (
	hls::stream < float >& softmax_f_map_stream , unsigned int label ,
	hls::stream < float >& softmax_output_error_stream )
{
	output_error: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		float kernel_prediction = softmax_f_map_stream.read();
		float temp_output_error = - float( label == kernel ) + kernel_prediction ; // -(yi - ai)
		softmax_output_error_stream.write( temp_output_error );
	}
}


template < unsigned int array_size >
void stream_array ( float array[array_size] , hls::stream < float >& stream )
{
	stream_array: for ( unsigned int i = 0 ; i < array_size ; i++ )
		stream.write( array[i] );
}


template < unsigned int array_size_1 , unsigned int array_size_2 >
void stream_array_wrapper (
	float array_1[array_size_1] , hls::stream < float >& stream_1 ,
	float array_2[array_size_2] , hls::stream < float >& stream_2 )
{
	stream_array < array_size_1 > ( array_1 , stream_1 );
	stream_array < array_size_2 > ( array_2 , stream_2 );
}


template < unsigned int num_inputs , unsigned int num_kernels >
void softmax_regression (
	hls::stream < float >& dense_f_map_stream ,
	hls::stream < float >& softmax_output_error_stream ,
	hls::stream < float >& weight_gradients_stream ,
	hls::stream < float >& bias_gradients_stream )
{
	float input;
	float output_error[num_kernels];
#pragma HLS ARRAY_PARTITION variable=output_error type=complete

	input: for ( unsigned int i = 0 ; i < num_inputs ; i++ )
		kernel: for ( unsigned int k = 0 ; k < num_kernels ; k++ )
		{
			if ( k == 0 )
				input = dense_f_map_stream.read();

			if ( i == 0 )
				output_error[k] = softmax_output_error_stream.read();

			float weight_gradient = output_error[k] * input;
			float bias_gradient = output_error[k];

			weight_gradients_stream.write( weight_gradient );

			if ( i == 0 )
				bias_gradients_stream.write( bias_gradient );
		}
}


void dataflow_region (
	float gmem_dense_feature_map[softmax_num_in] ,
	float gmem_softmax_feature_map[softmax_num_kernels] ,
	unsigned int label ,
	hls::stream < float >& weight_gradients_stream ,
	hls::stream < float >& bias_gradients_stream )
{
#pragma HLS DATAFLOW
	hls::stream < float , softmax_num_in > dense_f_map_stream;
	hls::stream < float , 2 > softmax_f_map_stream;
	stream_array_wrapper < softmax_num_in , softmax_num_kernels > (
		gmem_dense_feature_map , dense_f_map_stream , gmem_softmax_feature_map , softmax_f_map_stream );

	hls::stream < float , 2 > softmax_output_error_stream;
	sparce_categorical_cross_entropy < softmax_num_kernels > ( softmax_f_map_stream , label , softmax_output_error_stream );

	softmax_regression < softmax_num_in , softmax_num_kernels > (
		dense_f_map_stream , softmax_output_error_stream , weight_gradients_stream , bias_gradients_stream );
}

void accel (
	float gmem_dense_feature_map[softmax_num_in] ,
	float gmem_softmax_feature_map[softmax_num_kernels] ,
	unsigned int label ,
	float weight_gradients[softmax_num_in][softmax_num_kernels] ,
	float bias_gradients[softmax_num_kernels] )
{
	hls::stream < float , softmax_num_in * softmax_num_kernels > weight_gradients_stream;
	hls::stream < float , softmax_num_kernels > bias_gradients_stream;

	dataflow_region ( gmem_dense_feature_map , gmem_softmax_feature_map , label , weight_gradients_stream , bias_gradients_stream );

	write_mem < float , softmax_num_in * softmax_num_kernels > ( weight_gradients_stream , reinterpret_cast<float*>(weight_gradients) );
	write_mem < float , softmax_num_kernels > ( bias_gradients_stream , bias_gradients );
}
