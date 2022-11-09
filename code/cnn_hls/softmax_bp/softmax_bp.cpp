#include "softmax_bp.hpp"


template < unsigned int num_kernels , unsigned int num_inputs >
void save_variables_locally ( float gmem_softmax_weights[num_inputs][num_kernels] , float softmax_weights[num_inputs][num_kernels] )
{
	save_weights: for ( unsigned int input = 0 ; input < num_inputs ; input++ )
		memcpy( &softmax_weights[input][0] , &gmem_softmax_weights[input][0] , num_kernels * sizeof(float) );
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
	float kernel_in_errors[num_kernels];
#pragma HLS ARRAY_PARTITION variable=kernel_in_errors type=complete

	kernel_errors: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
		kernel_in_errors[kernel] = softmax_output_error_stream.read();

	input_error: for ( unsigned int input = 0 ; input < num_inputs ; input++ )
	{
		float input_sum = 0.f;
		kernel: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
			input_sum += weights[input][kernel] * kernel_in_errors[kernel];

		input_error.write( input_sum );
	}
}

template < unsigned int array_size >
void stream_array( float array[array_size] , hls::stream < float >& stream )
{
	stream_array: for ( unsigned int i = 0 ; i < array_size ; i++ )
		stream.write( array[i] );
}

void dataflow_region(
	float softmax_weights[softmax_num_in][softmax_num_kernels] ,
	float layer_output[softmax_num_out] ,
	unsigned int label ,
	float input_error[softmax_num_in] )
{
#pragma HLS STABLE variable=softmax_weights
#pragma HLS STABLE variable=layer_output

#pragma HLS DATAFLOW
	hls::stream < float , 2 > softmax_f_map_stream;
	stream_array < softmax_num_out > ( layer_output , softmax_f_map_stream );

	hls::stream < float , 2 > softmax_output_error_stream;
	hls::stream < float , 2 > softmax_input_error_stream;

	// loss function
	sparce_categorical_cross_entropy < softmax_num_kernels >
		( softmax_f_map_stream , label , softmax_output_error_stream );

	// propagate error
	softmax_error_propagation < softmax_num_kernels , softmax_num_in >
		( softmax_output_error_stream , softmax_weights , softmax_input_error_stream );

	write_mem < float , softmax_num_in > ( softmax_input_error_stream , input_error );
}

void accel (
	float gmem_softmax_weights[softmax_num_in][softmax_num_kernels] ,
	float layer_output[softmax_num_out] ,
	unsigned int label ,
	float input_error[softmax_num_in] )
{
	float softmax_weights[softmax_num_in][softmax_num_kernels];

	save_variables_locally < softmax_num_kernels , softmax_num_in > ( gmem_softmax_weights , softmax_weights );

	dataflow_region( softmax_weights , layer_output , label , input_error );
}
