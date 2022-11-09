/**
 * @file maxp_layer.hpp
 * @author Emmanouil Petrakos
 * @brief Max pool layer of a FPGA-based CNN implementation.
 *
 * @copyright None
 *
 * Developed with Vitis HLS 2022.1.
 */

#include "all_fwp_bp.hpp"

/***********************************************************************************/
/******************************* Forward Propagation *******************************/
/***********************************************************************************/
/**
 * @brief Put input in windows specified for the max pooling layer.
 * @tparam unsigned int, height of inputs
 * @tparam unsigned int, width of inputs
 * @tparam unsigned int, number of input channels
 * @tparam unsigned int, height of filters
 * @tparam unsigned int, width of filters
 * @param stream< float >, layer inputs
 * @param stream< window< float > >, layer inputs in windows
 */
template < unsigned int in_height , unsigned int in_width , unsigned int in_channels , unsigned int filter_height , unsigned int filter_width >
void maxp_create_window_stream (
	hls::stream < float >& s_input ,
	hls::stream < window < float , filter_height , filter_width > >& s_in_window )
{
	unsigned int col_ptr = 0;
	unsigned int row_ptr = 0;

	pixel: for( unsigned int pixel = 0 ; pixel < in_width * in_height ; pixel++ )
		channel: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
		{
			float line_buffer[filter_height][in_width][in_channels];
			window < float , filter_height , filter_width > temp_window;

			line_buffer[col_ptr][row_ptr][channel] = s_input.read();

			get_window: for ( uint filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				for ( uint filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				{
					int pos_y = static_cast<int>( col_ptr - 1 + filter_y );
					int pos_x = static_cast<int>( row_ptr - 1 + filter_x );

					if ( pos_y >= 0 && pos_x >= 0 )
						temp_window.elements[filter_y][filter_x] = line_buffer[pos_y][pos_x][channel];
				}
			if( col_ptr == filter_height - 1 && row_ptr % filter_width == 1 )
				s_in_window.write( temp_window );

			if( channel == in_channels - 1 )
			{
				// keep track of where we insert in the line buffers
				row_ptr++;
				if (row_ptr == in_width )
				{
					row_ptr = 0;
					col_ptr++;
					if( col_ptr == filter_height )
						col_ptr = 0;
				}
			}
		}
}

/**
 * @brief Forward propagation of the max pooling layer.
 * @tparam unsigned int, number of window inputs
 * @tparam unsigned int, height of filters
 * @tparam unsigned int, width of filters
 * @param stream< window< float > >, layer inputs in windows
 * @param stream< float >, layer outputs
 * @param stream< window< bool > >, layer activations in windows
 */
template < unsigned int num_windows , unsigned int filter_height , unsigned int filter_width >
void maxp (
	hls::stream < window < float , filter_height , filter_width > >& s_in_window ,
	hls::stream < float >& s_output ,
	hls::stream < window < bool , filter_height , filter_width > >& s_activations )
{
	for( unsigned int w = 0 ; w < num_windows ; w++ )
	{
#pragma HLS PIPELINE II=1
		window < float , filter_height , filter_width > temp_window = s_in_window.read();
		window < bool , filter_height , filter_width > kernel_activations;

		float kernel_max = -std::numeric_limits<float>::infinity();

		for( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				if ( temp_window.elements[filter_y][filter_x] > kernel_max ) // check for max
				{
					kernel_max = temp_window.elements[filter_y][filter_x];

					if ( filter_y == 0 && filter_x == 0 )
					{
						kernel_activations.elements[0][0] = true;
						kernel_activations.elements[0][1] = false;
						kernel_activations.elements[1][0] = false;
						kernel_activations.elements[1][1] = false;
					}
					else if ( filter_y == 0 && filter_x == 1 )
					{
						kernel_activations.elements[0][0] = false;
						kernel_activations.elements[0][1] = true;
						kernel_activations.elements[1][0] = false;
						kernel_activations.elements[1][1] = false;
					}
					if ( filter_y == 1 && filter_x == 0 )
					{
						kernel_activations.elements[0][0] = false;
						kernel_activations.elements[0][1] = false;
						kernel_activations.elements[1][0] = true;
						kernel_activations.elements[1][1] = false;
					}
					else if ( filter_y == 1 && filter_x == 1 )
					{
						kernel_activations.elements[0][0] = false;
						kernel_activations.elements[0][1] = false;
						kernel_activations.elements[1][0] = false;
						kernel_activations.elements[1][1] = true;
					}
				}
		s_output.write( kernel_max );
		s_activations.write( kernel_activations );
	}
}

/***********************************************************************************/
/******************************** Back Propagation *********************************/
/***********************************************************************************/
/**
 * @brief Back propagation of the max pooling layer.
 * @tparam unsigned int, height of inputs
 * @tparam unsigned int, width of inputs
 * @tparam unsigned int, number of input channels
 * @tparam unsigned int, height of filters
 * @tparam unsigned int, width of filters
 * @tparam unsigned int, stride of filters
 * @tparam unsigned int, partition factor for width dimension of local line_buffers array
 * @param stream< float >, layer output error
 * @param stream< window< bool > >, layer activations in windows
 * @param stream< float >, layer input error
 */
template <
	unsigned int in_height ,     unsigned int in_width ,     unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width , unsigned int filter_stride ,
	unsigned int partition_factor >
void maxp_error_propagation (
	hls::stream< float >& s_out_error ,
	hls::stream< window < bool , filter_height , filter_width > >& s_activations ,
	hls::stream< float >& s_in_error )
{
	float line_buffers[filter_height][in_width][in_channels];
#pragma HLS ARRAY_PARTITION variable=line_buffers dim=1 type=complete
#pragma HLS ARRAY_PARTITION variable=line_buffers dim=2 type=cyclic factor=partition_factor

	float kernel_error;
	window < bool , filter_height , filter_width > kernel_activations;

	in_y: for ( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
			in_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
			{
				unsigned int filter_y = in_y % filter_stride;
				unsigned int filter_x = in_x % filter_stride;
				// read streams. They have output dimensions. Output dims = input_dims / stride
				if ( filter_y == 0 && filter_x == 0 )
				{
					kernel_error = s_out_error.read();
					kernel_activations = s_activations.read();
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
				s_in_error.write( line_buffers[filter_y][in_x][channel] );
			}
}

/***********************************************************************************/
/****************************** Gradient Calculation *******************************/
/***********************************************************************************/
