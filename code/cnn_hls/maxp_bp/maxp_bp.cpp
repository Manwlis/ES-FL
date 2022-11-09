#include "maxp_bp.hpp"


template <
	unsigned int     in_height , unsigned int     in_width , unsigned int   in_channels ,
	unsigned int filter_height , unsigned int filter_width , unsigned int filter_stride ,
	unsigned int partition_factor_x >
void maxp_error_propagation (
	hls::stream< float >& out_error_stream ,
	hls::stream< window < bool , filter_height , filter_width > >& activations_stream ,
	hls::stream< float >& in_error_stream )
{
	// store two lines before sending them. Size of input
	float line_buffers[filter_height][in_width][in_channels];

#pragma HLS ARRAY_PARTITION variable=line_buffers dim=1 type=complete
#pragma HLS ARRAY_PARTITION variable=line_buffers dim=2 type=cyclic factor=partition_factor_x

	float kernel_error;
	window < bool , filter_height , filter_width > kernel_activations;

	// input_error dimension loops
	in_y: for ( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
			in_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ ) // input_channels == output_channels
			{
				// filter dims = input dims % stride
				unsigned int filter_y = in_y % filter_stride;
				unsigned int filter_x = in_x % filter_stride;
				// read streams. They have output dimensions. Output dims = input_dims / stride
				if ( filter_y == 0 && filter_x == 0 )
				{
					kernel_error = out_error_stream.read();
					kernel_activations = activations_stream.read();
				}

				update_buf: for ( unsigned int y = 0 ; y < filter_height ; y++ )
					for ( unsigned int x = 0 ; x < filter_width ; x++ )
						if ( filter_y == 0 && filter_x == 0 )
						{
							if( kernel_activations.elements[y][x] )
								line_buffers[filter_y + y][in_x + x][channel] = kernel_error;
							else
								line_buffers[filter_y + y][in_x + x][channel] = 0.f;
						}

				in_error_stream.write( line_buffers[filter_y][in_x][channel] );
			}
}


void dataflow_region (
	float maxp_out_error[maxp2d_32_num_out] ,
	hls::stream< window < bool , maxp2d_32_filter_height , maxp2d_32_filter_width > , maxp2d_32_num_out >& activations_stream ,
	float maxp_in_error[maxp2d_32_num_in] )
{
#pragma HLS DATAFLOW

	hls::stream< float , 2 > out_error_stream;
	hls::stream< float , 2 > in_error_stream;

	array_to_stream < float , maxp2d_32_num_out > ( maxp_out_error , out_error_stream );

	maxp_error_propagation <
		maxp2d_32_in_height , maxp2d_32_in_width , maxp2d_32_in_channels ,
		maxp2d_32_filter_height , maxp2d_32_filter_width ,maxp2d_32_filter_stride , 4 >
		( out_error_stream , activations_stream , in_error_stream );

	stream_to_array < float , maxp2d_32_num_in > ( in_error_stream , maxp_in_error );
}


void accel (
	float maxp_out_error[maxp2d_32_num_out] ,
	bool maxp_activations[maxp2d_32_num_out][maxp2d_32_filter_height][maxp2d_32_filter_width] ,
	float maxp_in_error[maxp2d_32_num_in] )
{
	hls::stream< window < bool , maxp2d_32_filter_height , maxp2d_32_filter_width > , maxp2d_32_num_out > activations_stream;

	array_to_stream < window < bool , maxp2d_32_filter_height , maxp2d_32_filter_width > , maxp2d_32_num_out > (
		reinterpret_cast< window < bool , maxp2d_32_filter_height , maxp2d_32_filter_width >* >(&maxp_activations[0]) , activations_stream );

	dataflow_region( maxp_out_error , activations_stream , maxp_in_error );
}
