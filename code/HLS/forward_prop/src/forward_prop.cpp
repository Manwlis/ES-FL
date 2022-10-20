#include "forward_prop.hpp"

void save_variables_locally (
	float gmem_conv2d_32_weights[conv2d_32_filter_height * conv2d_32_filter_width * conv2d_32_num_filters] ,
	float gmem_conv2d_32_biases[conv2d_32_num_filters] ,
	float gmem_conv2d_64_weights[conv2d_64_in_channels * conv2d_64_filter_height * conv2d_64_filter_width * conv2d_64_num_filters] ,
	float gmem_conv2d_64_biases[conv2d_64_num_filters] ,
	float gmem_dense_weights[dense_num_in * dense_num_kernels] ,
	float gmem_dense_biases[dense_num_kernels] ,
	float gmem_softmax_weights[softmax_num_in * softmax_num_kernels] ,
	float gmem_softmax_biases[softmax_num_kernels] ,

	float conv2d_32_weights[conv2d_32_filter_height * conv2d_32_filter_width * conv2d_32_num_filters] ,
	float conv2d_32_biases[conv2d_32_num_filters] ,
	float conv2d_64_weights[conv2d_64_in_channels][conv2d_64_filter_height * conv2d_64_filter_width * conv2d_64_num_filters] ,
	float conv2d_64_biases[conv2d_64_num_filters] ,
	float dense_weights[dense_num_in * dense_num_kernels] ,
	float dense_biases[dense_num_kernels] ,
	float softmax_weights[softmax_num_in * softmax_num_kernels] ,
	float softmax_biases[softmax_num_kernels] )
{
	for ( unsigned int i = 0 ; i < conv2d_32_filter_height * conv2d_32_filter_width * conv2d_32_num_filters ; i++ )
		conv2d_32_weights[i] = gmem_conv2d_32_weights[i];

	for ( unsigned int i = 0 ; i < conv2d_32_num_filters ; i++ )
		conv2d_32_biases[i] = gmem_conv2d_32_biases[i];

	for ( unsigned int channel = 0 ; channel < conv2d_64_in_channels ; channel++ )
		for ( unsigned int i = 0 ; i < conv2d_64_filter_height * conv2d_64_filter_width * conv2d_64_num_filters ; i++ )
			conv2d_64_weights[channel][i] = gmem_conv2d_64_weights[channel * conv2d_64_filter_height * conv2d_64_filter_width * conv2d_64_num_filters + i];

	for ( unsigned int i = 0 ; i < conv2d_64_num_filters ; i++ )
		conv2d_64_biases[i] = gmem_conv2d_64_biases[i];

	for ( unsigned int i = 0 ; i < dense_num_in * dense_num_kernels ; i++ )
		dense_weights[i] = gmem_dense_weights[i];

	for ( unsigned int i = 0 ; i < dense_num_kernels ; i++ )
		dense_biases[i] = gmem_dense_biases[i];

	for ( unsigned int i = 0 ; i < softmax_num_in * softmax_num_kernels ; i++ )
		softmax_weights[i] = gmem_softmax_weights[i];

	for ( unsigned int i = 0 ; i < softmax_num_kernels ; i++ )
		softmax_biases[i] = gmem_softmax_biases[i];
}


/***** Conv2d, 1 input channel *****/
template < typename in_type ,
	unsigned int in_height     , unsigned int in_width    ,
	unsigned int filter_height , unsigned int filter_width >
void create_window_stream_conv2d_1c (
	axis_float_stream& input_stream , // first layer gets input from axis stream
	hls::stream< window < in_type , filter_height , filter_width > >& window_stream )
{
	// line and window buffer
	in_type line_buffer[filter_height-1][in_width];
#pragma HLS ARRAY_PARTITION variable=line_buffer dim=2 complete // this can be removed if II=2

	window < in_type , filter_height , filter_width > temp_windows;

	unsigned int ramp_up = in_width * ( ( filter_width - 1 ) / 2 ) + ( ( filter_height - 1 ) / 2 );
	unsigned int num_pixels = in_width * in_height;

	unsigned int col_ptr = 0;
	pixel: for ( unsigned int pixel_counter = 0 ; pixel_counter < num_pixels + ramp_up ; pixel_counter++ )
	{
		in_type new_pixel;

		if( pixel_counter < num_pixels )
		{
			axis_float temp_input = input_stream.read();
			new_pixel = temp_input.data;
		}
		else
			new_pixel = 0.f;

		shift_windows: for( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
		{
			shift_firsts_cols: for ( unsigned int filter_x = 0 ; filter_x < filter_width - 1 ; filter_x++ )
					temp_windows.elements[filter_y][filter_x] = temp_windows.elements[filter_y][filter_x+1];

			if ( filter_y < filter_height - 1 )
				temp_windows.elements[filter_y][filter_width-1] = line_buffer[filter_y][col_ptr];
			else
				temp_windows.elements[filter_y][filter_width-1] = new_pixel;
		}
		shift_line_buf: for( unsigned int line = 0 ; line < int(filter_height) - 2 ; line++ )
			line_buffer[line][col_ptr] = line_buffer[line+1][col_ptr];

		line_buffer[filter_height-2][col_ptr] = new_pixel;

		if ( pixel_counter >= ramp_up )
			window_stream.write( temp_windows );

		if( col_ptr == in_width - 1 )
			col_ptr = 0;
		else
			col_ptr++;
	}
}

template < typename in_type ,
	unsigned int in_height     , unsigned int in_width     ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void pad_windows_1c (
		hls::stream < window < in_type , filter_height , filter_width > >& input_window_stream ,
		hls::stream < window < in_type , filter_height , filter_width > >& output_window_stream )
{
	in_y: for( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
		{
			window < in_type , filter_height , filter_width > temp_window = input_window_stream.read();

			filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				{
					int y_offseted = static_cast<int>( in_y + filter_y - filter_height / 2 );
					int x_offseted = static_cast<int>( in_x + filter_x - filter_width / 2 );
					bool illegal_pixel_pos = ( y_offseted < 0 ) || ( y_offseted >= int(in_height) ) || ( x_offseted < 0 ) || ( x_offseted >= int(in_width) );

					if ( illegal_pixel_pos )
						temp_window.elements[filter_y][filter_x] = 0.f;
				}
			output_window_stream.write( temp_window );
		}
}

template < typename in_type ,
	unsigned int in_height     , unsigned int in_width     ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv2d_sum_1c (
	hls::stream < window < float , filter_height , filter_width > >& input_window_stream ,
	float weights[filter_height * filter_width * num_filters] ,
	float biases[num_filters] ,
	hls::stream < float >& kernel_sums )
{
	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
	{
#pragma HLS PIPELINE II=32

		float filter_sum_stream;

		window < in_type , filter_height , filter_width > temp_window;

		temp_window = input_window_stream.read();

		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		{
			float temp_sum = biases[filter];

			filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
					temp_sum += temp_window.elements[filter_y][filter_x]
								   * weights[filter_y * filter_width * num_filters + filter_x * num_filters + filter];

			kernel_sums.write( temp_sum );
		}
	}
}

template < unsigned int in_height , unsigned int in_width ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv2d_activate_1c (
	hls::stream < float >& kernel_sums ,
	hls::stream < float >& feature_map_stream , // outputs
	hls::stream < bool >& activations_stream ,
	hls::stream < float >& f_map_out )
{
	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		{
			float temp_sum = kernel_sums.read();

			float activation = temp_sum > 0.f;
			float temp_out = activation ? temp_sum : 0.f;
			feature_map_stream.write( temp_out );
			activations_stream.write( activation );

			f_map_out.write( temp_out );
		}
}


/***** Conv2d, multiple input channels *****/
template < typename in_type ,
	unsigned int in_height     , unsigned int in_width    , unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width >
void create_window_stream_conv2d_mc (
	hls::stream< in_type >& input_stream ,
	hls::stream< window < in_type , conv2d_64_filter_height , conv2d_64_filter_width > >& window_stream )
{
	in_type line_buffer[filter_height-1][in_width][in_channels];
#pragma HLS ARRAY_PARTITION variable=line_buffer dim=2 complete // this can be removed if II=2

	window < in_type , filter_height , filter_width > temp_windows[in_channels];

	unsigned int ramp_up = in_width * ( ( filter_width - 1 ) / 2 ) + ( ( filter_height - 1 ) / 2 );
	unsigned int num_pixels = in_width * in_height;

	unsigned int col_ptr = 0;
	pixel: for ( unsigned int pixel_counter = 0 ; pixel_counter < num_pixels + ramp_up ; pixel_counter++ )
	{
		channel: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
		{
			in_type new_pixel;

			if( pixel_counter < num_pixels )
				new_pixel = input_stream.read();
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
				window_stream.write( temp_windows[channel] );
		}
		if( col_ptr == in_width - 1 )
			col_ptr = 0;
		else
			col_ptr++;
	}
}

template < typename in_type ,
	unsigned int in_height     , unsigned int in_width     , unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void pad_windows_mc (
		hls::stream < window < in_type , filter_height , filter_width > >& input_window_stream ,
		hls::stream < window < in_type , filter_height , filter_width > > output_window_stream[in_channels] )
{
	in_y: for( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
			in_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
			{
				window < in_type , filter_height , filter_width > temp_window = input_window_stream.read();

				filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
					filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
					{
						int y_offseted = static_cast<int>( in_y + filter_y - filter_height / 2 );
						int x_offseted = static_cast<int>( in_x + filter_x - filter_width / 2 );
						bool illegal_pixel_pos = ( y_offseted < 0 ) || ( y_offseted >= int(in_height) ) || ( x_offseted < 0 ) || ( x_offseted >= int(in_width) );

						if ( illegal_pixel_pos )
							temp_window.elements[filter_y][filter_x] = 0.f;

					}
				output_window_stream[channel].write( temp_window );
			}
}

template < typename in_type ,
	unsigned int in_height     , unsigned int in_width     ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv2d_sum_mc (
	hls::stream < window < float , filter_height , filter_width > >& input_window_stream ,
	float weights[filter_height * filter_width * num_filters] ,
	hls::stream < float >& in_channel_map_stream ) // outputs
{
	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
	{
#pragma HLS PIPELINE II=64

		window < in_type , filter_height , filter_width > temp_window;
		temp_window = input_window_stream.read();

		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		{
			float temp_sum = 0;
			filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
						temp_sum += temp_window.elements[filter_y][filter_x] *
									weights[filter_y * filter_width * num_filters + filter_x * num_filters + filter];

			in_channel_map_stream.write( temp_sum );
		}
	}
}

template < typename in_type ,
	unsigned int in_height     , unsigned int in_width     , unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv2d_sum_mc_wrapper (
	hls::stream < window < float , filter_height , filter_width > > input_window_stream[in_channels] ,
	float weights[in_channels * filter_height * filter_width * num_filters] ,
	hls::stream < float > in_channel_map_stream[in_channels] )
{
#pragma HLS DATAFLOW

	for ( unsigned int in_channel = 0 ; in_channel < in_channels ; in_channel++ )
	{
#pragma HLS UNROLL skip_exit_check
		conv2d_sum_mc < in_type , in_height , in_width , filter_height , filter_width , num_filters >
			( input_window_stream[in_channel] ,
			&weights[in_channel * filter_height * filter_width * num_filters] ,
			in_channel_map_stream[in_channel] );
	}
}

template < 	unsigned int in_height , unsigned int in_width , unsigned int in_channels , unsigned int num_filters >
void conv2d_aggregate_channels (
	float biases[conv2d_64_num_filters] ,
	hls::stream < float > in_channel_map_stream[in_channels] ,
	hls::stream < float >& feature_map_stream , // outputs
	hls::stream < bool >& activations_stream ,
	hls::stream < float >& f_map_out )
{
	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		{
			float temp_sum = biases[filter];

			in_c: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
				temp_sum += in_channel_map_stream[channel].read();

			bool activation = temp_sum > 0.f;
			float temp_out = activation ? temp_sum : 0.f;

			feature_map_stream.write( temp_out );
			activations_stream.write( activation );
			f_map_out.write( temp_out );
		}
}

/***** Maxpool2d *****/
template <
	unsigned int in_height     , unsigned int in_width    , unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width >
void create_window_stream_maxp2d (
	hls::stream < float >& input ,
	hls::stream < window < float , filter_height , filter_width > >& window_stream )
{
	unsigned int col_ptr = 0;
	unsigned int row_ptr = 0;

	for( unsigned int pixel = 0 ; pixel < in_width * in_height ; pixel++ )
	{
		for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
		{
			float line_buffer[filter_height][in_width][in_channels];
			window < float , filter_height , filter_width > temp_window;

			line_buffer[col_ptr][row_ptr][channel] = input.read();

			for ( uint filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				for ( uint filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				{
					int pos_y = static_cast<int>( col_ptr - 1 + filter_y );
					int pos_x = static_cast<int>( row_ptr - 1 + filter_x );

					if ( pos_y >= 0 && pos_x >= 0 )
						temp_window.elements[filter_y][filter_x] = line_buffer[pos_y][pos_x][channel];
				}
			if( col_ptr == filter_height - 1 && row_ptr % filter_width == 1 )
				window_stream.write( temp_window );
		}
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

template < unsigned int num_windows , unsigned int filter_height , unsigned int filter_width >
void maxp2d (
		hls::stream < window < float , filter_height , filter_width > >& window_stream ,
		hls::stream < float >& output_stream ,
		hls::stream < window < bool , filter_height , filter_width > >& activations_stream ,
		hls::stream < float >& f_map_out )
{
	for( unsigned int w = 0 ; w < num_windows ; w++ )
	{
	window < bool , filter_height , filter_width > activation;
#pragma HLS PIPELINE II=1
		window < float , filter_height , filter_width > temp_window = window_stream.read();

		float max = -std::numeric_limits<float>::infinity(); //TODO: this can be static or const. Test it in cosim

		for( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				if ( temp_window.elements[filter_y][filter_x] > max ) // check for max
					max = temp_window.elements[filter_y][filter_x];

		for( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				if ( temp_window.elements[filter_y][filter_x] == max )
					activation.elements[filter_y][filter_x] = true;
				else
					activation.elements[filter_y][filter_x] = false;

		output_stream.write( max );
		activations_stream.write( activation );
		f_map_out.write( max );
	}
}

/***** Dense *****/
template < unsigned int num_kernels , unsigned int num_inputs >
void dense (
	hls::stream < float >& input_stream ,
	float weights[num_inputs * num_kernels] , float biases[num_kernels] ,
	hls::stream < float >& feature_map_stream , hls::stream < bool >& activations_stream ,
	hls::stream < float >& f_map_out )
{
	// can save of the cycles of loops 1 & 3 if dataflow. Added complexity. loops 1 & 2 read from gmem, can't be done now.
	float kernel_sum[num_kernels];
#pragma HLS ARRAY_PARTITION variable=kernel_sum type=complete

	init_sums: for( unsigned int k = 0 ; k < num_kernels ; k++ )
		kernel_sum[k] = biases[k];

	inputs: for ( unsigned int i = 0 ; i < num_inputs ; i++ )
	{
#pragma HLS PIPELINE II=8 // axi_m max widen port = 512 bits. 128 kernels * 32 bit floats = 4096 bits. min II = 4096/512 = 8

		float temp_input = input_stream.read();

		kernels: for ( unsigned int k = 0 ; k < num_kernels ; k++ )
			kernel_sum[k] += temp_input * weights[i * num_kernels + k ];
	}

	activate: for ( unsigned int k = 0 ; k < num_kernels ; k++ )
	{
#pragma HLS PIPELINE
		bool activation = ( kernel_sum[k] > 0 );
		float temp_out = activation ? kernel_sum[k] : 0;

		feature_map_stream.write(temp_out);
		activations_stream.write(activation);
		f_map_out.write(temp_out);
	}
}

/***** Softmax *****/
template < unsigned int num_kernels , unsigned int num_inputs >
void softmax (
	hls::stream < float >& input_stream ,
	float weights[num_inputs * num_kernels] , float biases[num_kernels] ,
	hls::stream < float >& softmax_feature_map )
{
	float sum[num_kernels];
#pragma HLS ARRAY_PARTITION variable=sum type=complete

	for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
		sum[kernel] = biases[kernel];

	float softmax_max;

	calc_sums_and_max: for ( unsigned int i = 0 ; i < num_inputs ; i++ )
	{
#pragma HLS PIPELINE II=4
		float temp_input = input_stream.read();
		softmax_max = -std::numeric_limits<float>::infinity();

		for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
		{
			sum[kernel] += temp_input * weights[i * num_kernels + kernel];

			if ( sum[kernel] > softmax_max )
				softmax_max = sum[kernel];
		}
	}

	float softmax_sum = 0.f;
	calc_exp_sum: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
#pragma HLS PIPELINE II=4
		softmax_sum += std::exp( sum[kernel] - softmax_max );

	float constant = softmax_max + hls::log( softmax_sum );
	feature_map: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		float temp_out = std::exp( sum[kernel] - constant );
		softmax_feature_map.write( temp_out );
	}
}


void write_gmem(
	hls::stream < float >& conv2d_32_f_map_out ,
	hls::stream < float >& maxp2d_32_f_map_out ,
	hls::stream < float >& conv2d_64_f_map_out ,
	hls::stream < float >& maxp2d_64_f_map_out ,
	hls::stream < float >& dense_f_map_out ,
	hls::stream < float >& softmax_feature_map_stream ,

	float gmem_conv2d_32_feature_map[conv2d_32_out_height * conv2d_32_out_width * conv2d_32_out_channels] ,
	float gmem_maxp2d_32_feature_map[maxp2d_32_out_height * maxp2d_32_out_width * maxp2d_32_out_channels] ,
	float gmem_conv2d_64_feature_map[conv2d_64_out_height * conv2d_64_out_width * conv2d_64_out_channels] ,
	float gmem_maxp2d_64_feature_map[maxp2d_64_out_height * maxp2d_64_out_width * maxp2d_64_out_channels] ,
	float gmem_dense_feature_map[dense_num_out] ,
	float gmem_softmax_feature_map[softmax_num_out] ,

	hls::stream < bool >& conv2d_32_activations_stream ,
	hls::stream < window < bool , maxp2d_32_filter_height , maxp2d_32_filter_width > >& maxp2d_32_activations_window_stream ,
	hls::stream < bool >& conv2d_64_activations_stream ,
	hls::stream < window < bool , maxp2d_64_filter_height , maxp2d_64_filter_width > >& maxp2d_64_activations_window_stream ,
	hls::stream < bool >& dense_activations_stream )
{
	for ( unsigned int i = 0 ; i < conv2d_32_out_height * conv2d_32_out_width * conv2d_32_num_filters ; i++ )
		gmem_conv2d_32_feature_map[i] = conv2d_32_f_map_out.read();

	for ( unsigned int i = 0 ; i < maxp2d_32_num_windows ; i++ )
		gmem_maxp2d_32_feature_map[i] = maxp2d_32_f_map_out.read();

	for ( unsigned int i = 0 ; i < conv2d_64_out_height * conv2d_64_out_width * conv2d_64_num_filters ; i++ )
		gmem_conv2d_64_feature_map[i] = conv2d_64_f_map_out.read();

	for ( unsigned int i = 0 ; i < maxp2d_64_num_windows ; i++ )
		gmem_maxp2d_64_feature_map[i] = maxp2d_64_f_map_out.read();

	for ( unsigned int i = 0 ; i < dense_num_kernels ; i++ )
		gmem_dense_feature_map[i] = dense_f_map_out.read();

	for ( unsigned int i = 0 ; i < softmax_num_out ; i++ )
		gmem_softmax_feature_map[i] = softmax_feature_map_stream.read();


	for ( unsigned int i = 0 ; i < conv2d_32_out_height * conv2d_32_out_width * conv2d_32_num_filters ; i++ )
		conv2d_32_activations_stream.read();

	for ( unsigned int i = 0 ; i < maxp2d_32_num_windows ; i++ )
		maxp2d_32_activations_window_stream.read();

	for ( unsigned int i = 0 ; i < conv2d_64_out_height * conv2d_64_out_width * conv2d_64_num_filters ; i++ )
		conv2d_64_activations_stream.read();

	for ( unsigned int i = 0 ; i < maxp2d_64_num_windows ; i++ )
		maxp2d_64_activations_window_stream.read();

	for ( unsigned int i = 0 ; i < dense_num_kernels ; i++ )
		dense_activations_stream.read();
}

void accel (
	axis_float_stream& input_stream ,
	float gmem_conv2d_32_weights[conv2d_32_filter_height * conv2d_32_filter_width * conv2d_32_num_filters] ,
	float gmem_conv2d_32_biases[conv2d_32_num_filters] ,

	float gmem_conv2d_64_weights[conv2d_64_in_channels * conv2d_64_filter_height * conv2d_64_filter_width * conv2d_64_num_filters] ,
	float gmem_conv2d_64_biases[conv2d_64_num_filters] ,

	float gmem_dense_weights[dense_num_in * dense_num_kernels] ,
	float gmem_dense_biases[dense_num_kernels] ,

	float gmem_softmax_weights[softmax_num_in * softmax_num_kernels] ,
	float gmem_softmax_biases[softmax_num_kernels] ,
	// TODO: remove extra feature channels and stream. Including stuff in other files, function defintions, calls and arrays
	float gmem_conv2d_32_feature_map[conv2d_32_out_height * conv2d_32_out_width * conv2d_32_out_channels] ,
	float gmem_maxp2d_32_feature_map[maxp2d_32_out_height * maxp2d_32_out_width * maxp2d_32_out_channels] ,
	float gmem_conv2d_64_feature_map[conv2d_64_out_height * conv2d_64_out_width * conv2d_64_out_channels] ,
	float gmem_maxp2d_64_feature_map[maxp2d_64_out_height * maxp2d_64_out_width * maxp2d_64_out_channels] ,
	float gmem_dense_feature_map[dense_num_out] ,
	float gmem_softmax_feature_map[softmax_num_out] )
{
#pragma HLS DATAFLOW
	/***** Save variables locally. *****/
	float conv2d_32_weights[conv2d_32_filter_height * conv2d_32_filter_width * conv2d_32_num_filters];
	float conv2d_32_biases[conv2d_32_num_filters];

	float conv2d_64_weights[conv2d_64_in_channels][conv2d_64_filter_height * conv2d_64_filter_width * conv2d_64_num_filters];
#pragma HLS ARRAY_PARTITION variable=conv2d_64_weights type=complete dim=1
#pragma HLS STREAM variable=conv2d_64_weights type=shared
//#pragma HLS STABLE variable=conv2d_64_weights // if weights out of dataflow region, then stable
	float conv2d_64_biases[conv2d_64_num_filters];

	float dense_weights[dense_num_in * dense_num_kernels];
	float dense_biases[dense_num_kernels];

	float softmax_weights[softmax_num_in * softmax_num_kernels];
	float softmax_biases[softmax_num_kernels];

	save_variables_locally(
		gmem_conv2d_32_weights , gmem_conv2d_32_biases ,
		gmem_conv2d_64_weights , gmem_conv2d_64_biases ,
		gmem_dense_weights , gmem_dense_biases ,
		gmem_softmax_weights , gmem_softmax_biases ,
		conv2d_32_weights , conv2d_32_biases ,
		conv2d_64_weights , conv2d_64_biases ,
		dense_weights , dense_biases ,
		softmax_weights , softmax_biases );

	/* Streams between the layers */
	hls::stream < float , 3 > conv2d_32_feature_map_stream;
	hls::stream < bool , conv2d_32_out_height * conv2d_32_out_width * conv2d_32_num_filters > conv2d_32_activations_stream;

	hls::stream < float , 3 > maxp2d_32_feature_map_stream;
	hls::stream < window < bool , maxp2d_32_filter_height , maxp2d_32_filter_width > , maxp2d_32_num_windows > maxp2d_32_activations_window_stream;

	hls::stream < float , 3 > conv2d_64_feature_map_stream;
	hls::stream < bool , conv2d_64_out_height * conv2d_64_out_width * conv2d_64_num_filters > conv2d_64_activations_stream;

	hls::stream < float , 3 > maxp2d_64_feature_map_stream;
	hls::stream < window < bool , maxp2d_64_filter_height , maxp2d_64_filter_width > , maxp2d_64_num_windows > maxp2d_64_activations_window_stream;

	hls::stream < float , 3 > dense_feature_map_stream;
	hls::stream < bool , dense_num_kernels > dense_activations_stream;

	/* Streams to output */
	hls::stream < float , conv2d_32_out_height * conv2d_32_out_width * conv2d_32_num_filters > conv2d_32_f_map_out;
	hls::stream < float , maxp2d_32_num_windows > maxp2d_32_f_map_out;
	hls::stream < float , conv2d_64_out_height * conv2d_64_out_width * conv2d_64_num_filters > conv2d_64_f_map_out;
	hls::stream < float , maxp2d_64_num_windows > maxp2d_64_f_map_out;
	hls::stream < float , dense_num_kernels > dense_f_map_out;
	hls::stream < float , softmax_num_out > softmax_f_map_out;

	/***** Layer 0, 28x28x1 -> conv 32 filters of 3x3, padded, stride 1 -> 28x28x32 *****/
	// internal data streams
	hls::stream < window < float , conv2d_32_filter_height , conv2d_32_filter_width > , 3 > conv2d_32_window_stream;
	hls::stream < window < float , conv2d_32_filter_height , conv2d_32_filter_width > , 3 > conv2d_32_padded_window_stream;
	hls::stream < float , 3 > kernel_sums;

	// create windows
	create_window_stream_conv2d_1c < float ,
		conv2d_32_in_height ,     conv2d_32_in_width ,
		conv2d_32_filter_height , conv2d_32_filter_width >
		( input_stream , conv2d_32_window_stream );

	pad_windows_1c < float ,
		conv2d_32_in_height ,     conv2d_32_in_width ,
		conv2d_32_filter_height , conv2d_32_filter_width , conv2d_32_num_filters >
		( conv2d_32_window_stream , conv2d_32_padded_window_stream );

	// full convolution
	conv2d_sum_1c < float ,
		conv2d_32_in_height ,     conv2d_32_in_width ,
		conv2d_32_filter_height , conv2d_32_filter_width , conv2d_32_num_filters >
		( conv2d_32_padded_window_stream , conv2d_32_weights , conv2d_32_biases , kernel_sums );

	conv2d_activate_1c < conv2d_32_in_height , conv2d_32_in_width ,
		conv2d_32_filter_height , conv2d_32_filter_width , conv2d_32_num_filters >
		( kernel_sums , conv2d_32_feature_map_stream , conv2d_32_activations_stream , conv2d_32_f_map_out );

	/***** layer 1, 28x28x32 -> maxpool 2x2, stride 2,2 -> 14x14x32 *****/
	// internal data streams
	hls::stream < window < float , maxp2d_32_filter_height , maxp2d_32_filter_width > , 3 > maxp2d_32_window_stream;

	// create windows
	create_window_stream_maxp2d <
		maxp2d_32_in_height ,     maxp2d_32_in_width ,     maxp2d_32_in_channels ,
		maxp2d_32_filter_height , maxp2d_32_filter_width >
		( conv2d_32_feature_map_stream , maxp2d_32_window_stream );

	// maxpool
	maxp2d < maxp2d_32_num_windows , maxp2d_32_filter_height , maxp2d_32_filter_width >
		( maxp2d_32_window_stream , maxp2d_32_feature_map_stream , maxp2d_32_activations_window_stream , maxp2d_32_f_map_out );

	/***** layer 2, 28x28x32 -> conv 64 filters of 3x3, padded, stride 1 -> 28x28x64 *****/
	// internal data streams
	hls::stream < window < float , conv2d_64_filter_height , conv2d_64_filter_width > , 3 > conv2d_64_window_stream;
	hls::stream < window < float , conv2d_64_filter_height , conv2d_64_filter_width > , 3 > conv2d_64_padded_window_stream[conv2d_64_in_channels];
	hls::stream < float , 3 > in_channel_map_stream[conv2d_64_in_channels];

	// create windows
	create_window_stream_conv2d_mc < float ,
		conv2d_64_in_height ,     conv2d_64_in_width , conv2d_64_in_channels ,
		conv2d_64_filter_height , conv2d_64_filter_width >
		( maxp2d_32_feature_map_stream , conv2d_64_window_stream );

	pad_windows_mc < float ,
		conv2d_64_in_height ,     conv2d_64_in_width ,     conv2d_64_in_channels ,
		conv2d_64_filter_height , conv2d_64_filter_width , conv2d_64_num_filters >
		( conv2d_64_window_stream , conv2d_64_padded_window_stream );

//	conv2d_sum_mc_wrapper< float ,
//		conv2d_64_in_height ,     conv2d_64_in_width ,     conv2d_64_in_channels ,
//		conv2d_64_filter_height , conv2d_64_filter_width , conv2d_64_num_filters >
//		( conv2d_64_padded_window_stream , conv2d_64_weights , in_channel_map_stream );


	for ( unsigned int in_channel = 0 ; in_channel < conv2d_64_in_channels ; in_channel++ )
	{
#pragma HLS UNROLL skip_exit_check
		conv2d_sum_mc < float ,
			conv2d_64_in_height , conv2d_64_in_width ,
			conv2d_64_filter_height , conv2d_64_filter_width , conv2d_64_num_filters >
			( conv2d_64_padded_window_stream[in_channel] ,
			&conv2d_64_weights[in_channel][0] ,
			in_channel_map_stream[in_channel] );
	}

	conv2d_aggregate_channels < conv2d_64_in_height , conv2d_64_in_width , conv2d_64_in_channels , conv2d_64_num_filters >
		( conv2d_64_biases , in_channel_map_stream , conv2d_64_feature_map_stream , conv2d_64_activations_stream , conv2d_64_f_map_out );

	/***** layer 3, 14x14x64 -> maxpool 2x2, stride 2,2 -> 7x7x64 *****/
	// internal data streams
	hls::stream < window < float , maxp2d_64_filter_height , maxp2d_64_filter_width > , 3 > maxp2d_64_window_stream;

	// create windows
	create_window_stream_maxp2d <
		maxp2d_64_in_height ,     maxp2d_64_in_width ,     maxp2d_64_in_channels ,
		maxp2d_64_filter_height , maxp2d_64_filter_width >
		( conv2d_64_feature_map_stream , maxp2d_64_window_stream );

	// maxpool
	maxp2d < maxp2d_64_num_windows , maxp2d_64_filter_height , maxp2d_64_filter_width >
		( maxp2d_64_window_stream , maxp2d_64_feature_map_stream , maxp2d_64_activations_window_stream , maxp2d_64_f_map_out );

	/***** layer 4, 7x7x64 = 3136 -> fully connected 128 -> 128 *****/
	dense < dense_num_kernels , dense_num_in >
		( maxp2d_64_feature_map_stream , dense_weights , dense_biases , dense_feature_map_stream , dense_activations_stream , dense_f_map_out );

	/***** layer 5, 128 -> fully connected softmax 10 -> 10 normalized *****/
	softmax < softmax_num_kernels , softmax_num_in >
		( dense_feature_map_stream , softmax_weights , softmax_biases , softmax_f_map_out );


	write_gmem(
		conv2d_32_f_map_out ,
		maxp2d_32_f_map_out ,
		conv2d_64_f_map_out ,
		maxp2d_64_f_map_out ,
		dense_f_map_out ,
		softmax_f_map_out ,
		gmem_conv2d_32_feature_map ,
		gmem_maxp2d_32_feature_map ,
		gmem_conv2d_64_feature_map ,
		gmem_maxp2d_64_feature_map ,
		gmem_dense_feature_map ,
		gmem_softmax_feature_map ,
		conv2d_32_activations_stream ,
		maxp2d_32_activations_window_stream ,
		conv2d_64_activations_stream ,
		maxp2d_64_activations_window_stream ,
		dense_activations_stream );
}
