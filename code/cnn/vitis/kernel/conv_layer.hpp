/**
 * @file conv_layer.hpp
 * @author Emmanouil Petrakos
 * @brief Convolutional layer of a FPGA-based CNN implementation.
 *
 * @copyright None
 *
 * Developed with Vitis HLS 2022.1.
 */

#include "cnn_accelerator.hpp"

/***********************************************************************************/
/******************************** Data manipulation ********************************/
/***********************************************************************************/
/**
 * @brief Put input in windows specified for the convolutional layer.
 * @tparam typename, type of inputs
 * @tparam uint, batch size
 * @tparam uint, height of inputs
 * @tparam uint, width of inputs
 * @tparam uint, number of input channels
 * @tparam uint, height of filters
 * @tparam uint, width of filters
 * @param stream< float >, layer inputs
 * @param stream< window< float > >, layer inputs in windows
 */
template < typename _in_type , uint _batch_size , uint _in_h , uint _in_w , uint _in_c , uint _f_h , uint _f_w >
void conv_create_window_stream ( hls::stream< _in_type >& s_input , hls::stream< window < _in_type , _f_h , _f_w > >& s_in_window )
{
	_in_type line_buffer[_f_h-1][_in_w][_in_c];
	window < _in_type , _f_h , _f_w > temp_windows[_in_c];

	const uint ramp_up = _in_w * ( ( _f_w - 1 ) / 2 ) + ( ( _f_h - 1 ) / 2 );
	const uint num_pixels = _in_w * _in_h;

	uint col_ptr = 0;
	batch: for ( uint batch = 0 ; batch < _batch_size ; batch++ )
		pixel: for ( uint pixel_counter = 0 ; pixel_counter < num_pixels + ramp_up ; pixel_counter++ )
			in_c: for ( uint in_c = 0 ; in_c < _in_c ; in_c++ )
			{
#pragma HLS PIPELINE II=1 style=frp
				_in_type new_pixel;

				if( pixel_counter < num_pixels )
					new_pixel = s_input.read();
				else
					new_pixel = 0.f;

				shift_windows: for( uint filter_y = 0 ; filter_y < _f_h ; filter_y++ )
				{
					shift_firsts_cols: for ( uint filter_x = 0 ; filter_x < _f_w - 1 ; filter_x++ )
							temp_windows[in_c].elements[filter_y][filter_x] = temp_windows[in_c].elements[filter_y][filter_x+1];

					if ( filter_y < _f_h - 1 )
						temp_windows[in_c].elements[filter_y][_f_w-1] = line_buffer[filter_y][col_ptr][in_c];
					else
						temp_windows[in_c].elements[filter_y][_f_w-1] = new_pixel;
				}
				shift_line_buf: for( uint line = 0 ; line < int(_f_h) - 2 ; line++ )
					line_buffer[line][col_ptr][in_c] = line_buffer[line+1][col_ptr][in_c];

				line_buffer[_f_h-2][col_ptr][in_c] = new_pixel;

				if ( pixel_counter >= ramp_up )
					s_in_window.write( temp_windows[in_c] );

				if ( in_c == _in_c - 1 )
				{
					if( col_ptr == _in_w - 1 )
						col_ptr = 0;
					else
						col_ptr++;
				}
			}
}

/**
 * @brief "Same" padding on a window stream.
 * @tparam typename, type of inputs
 * @tparam uint, batch size
 * @tparam uint, height of inputs
 * @tparam uint, width of inputs
 * @tparam uint, number of input channels
 * @tparam uint, height of filters
 * @tparam uint, width of filters
 * @param stream< window< float > >, layer inputs in windows
 * @param stream< window< float > >, padded layer inputs in windows
 */
template < typename _in_type , uint _batch_size , uint _in_h , uint _in_w , uint _in_c , uint _f_h , uint _f_w >
void conv_pad_windows (
	hls::stream < window < _in_type , _f_h , _f_w > >& s_in_window ,
	hls::stream < window < _in_type , _f_h , _f_w > >& s_in_padded_window )
{
	batch: for ( uint batch = 0 ; batch < _batch_size ; batch++ )
		in_y: for( uint in_y = 0 ; in_y < _in_h ; in_y++ )
			in_x: for ( uint in_x = 0 ; in_x < _in_w ; in_x++ )
				in_c: for ( uint channel = 0 ; channel < _in_c ; channel++ )
				{
#pragma HLS PIPELINE II=1 style=frp
					window < _in_type , _f_h , _f_w > temp_window = s_in_window.read();

					filt_y: for ( uint filter_y = 0 ; filter_y < _f_h ; filter_y++ )
						filt_x: for ( uint filter_x = 0 ; filter_x < _f_w ; filter_x++ )
						{
							int y_offseted = static_cast<int>( in_y + filter_y - _f_h / 2 );
							int x_offseted = static_cast<int>( in_x + filter_x - _f_w / 2 );
							bool illegal_pixel_pos = ( y_offseted < 0 ) || ( y_offseted >= int(_in_h) ) || ( x_offseted < 0 ) || ( x_offseted >= int(_in_w) );

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
 * @brief 2d matrix multiplication for each filter of the layer with a single channel input.
 * @tparam typename, type of inputs
 * @tparam uint, batch size
 * @tparam uint, height of inputs
 * @tparam uint, width of inputs
 * @tparam uint, height of filters
 * @tparam uint, width of filters
 * @tparam uint, number of filters
 * @param stream< window< float > >, layer inputs in windows
 * @param float [input_height][input_width][num_kernels], layer weights
 * @param float [num_kernels], layer biases
 * @param stream< float >, kernel sums
 */
template < typename _in_type , uint _batch_size , uint _in_h , uint _in_w , uint _f_h , uint _f_w , uint _num_f >
void conv_fp_1c_sum ( hls::stream < window < float , _f_h , _f_w > >& s_in_wnd ,
	float weights[_f_h][_f_w][_num_f] , float biases[_num_f] , hls::stream < float >& s_kernel_sums )
{
	window < _in_type , _f_h , _f_w > temp_window;

	inputs: for ( uint input_counter = 0 ; input_counter < _batch_size * _in_h * _in_w ; input_counter++ )
		filter: for ( uint filter = 0 ; filter < _num_f ; filter++ )
		{
#pragma HLS PIPELINE II=1 style=frp

			if ( filter == 0 )
				temp_window  = s_in_wnd.read();

			float temp_sum = biases[filter];

			filt_y: for ( uint filter_y = 0 ; filter_y < _f_h ; filter_y++ )
				filt_x: for ( uint filter_x = 0 ; filter_x < _f_w ; filter_x++ )
					temp_sum += temp_window.elements[filter_y][filter_x] * weights[filter_y][filter_x][filter];

			s_kernel_sums.write( temp_sum );
		}
}

/**
 * @brief ReLU activation of the convolutional layer with one input channel.
 * @tparam uint, batch size
 * @tparam uint, height of inputs
 * @tparam uint, width of inputs
 * @tparam uint, height of filters
 * @tparam uint, width of filters
 * @tparam uint, number of filters
 * @param stream< window< float > >, kernel sums
 * @param stream< float >, layer outputs
 * @param stream< bool >, layer activations
 */
template < uint _batch_size , uint _in_h , uint _in_w , uint _f_h , uint _f_w , uint _num_f >
void conv_fp_1c_activate ( hls::stream < float >& s_kernel_sums , hls::stream < float >& s_output , hls::stream < bool >& s_activations )
{
	input: for( uint input = 0 ; input < _batch_size * _in_h *_in_w ; input++ )
		filter: for ( uint filter = 0 ; filter < _num_f ; filter++ )
		{
#pragma HLS PIPELINE II=1 style=frp
			float temp_sum = s_kernel_sums.read();

			bool activation = temp_sum > 0.f;
			float temp_out = activation ? temp_sum : 0.f;
			s_output.write( temp_out );
			s_activations.write( activation );
		}
}

/**
 * @brief 2d matrix multiplication for each kernel of the layer with a multi channel input.
 * Each filterXchannel has separate output.
 * @tparam typename, type of inputs
 * @tparam uint, batch size
 * @tparam uint, height of inputs
 * @tparam uint, width of inputs
 * @tparam uint, number of input channels
 * @tparam uint, height of filters
 * @tparam uint, width of filters
 * @tparam uint, number of filters
 * @param stream< window< float > >, layer inputs in windows
 * @param float [input_height][input_width][num_kernels], layer weights
 * @param float [num_kernels], layer biases
 * @param stream< window_1d< float > >, filterXchannel sums per filter.
 */
template < typename _in_type , uint _batch_size , uint _in_h , uint _in_w , uint _in_c , uint _f_h , uint _f_w , uint _num_f >
void conv_fp_mc_sum (
	hls::stream < window < _in_type , _f_h , _f_w > >& s_in_window ,
	float weights[_f_h][_f_w][_in_c][_num_f] ,
	hls::stream < window_1d< float , _num_f > >& s_kernel_sums_per_channel )
{
	input: for( uint input = 0 ; input < _batch_size * _in_h *_in_w ; input++ )
		in_c: for ( uint in_c = 0 ; in_c < _in_c ; in_c++ )
		{
#pragma HLS PIPELINE II=10 style=frp
			window < _in_type , _f_h , _f_w > temp_window = s_in_window.read();
			window_1d < float , _num_f > filter_sums;

			filter: for ( uint filter = 0 ; filter < _num_f ; filter++ )
			{
				filter_sums.elements[filter] = 0;
				filt_y: for ( uint filter_y = 0 ; filter_y < _f_h ; filter_y++ )
					filt_x: for ( uint filter_x = 0 ; filter_x < _f_w ; filter_x++ )
						filter_sums.elements[filter] += temp_window.elements[filter_y][filter_x] * weights[filter_y][filter_x][in_c][filter];
			}
			s_kernel_sums_per_channel.write( filter_sums );
		}
}

/**
 * @brief Aggregates filterXchannel sums to make filter sums.
 * @tparam uint , batch size
 * @tparam uint , height of inputs
 * @tparam uint , width of inputs
 * @tparam uint , number of input channels
 * @tparam uint , number of filters
 * @param stream< window< float > > , filterXchannel sums per filter
 * @param stream< window_1d< float > > , filter sums
 */
template < uint _batch_size , uint _in_h , uint _in_w , uint _in_c , uint _num_f >
void conv_fp_mc_aggregate_channels (
	hls::stream < window_1d< float , _num_f > >& s_kernel_sums_per_channel ,
	hls::stream < window_1d< float , _num_f > >& s_kernel_sums )
{
	window_1d< float , _num_f > kernel_sums;
	window_1d< float , _num_f > temp;

	input: for( uint input = 0 ; input < _batch_size * _in_h *_in_w ; input++ )
		in_c: for ( uint in_c = 0 ; in_c < _in_c ; in_c++ )
		{
#pragma HLS PIPELINE II=5 style=frp // achievable II=3 at 100 Mhz, II=4 at 150 Mhz
			temp = s_kernel_sums_per_channel.read();
			if ( in_c == 0 )
				kernel_sums = temp;
			else
				kernel_sums += temp;

			if ( in_c == _in_c - 1 )
				s_kernel_sums.write( kernel_sums );
		}
}

/**
 * @brief ReLU activation of the convolutional layer with multiple input channels.
 * @tparam uint, batch size
 * @tparam uint, height of inputs
 * @tparam uint, width of inputs
 * @tparam uint, number of filters
 * @param stream< window_1d< float > >, filter sums
 * @param stream< float >, layer outputs
 * @param stream< bool >, layer activations
 */
template < uint _batch_size , uint _in_h , uint _in_w , uint _num_f >
void conv_fp_mc_activate ( hls::stream < window_1d< float , _num_f > >& s_kernel_sums  ,
	float biases[_num_f] , hls::stream < float >& s_output , hls::stream < bool >& s_activations )
{
	window_1d< float , _num_f > kernel_sums;
#pragma HLS ARRAY_PARTITION variable=kernel_sums.elements type=complete

	input: for( uint input = 0 ; input < _batch_size * _in_h *_in_w ; input++ )
		filter: for ( uint filter = 0 ; filter < _num_f ; filter++ )
		{
#pragma HLS PIPELINE II=1 style=frp
			if ( filter == 0 )
				kernel_sums = s_kernel_sums.read();

			float kernel_sum_with_bias = kernel_sums.elements[filter] + biases[filter];

			bool activation = kernel_sum_with_bias > 0.f;
			float temp_out = activation ? kernel_sum_with_bias : 0.f;

			s_output.write( temp_out );
			s_activations.write( activation );
		}
}

/***********************************************************************************/
/******************************** Back Propagation *********************************/
/***********************************************************************************/
/**
 * @brief Activates the error of the convolutional layer.
 * @tparam uint, batch size
 * @tparam uint, height of output
 * @tparam uint, width of output
 * @tparam uint, number of output channels
 * @param stream< float >, layer output errors
 * @param stream< float >, layer activations
 * @param stream< float >, layer activated output errors
 */
template < uint _batch_size , uint _out_h , uint _out_w , uint _out_c >
void conv_bp_activate_error (
	hls::stream < float >& s_out_error , hls::stream < bool >& s_activations ,
	hls::stream < float >& s_activated_out_error )
{
	input: for ( uint input = 0 ; input < _batch_size * _out_h * _out_w * _out_c ; input++ )
	{
#pragma HLS PIPELINE II=1 style=frp
		bool kernel_activation = s_activations.read();
		float kernel_error = s_out_error.read();

		float activated_kernel_error = kernel_activation ? kernel_error : 0.f;

		s_activated_out_error.write( activated_kernel_error );
	}
}

/**
 * @brief 2d matrix multiplication for each input channel of the layer with a multi filter error output.
 * Each channelXfilter has separate output.
 * @tparam uint, batch size
 * @tparam uint, height of inputs
 * @tparam uint, width of inputs
 * @tparam uint, number of input channels
 * @tparam uint, height of filters
 * @tparam uint, width of filters
 * @tparam uint, number of filters
 * @param stream< window< float > >, layer output errors in windows
 * @param float [input_height][input_width][num_kernels], layer weights
 * @param stream< window_1d< float > >, error of each input channel per filter
 */
template < uint _batch_size , uint _in_h , uint _in_w , uint _in_c , uint _f_h , uint _f_w , uint _num_f >
void conv_bp_mc_sum (
	hls::stream < window < float , _f_h , _f_w > >& s_in_window ,
	float weights[_f_h][_f_w][_in_c][_num_f] ,
	hls::stream < window_1d< float , _in_c > >& s_channel_error_per_filter )
{
	window < float , _f_h , _f_w > temp_window;
	window_1d < float , _in_c > channel_errors;

	input: for( uint input = 0 ; input < _batch_size * _in_h *_in_w ; input++ )
		filter: for ( uint filter = 0 ; filter < _num_f ; filter++ )
		{
#pragma HLS PIPELINE II=5 style=frp
			temp_window = s_in_window.read();

			in_c: for ( uint in_c = 0 ; in_c < _in_c ; in_c++ )
			{
				channel_errors.elements[in_c] = 0;
				filt_y: for ( uint filter_y = 0 ; filter_y < _f_h ; filter_y++ )
					filt_x: for ( uint filter_x = 0 ; filter_x < _f_w ; filter_x++ )
						channel_errors.elements[in_c] += temp_window.elements[_f_h - 1 - filter_y][_f_w - 1 - filter_x] * weights[filter_y][filter_x][in_c][filter];
			}
			s_channel_error_per_filter.write( channel_errors );
		}
}

/**
 * @brief Aggregates channelXfilter sums to make channel error sums.
 * @tparam uint, batch size
 * @tparam uint, height of inputs
 * @tparam uint, width of inputs
 * @tparam uint, number of input channels
 * @tparam uint, number of filters
 * @param stream< window< float > >, channelXfilter sums per filter
 * @param stream< window_1d< float > >, channel error sums
 */
template < uint _batch_size , uint _in_h , uint _in_w , uint _in_c , uint _num_f >
void conv_bp_mc_aggregate_channels (
	hls::stream < window_1d< float , _in_c > >& s_channel_error_per_filter ,
	hls::stream < window_1d< float , _in_c > >& s_channel_errors )
{
	window_1d< float , _in_c > channel_sums;
	window_1d< float , _in_c > temp;

	input: for( uint input = 0 ; input < _batch_size * _in_h *_in_w ; input++ )
		filter: for ( uint filter = 0 ; filter < _num_f ; filter++ )
		{
#pragma HLS PIPELINE II=5 style=frp
			window_1d< float , _in_c > temp = s_channel_error_per_filter.read();
			if ( filter == 0 )
				channel_sums = temp;
			else
				channel_sums += temp;

			if ( filter == _num_f - 1 )
				s_channel_errors.write( channel_sums );
		}
}

/**
 * @brief De-aggregate channel errors to make the stream compatible with other layers.
 * @tparam uint, batch size
 * @tparam uint, height of inputs
 * @tparam uint, width of inputs
 * @tparam uint, number of input channels
 * @param stream< window_1d< float > >, channel error sums
 * @param stream< float >, layer input error
 */
template < uint _batch_size , uint _in_h , uint _in_w , uint _in_c >
void conv_bp_mc_stream ( hls::stream < window_1d< float , _in_c > >& s_channel_errors , hls::stream < float >& s_output )
{
	window_1d< float , _in_c > channel_sums;

	input: for( uint input = 0 ; input < _batch_size * _in_h *_in_w ; input++ )
		in_c: for ( uint in_c = 0 ; in_c < _in_c ; in_c++ )
		{
#pragma HLS PIPELINE II=1 style=frp
			if ( in_c == 0 )
				channel_sums = s_channel_errors.read();

			s_output.write( channel_sums.elements[in_c] );
		}
}

/***********************************************************************************/
/****************************** Gradient Calculation *******************************/
/***********************************************************************************/
/**
 * @brief Calculate gradients for the variables of a convolutional layer with one input channel.
 * @tparam typename, type of inputs
 * @tparam uint, batch size
 * @tparam uint, height of inputs
 * @tparam uint, width of inputs
 * @tparam uint, number of input channels
 * @tparam uint, height of filters
 * @tparam uint, width of filters
 * @tparam uint, number of filters
 * @param stream< window< float > >, layer inputs in windows
 * @param stream< float >, layer kernel errors
 * @param float [filter_height][filter_width][num_filters], layer weight gradients
 * @param float [num_kernels], layer bias gradients
 */
template < typename _in_type , uint _batch_size , uint _in_h , uint _in_w , uint _in_c , uint _f_h , uint _f_w , uint _num_f >
void conv_cg_sc (
	hls::stream < window < float , _f_h , _f_w > >& s_in_wnd ,	// in_height * in_width
	hls::stream < float >& s_kernel_error ,						// out_height * out_width * num_filters
	hls::stream < float >& weight_grads	, hls::stream < float >& bias_grads )
{
	window < _in_type , _f_h , _f_w >  in_wnd;

	// local arrays needed for gradients as they are accumulated over multiple cycles.
	float weight_grads_temp[_f_h][_f_w][_num_f];
	float bias_grads_temp[_num_f];

#pragma HLS ARRAY_PARTITION variable=weight_grads_temp dim=1 type=complete
#pragma HLS ARRAY_PARTITION variable=weight_grads_temp dim=2 type=complete

	init_weight_grads:
	for( uint filter_y = 0 ; filter_y < _f_h ; filter_y++ )
		for ( uint filter_x = 0 ; filter_x < _f_w ; filter_x++ )
			for ( uint filter = 0 ; filter < _num_f ; filter++ )
#pragma HLS PIPELINE II=1
				weight_grads_temp[filter_y][filter_x][filter] = 0;

	init_bias_grads:
	for ( uint filter = 0 ; filter < _num_f ; filter++ )
#pragma HLS PIPELINE II=1
		bias_grads_temp[filter] = 0;

	calculate_gradients:
	for( uint input = 0 ; input < _batch_size * _in_h *_in_w ; input++ )
		for ( uint filter = 0 ; filter < _num_f ; filter++ )
		{
#pragma HLS PIPELINE II=1 style=frp
			// read inputs
			float out_grad = s_kernel_error.read();
			if ( filter == 0 )
				in_wnd = s_in_wnd.read();

			// calc bias grads
			bias_grads_temp[filter] += out_grad;

			calc_weight_grads:
			for( uint filter_y = 0 ; filter_y < _f_h ; filter_y++ )
				for ( uint filter_x = 0 ; filter_x < _f_w ; filter_x++ )
					weight_grads_temp[filter_y][filter_x][filter] += in_wnd.elements[filter_y][filter_x] * out_grad;
		}

	save_weight_grads:
	for( uint filter_y = 0 ; filter_y < _f_h ; filter_y++ )
		for ( uint filter_x = 0 ; filter_x < _f_w ; filter_x++ )
			for ( uint filter = 0 ; filter < _num_f ; filter++ )
#pragma HLS PIPELINE II=1 style=frp
				weight_grads.write( weight_grads_temp[filter_y][filter_x][filter] );

	save_bias_grads:
	for ( uint filter = 0 ; filter < _num_f ; filter++ )
#pragma HLS PIPELINE II=1 style=frp
		bias_grads.write( bias_grads_temp[filter] );
}

/**
 * @brief Aggregates kernel error in per filter stream.
 * @tparam uint, batch size
 * @tparam uint, height of output
 * @tparam uint, width of output
 * @tparam uint, number of filters
 * @param stream< float >, layer kernel errors
 * @param stream< window< float > >, layer kernel errors per filter
 */
template < uint _batch_size , uint _out_h , uint _out_w , uint _out_c >
void conv_cg_mc_group_kernel_errors ( hls::stream < float >& s_kernel_error ,	// out_height * out_width * out_channels
	hls::stream < window_1d < float , _out_c > >& s_grouped_kernel_errors )		// out_height * out_width
{
	window_1d < float , _out_c > temp_group;

	input: for( uint input = 0 ; input < _batch_size * _out_h * _out_w ; input++ )
		out_c: for( uint out_c = 0 ; out_c < _out_c ; out_c++ )
		{
#pragma HLS PIPELINE II=1 style=frp
			temp_group.elements[out_c] = s_kernel_error.read();

			if ( out_c == _out_c - 1 )
				s_grouped_kernel_errors.write( temp_group );
		}
}

/**
 * @brief Calculate gradients for the variables of a convolutional layer with multiple input channels.
 * @tparam typename, type of inputs
 * @tparam uint, batch size
 * @tparam uint, height of inputs
 * @tparam uint, width of inputs
 * @tparam uint, number of input channels
 * @tparam uint, height of filters
 * @tparam uint, width of filters
 * @tparam uint, number of filters
 * @param stream< window< float > >, layer inputs in windows
 * @param stream< window< float > >, layer kernel errors per filter
 * @param float [filter_height][filter_width][num_in_channels][num_filters], layer weight gradients
 * @param float [num_filters], layer bias gradients
 */
template < typename _in_type , uint _batch_size , uint _in_h , uint _in_w , uint _in_c , uint _f_h , uint _f_w , uint _num_f >
void conv_cg_mc (
	hls::stream < window < _in_type , _f_h , _f_w > >& s_in_window ,		// in_height * in_width * num_inputs
	hls::stream < window_1d < float , _num_f > >& s_grouped_kernel_errors ,	// out_height * out_width
	hls::stream < float >& weight_grads	, hls::stream < float >& bias_grads )
{
	window_1d < float , _num_f > out_grads;
	window < _in_type , _f_h , _f_w >  in_window;

	float weight_grads_temp[_in_c][_f_h][_f_w][_num_f];
	float bias_grads_temp[_num_f];

#pragma HLS ARRAY_PARTITION variable=weight_grads_temp dim=4 type=complete // TODO: play with this
#pragma HLS ARRAY_PARTITION variable=bias_grads_temp dim=1 type=cyclic factor=2 // TODO: me II=10 isws dn xreiazetai

	init_weight_grads:
	for ( uint in_c = 0 ; in_c < _in_c ; in_c++ )
		for( uint filter_y = 0 ; filter_y < _f_h ; filter_y++ )
			for ( uint filter_x = 0 ; filter_x < _f_w ; filter_x++ )
				for ( uint filter = 0 ; filter < _num_f ; filter++ )
#pragma HLS PIPELINE II=1
					weight_grads_temp[in_c][filter_y][filter_x][filter] = 0;
	init_bias_grads:
	for( uint filter = 0 ; filter < _num_f ; filter++ )
#pragma HLS PIPELINE II=1
		bias_grads_temp[filter] = 0;

	calculate:
	for( uint input = 0 ; input < _batch_size * _in_h *_in_w ; input++ )
		for ( uint in_c = 0 ; in_c < _in_c ; in_c++ )
		{
#pragma HLS PIPELINE II=10 style=frp
			// get inputs
			in_window = s_in_window.read();
			if ( in_c == 0 )
				out_grads = s_grouped_kernel_errors.read();

			calc_bias_grads:
			for( uint filter = 0 ; filter < _num_f ; filter++ )
				if ( in_c == 0 )
					bias_grads_temp[filter] += out_grads.elements[filter];

			calc_weights_grads:
			for( uint filter_y = 0 ; filter_y < _f_h ; filter_y++ )
				for ( uint filter_x = 0 ; filter_x < _f_w ; filter_x++ )
					for ( uint filter = 0 ; filter < _num_f ; filter++ )
						weight_grads_temp[in_c][filter_y][filter_x][filter] += in_window.elements[filter_y][filter_x] * out_grads.elements[filter];
		}

	save_weight_grads:
	for( uint filter_y = 0 ; filter_y < _f_h ; filter_y++ )
		for ( uint filter_x = 0 ; filter_x < _f_w ; filter_x++ )
			for ( uint in_c = 0 ; in_c < _in_c ; in_c++ )
				for ( uint filter = 0 ; filter < _num_f ; filter++ )
#pragma HLS PIPELINE II=1 style=frp
					weight_grads.write( weight_grads_temp[in_c][filter_y][filter_x][filter] );

	save_bias_grads:
	for ( uint filter = 0 ; filter < _num_f ; filter++ )
#pragma HLS PIPELINE II=1 style=frp
		bias_grads.write( bias_grads_temp[filter] );
}
