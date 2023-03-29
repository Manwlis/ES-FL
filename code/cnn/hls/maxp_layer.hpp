/**
 * @file maxp_layer.hpp
 * @author Emmanouil Petrakos
 * @brief Max pool layer of a FPGA-based CNN implementation.
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
 * @brief Put input in windows specified for the max pooling layer.
 * @tparam uint, height of inputs
 * @tparam uint, width of inputs
 * @tparam uint, number of input channels
 * @tparam uint, height of filters
 * @tparam uint, width of filters
 * @param stream< float >, layer inputs
 * @param stream< window< float > >, layer inputs in windows
 */
template < uint _batch_size , uint _in_h , uint _in_w , uint _in_c , uint _f_h , uint _f_w >
void maxp_create_window_stream ( hls::stream < float >& s_input , hls::stream < window < float , _f_h , _f_w > >& s_in_window )
{
	batch: for ( uint batch = 0 ; batch < _batch_size ; batch++ )
	{
		uint col_ptr = 0; // TODO: these propably need to be in end with if pixel = _in_w * _in_h -1 && channel = _in_c-1. + initialization before batch
		uint row_ptr = 0;
		pixel: for( uint pixel = 0 ; pixel < _in_w * _in_h ; pixel++ )
			channel: for ( uint channel = 0 ; channel < _in_c ; channel++ )
			{
#pragma HLS PIPELINE II=1 style=frp
				float line_buffer[_f_h][_in_w][_in_c];
				window < float , _f_h , _f_w > temp_window;

				float temp_input = s_input.read();
				line_buffer[col_ptr][row_ptr][channel] = temp_input;

				get_window: for ( uint filter_y = 0 ; filter_y < _f_h ; filter_y++ )
					for ( uint filter_x = 0 ; filter_x < _f_w ; filter_x++ )
					{
						float buffer_out = line_buffer[static_cast<int>( col_ptr - 1 + filter_y )]
													   [static_cast<int>( row_ptr - 1 + filter_x )][channel];

						if( filter_y == 1 && filter_x == 1 )
							temp_window.elements[filter_y][filter_x] = temp_input; // bypass buffer
						else // if ( pos_y >= 0 && pos_x >= 0 )
							temp_window.elements[filter_y][filter_x] = buffer_out;
					}
				if( col_ptr == _f_h - 1 && row_ptr % _f_w == 1 ) // legal pos
					s_in_window.write( temp_window );

				if( channel == _in_c - 1 )
				{
					// keep track of where we insert in the line buffers
					row_ptr++;
					if (row_ptr == _in_w )
					{
						row_ptr = 0;

						if( col_ptr == 1 ) // ugly hack to increase clock speed, work only for current filter sizes
							col_ptr = 0;
						else
							col_ptr = 1;
					}
				}
			}
	}
}

/**
 * @brief Forward propagation of the max pooling layer.
 * @tparam uint, number of window inputs
 * @tparam uint, height of filters
 * @tparam uint, width of filters
 * @param stream< window< float > >, layer inputs in windows
 * @param stream< float >, layer outputs
 * @param stream< window< bool > >, layer activations in windows
 */
template < uint _batch_size , uint _num_wnd , uint _f_h , uint _f_w >
void maxp_fp ( hls::stream < window < float , _f_h , _f_w > >& s_in_window ,
	hls::stream < float >& s_output_fp , hls::stream < window < bool , _f_h , _f_w > >& s_activations )
{
	batch: for ( uint batch = 0 ; batch < _batch_size ; batch++ )
		for( uint w = 0 ; w < _num_wnd ; w++ )
		{
#pragma HLS PIPELINE II=1 style=frp
			window < float , _f_h , _f_w > temp_window = s_in_window.read();
			window < bool , _f_h , _f_w > kernel_activations;

			float kernel_max = -std::numeric_limits<float>::infinity();

			for( uint filter_y = 0 ; filter_y < _f_h ; filter_y++ )
				for ( uint filter_x = 0 ; filter_x < _f_w ; filter_x++ )
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
			s_output_fp.write( kernel_max );
			s_activations.write( kernel_activations );
		}
}

/***********************************************************************************/
/******************************** Back Propagation *********************************/
/***********************************************************************************/
template < uint _batch_size , uint _out_h , uint _out_w , uint _out_c , uint _f_h , uint _f_w >
void maxp_activate_error (
	hls::stream < float >& s_out_error , hls::stream < window < bool , _f_h , _f_w > >& s_activations ,
	hls::stream < window < float , _f_h , _f_w > >& s_activated_out_error )
{
	float kernel_error;
	window < bool , _f_h , _f_w > kernel_activations;
	window < float , _f_h , _f_w > temp_activated_error;

	batch: for ( uint batch = 0 ; batch < _batch_size ; batch++ )
		kernel: for ( uint k = 0 ; k < _out_h * _out_w * _out_c ; k++ )
		{
#pragma HLS PIPELINE II=1 style=frp
			kernel_error = s_out_error.read();
			kernel_activations = s_activations.read();

			for ( uint y = 0 ; y < _f_h ; y++ )
				for ( uint x = 0 ; x < _f_w ; x++ )
					temp_activated_error.elements[y][x] = kernel_activations.elements[y][x] ? kernel_error : 0.f;

			s_activated_out_error.write( temp_activated_error );
		}
}

/**
 * @brief Back propagation of the max pooling layer.
 * @tparam uint, batch size
 * @tparam uint, height of inputs
 * @tparam uint, width of inputs
 * @tparam uint, number of input channels
 * @tparam uint, height of filters
 * @tparam uint, width of filters
 * @tparam uint, stride of filters
 * @tparam uint, iteration interval
 * @param stream < window < float > >, layer's activated output error
 * @param stream < float >, layer's input error
 */
template < uint _batch_size , uint _in_h , uint _in_w , uint _in_c , uint _f_h , uint _f_w , uint _f_st , uint _II >
void maxp_bp (
	hls::stream < window < float , _f_h , _f_w > >& s_activated_out_error ,
	hls::stream < float >& s_in_error )
{
	float line_buffers[_f_h][_in_w][_in_c];
	window < float , _f_h , _f_w > temp_activated_error;

	batch: for ( uint batch = 0 ; batch < _batch_size ; batch++ )
		in_y: for ( uint in_y = 0 ; in_y < _in_h ; in_y++ )
			in_x: for ( uint in_x = 0 ; in_x < _in_w ; in_x++ )
				in_c: for ( uint channel = 0 ; channel < _in_c ; channel++ )
				{
#pragma HLS PIPELINE II=_II style=frp
					uint filter_y = in_y % _f_st;
					uint filter_x = in_x % _f_st;
					// read error stream. It has output dimensions. Output dims = input_dims / stride
					if ( filter_y == 0 && filter_x == 0 ) // for layer 1, hls can't predict this in first stage of pipeline and disables frp.
						temp_activated_error = s_activated_out_error.read();

					update_line_buffers:
					for ( uint y = 0 ; y < _f_h ; y++ )
						for ( uint x = 0 ; x < _f_w ; x++ )
							if ( filter_y == 0 && filter_x == 0 )
								line_buffers[filter_y + y][in_x + x][channel] = temp_activated_error.elements[y][x];

					s_in_error.write( line_buffers[filter_y][in_x][channel] );
				}
}
