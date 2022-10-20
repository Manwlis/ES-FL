#include "softmax_10_bp.hpp"


template < unsigned int num_kernels , unsigned int num_inputs >
void save_variables_locally (
	float gmem_softmax_weights[softmax_num_in][softmax_num_kernels] , float softmax_weights[softmax_num_in][softmax_num_kernels] ,
	float layer_output[softmax_num_out] , hls::stream < float >& softmax_f_map_stream )
{
	save_weights: for ( unsigned int input = 0 ; input < num_inputs ; input++ )
		memcpy( &softmax_weights[input][0] , &gmem_softmax_weights[input][0] , num_kernels * sizeof(float) );

	stream_input: for ( unsigned int i = 0 ; i < softmax_num_out ; i++ )
		softmax_f_map_stream.write( layer_output[i] );
}

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

template < unsigned int num_kernels , unsigned int num_inputs >
void softmax_error_propagation (
		hls::stream < float >& softmax_output_error_stream , float weights[num_inputs][num_kernels] ,
		hls::stream < float >& input_error )
{
	float output_error[num_kernels];
	store_output_error: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
#pragma HLS PIPELINE II=1
		output_error[kernel] = softmax_output_error_stream.read();

	input: for ( unsigned int input = 0 ; input < num_inputs ; input++ )
	{
#pragma HLS PIPELINE II=1
		float sum = 0.f;
		kernel: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
#pragma HLS UNROLL
			sum += weights[input][kernel] * output_error[kernel];

		input_error.write( sum );
	}
}

void accel (
	float gmem_softmax_weights[softmax_num_in][softmax_num_kernels] ,
	float layer_output[softmax_num_out] ,
	unsigned int label ,
	float input_error[softmax_num_in] )
{
#pragma HLS DATAFLOW
	float softmax_weights[softmax_num_in][softmax_num_kernels];
#pragma HLS STREAM variable=softmax_weights type=pipo depth=2
#pragma HLS ARRAY_RESHAPE variable=softmax_weights type=complete dim=2

	hls::stream < float , 2 > softmax_f_map_stream;
	hls::stream < float , 6 > softmax_output_error_stream;
	hls::stream < float , 2 > softmax_input_error_stream;

	save_variables_locally < softmax_num_kernels , softmax_num_in >
		( gmem_softmax_weights , softmax_weights , layer_output , softmax_f_map_stream );

	sparce_categorical_cross_entropy < softmax_num_kernels >
		( softmax_f_map_stream , label , softmax_output_error_stream );

	softmax_error_propagation < softmax_num_kernels , softmax_num_in >
		( softmax_output_error_stream , softmax_weights , softmax_input_error_stream );

	write_mem < float , softmax_num_in > ( softmax_input_error_stream , input_error );
}
