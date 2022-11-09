/**
 * @file conv_layer.hpp
 * @author Emmanouil Petrakos
 * @brief Convolutional layer of a FPGA-based CNN implementation.
 *
 * @copyright None
 *
 * Developed with Vitis HLS 2022.1.
 */

#include "all_fwp_bp.hpp"

/***********************************************************************************/
/******************************** Data manipulation ********************************/
/***********************************************************************************/
/**
 * @brief Put input in windows specified for the convolutional layer.
 * @tparam typename, type of inputs
 * @tparam unsigned int, height of inputs
 * @tparam unsigned int, width of inputs
 * @tparam unsigned int, number of input channels
 * @tparam unsigned int, height of filters
 * @tparam unsigned int, width of filters
 * @tparam unsigned int, partition factor for width dimension of local line_buffers array
 * @param stream< float >, layer inputs
 * @param stream< window< float > >, layer inputs in windows
 */
template < typename in_type ,
	unsigned int in_height ,     unsigned int in_width ,     unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width , unsigned int partition_factor >
void conv_create_window_stream ( hls::stream< in_type >& s_input , hls::stream< window < in_type , filter_height , filter_width > >& s_in_window )
{
	in_type line_buffer[filter_height-1][in_width][in_channels];
#pragma HLS ARRAY_PARTITION variable=line_buffer dim=2 type=cyclic factor=partition_factor

	window < in_type , filter_height , filter_width > temp_windows[in_channels];

	const unsigned int ramp_up = in_width * ( ( filter_width - 1 ) / 2 ) + ( ( filter_height - 1 ) / 2 );
	const unsigned int num_pixels = in_width * in_height;

	unsigned int col_ptr = 0;
	pixel: for ( unsigned int pixel_counter = 0 ; pixel_counter < num_pixels + ramp_up ; pixel_counter++ )
	{
		channel: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
		{
			in_type new_pixel;

			if( pixel_counter < num_pixels )
				new_pixel = s_input.read();
			else
				new_pixel = 0.f;

			shift_windows: for( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			{
				shift_firsts_cols: for ( unsigned int filter_x = 0 ; filter_x < filter_width - 1 ; filter_x++ )
						temp_windows[channel].elements[filter_y][filter_x] = temp_windows[channel].elements[filter_y][filter_x+1];

				if ( filter_y < filter_height - 1 )
					temp_windows[channel].elements[filter_y][filter_width-1] = line_buffer[filter_y][col_ptr][channel];
				else
					temp_windows[channel].elements[filter_y][filter_width-1] = new_pixel;
			}
			shift_line_buf: for( unsigned int line = 0 ; line < int(filter_height) - 2 ; line++ )
				line_buffer[line][col_ptr][channel] = line_buffer[line+1][col_ptr][channel];

			line_buffer[filter_height-2][col_ptr][channel] = new_pixel;

			if ( pixel_counter >= ramp_up )
				s_in_window.write( temp_windows[channel] );
		}
		if( col_ptr == in_width - 1 )
			col_ptr = 0;
		else
			col_ptr++;
	}
}

/**
 * @brief "Same" padding on a window stream.
 * @tparam typename, type of inputs
 * @tparam unsigned int, height of inputs
 * @tparam unsigned int, width of inputs
 * @tparam unsigned int, number of input channels
 * @tparam unsigned int, height of filters
 * @tparam unsigned int, width of filters
 * @tparam unsigned int, number of filters
 * @param stream< window< float > >, layer inputs in windows
 * @param stream< window< float > >, padded layer inputs in windows
 */
template < typename in_type ,
	unsigned int in_height ,     unsigned int in_width ,     unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv_pad_windows (
	hls::stream < window < in_type , filter_height , filter_width > >& s_in_window ,
	hls::stream < window < in_type , filter_height , filter_width > >& s_in_padded_window )
{
	in_y: for( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
			in_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
			{
				window < in_type , filter_height , filter_width > temp_window = s_in_window.read();

				filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
					filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
					{
						int y_offseted = static_cast<int>( in_y + filter_y - filter_height / 2 );
						int x_offseted = static_cast<int>( in_x + filter_x - filter_width / 2 );
						bool illegal_pixel_pos = ( y_offseted < 0 ) || ( y_offseted >= int(in_height) ) || ( x_offseted < 0 ) || ( x_offseted >= int(in_width) );

						if ( illegal_pixel_pos )
							temp_window.elements[filter_y][filter_x] = 0.f;
					}
				s_in_padded_window.write( temp_window );
			}
}

/***********************************************************************************/
/******************************* Forward Propagation *******************************/
/***********************************************************************************/
/**
 * @brief Calculate the 2d matrix multiplication sums for each kernel of the layer with a single channel input.
 * @tparam typename, type of inputs
 * @tparam unsigned int, height of inputs
 * @tparam unsigned int, width of inputs
 * @tparam unsigned int, height of filters
 * @tparam unsigned int, width of filters
 * @tparam unsigned int, number of filters
 * @param stream< window< float > >, layer inputs in windows
 * @param float [num_inputs][num_kernels], layer weights
 * @param float [num_kernels], layer biases
 * @param stream< float >, kernel sums
 */
template < typename in_type ,
	unsigned int in_height ,     unsigned int in_width ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv_1c_sum (
	hls::stream < window < float , filter_height , filter_width > >& s_in_window ,
	float weights[filter_height][filter_width][num_filters] , float biases[num_filters] ,
	hls::stream < float >& s_kernel_sums )
{
	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
	{
#pragma HLS PIPELINE II=16

		window < in_type , filter_height , filter_width > temp_window;
		temp_window = s_in_window.read();

		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		{
			float temp_sum = biases[filter];

			filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
					temp_sum += temp_window.elements[filter_y][filter_x] * weights[filter_y][filter_x][filter];

			s_kernel_sums.write( temp_sum );
		}
	}
}

/**
 * @brief ReLU activation of the convolutional layer with one input channel.
 * @tparam typename, type of inputs
 * @tparam unsigned int, width of inputs
 * @tparam unsigned int, height of filters
 * @tparam unsigned int, width of filters
 * @tparam unsigned int, number of filters
 * @param stream< window< float > >, kernel sums
 * @param stream< float >, layer outputs
 * @param stream< float >, layer outputs
 */
template <
	unsigned int in_height ,    unsigned int in_width , unsigned int filter_height ,
	unsigned int filter_width , unsigned int num_filters >
void conv_1c_activate (
	hls::stream < float >& s_kernel_sums ,
	hls::stream < float >& s_output_1 , hls::stream < float >& s_output_2 )
{
	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		{
			float temp_sum = s_kernel_sums.read();

			float activation = temp_sum > 0.f;
			float temp_out = activation ? temp_sum : 0.f;
			s_output_1.write( temp_out );
			s_output_2.write( temp_out );
		}
}

/**
 * @brief Calculate the 2d matrix multiplication sums for each kernel of the layer with a channel of a multichannel input.
 * @tparam typename, type of inputs
 * @tparam unsigned int, height of inputs
 * @tparam unsigned int, width of inputs
 * @tparam unsigned int, height of filters
 * @tparam unsigned int, width of filters
 * @tparam unsigned int, number of filters
 * @param stream< window< float > >, layer inputs in windows
 * @param float [filter_height * filter_width * num_filters], channel weights
 * @param stream< float >, kernel sums
 */
template < typename in_type ,
	unsigned int in_height ,     unsigned int in_width ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv_mc_sum (
	hls::stream < window < float , filter_height , filter_width > >& s_in_window ,
	float weights[filter_height * filter_width * num_filters] ,
	hls::stream < float >& s_kernel_sums )
{
	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
	{
#pragma HLS PIPELINE II=32

		window < in_type , filter_height , filter_width > temp_window = s_in_window.read();

		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		{
			float temp_sum = 0;
			filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
					temp_sum += temp_window.elements[filter_y][filter_x]
							   * weights[filter_y * filter_width * num_filters + filter_x * num_filters + filter];

			s_kernel_sums.write( temp_sum );
		}
	}
}

/**
 * @brief Aggregate the per input channel kernel sums, and ReLU activate them.
 * @tparam unsigned int, height of inputs
 * @tparam unsigned int, width of inputs
 * @tparam unsigned int, number of input channels
 * @tparam unsigned int, number of filters
 * @param float [num_kernels], layer biases
 * @param stream< float >[in_channels], per input channel kernel sums
 * @param stream< float >, layer outputs
 * @param stream< float >, layer outputs
 * @param stream< float >, kernel sums
 */
template < unsigned int in_height , unsigned int in_width , unsigned int in_channels , unsigned int num_filters >
void conv_mc_aggregate_channels (
	float biases[num_filters] ,
	hls::stream < float > s_kernel_sums_per_channel[in_channels] ,
	hls::stream < float >& s_output_1 , hls::stream < float >& s_output_2 ,
	hls::stream < bool >& s_activations )
{
	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		{
			float temp_sum = biases[filter];

			in_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
				temp_sum += s_kernel_sums_per_channel[channel].read();

			bool activation = temp_sum > 0.f;
			float temp_out = activation ? temp_sum : 0.f;

			s_output_1.write( temp_out );
			s_output_2.write( temp_out );
			s_activations.write( activation );
		}
}

/***********************************************************************************/
/******************************** Back Propagation *********************************/
/***********************************************************************************/
/**
 * @brief Activates the error of the convolutional layer.
 * @tparam unsigned int, height of output
 * @tparam unsigned int, width of output
 * @tparam unsigned int, number of output channels
 * @param stream< float >, layer output errors
 * @param stream< float >, layer activations
 * @param stream< float >, layer activated output errors
 */
template < unsigned int out_height , unsigned int out_width , unsigned int out_channels >
void conv_bp_activate_error (
	hls::stream < float >& s_out_error ,
	hls::stream < bool >& s_activations ,
	hls::stream < float >& s_activated_out_error )
{
	outputs: for ( unsigned int kernel = 0 ; kernel < out_height * out_width * out_channels ; kernel++ )
	{
		float kernel_error = s_out_error.read();
		bool kernel_activation = s_activations.read();

		float activated_kernel_error = kernel_activation ? kernel_error : 0.f;

		s_activated_out_error.write( activated_kernel_error );
	}
}

/**
 * @brief Calculate the 2d matrix multiplication sums for each kernel of the layer with a channel of a multichannel output error.
 * @tparam unsigned int, number of input channels
 * @tparam unsigned int, height of outputs
 * @tparam unsigned int, width of outputs
 * @tparam unsigned int, number of filters/ output channels
 * @tparam unsigned int, height of filters
 * @tparam unsigned int, width of filters
 * @param stream< window< float > >, output error in windows
 * @param float [filter_height * filter_width * in_channels], filter weights
 * @param stream< float >, input error per filter
 */
template < unsigned int in_channels ,
	unsigned int out_height ,    unsigned int out_width , unsigned int out_channels ,
	unsigned int filter_height , unsigned int filter_width >
void conv_bp_mc_sum (
	hls::stream < window < float , filter_height , filter_width > >& s_out_error_window ,
	float weights[filter_height * filter_width * in_channels],
	hls::stream < float >& s_in_error_per_filter )
{
	outputs: for ( unsigned int out_counter = 0 ; out_counter < out_height * out_width ; out_counter++ )
	{
#pragma HLS PIPELINE II=32
		window < float , filter_height , filter_width > temp_error_window = s_out_error_window.read();

		in_channel: for ( unsigned int in_c = 0 ; in_c < in_channels ; in_c++ )
		{
			float temp_sum = 0;
			filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
					temp_sum += temp_error_window.elements[filter_y][filter_x] *
						weights[ ( filter_height - 1 - filter_y ) * filter_width * in_channels + ( filter_width - 1 - filter_x ) * in_channels + in_c];

			s_in_error_per_filter.write( temp_sum );
		}
	}
}

/**
 * @brief Aggregates the per filter input errors.
 * @tparam unsigned int, height of outputs
 * @tparam unsigned int, width of outputs
 * @tparam unsigned int, number of outputs channels/ filters
 * @tparam unsigned int, number of input channels
 * @param stream< float >[num_channels], per filter input errors
 * @param stream< float >, input errors
 */
template < unsigned int out_height , unsigned int out_width , unsigned int out_channels , unsigned int in_channels >
void conv_bp_aggregate ( hls::stream < float > s_in_error_per_filter[out_channels] , hls::stream < float >& s_in_error )
{
	inputs: for ( unsigned int out_counter = 0 ; out_counter < out_height * out_width ; out_counter++ )
		in_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
		{
			float temp_sum = 0;

			filter: for ( unsigned int filter = 0 ; filter < out_channels ; filter++ )
				temp_sum += s_in_error_per_filter[filter].read();

			s_in_error.write( temp_sum );
		}
}


/***********************************************************************************/
/****************************** Gradient Calculation *******************************/
/***********************************************************************************/

