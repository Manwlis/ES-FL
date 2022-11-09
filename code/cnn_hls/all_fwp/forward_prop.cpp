#include "forward_prop.hpp"
//#include "hls_print.h"

void save_variables_locally (
	float gmem_conv_16_weights[conv_16_filter_height][conv_16_filter_width][conv_16_num_filters] ,
	float gmem_conv_16_biases[conv_16_num_filters] ,
	float gmem_conv_32_weights[conv_32_in_channels][conv_32_filter_height][conv_32_filter_width][conv_32_num_filters] ,
	float gmem_conv_32_biases[conv_32_num_filters] ,
	float gmem_dense_biases[dense_num_kernels] ,
	float gmem_softmax_weights[softmax_num_in][softmax_num_kernels] ,
	float gmem_softmax_biases[softmax_num_kernels] ,

	float conv_16_weights[conv_16_filter_height][conv_16_filter_width][conv_16_num_filters] ,
	float conv_16_biases[conv_16_num_filters] ,
	float conv_32_weights[conv_32_in_channels][conv_32_filter_height * conv_32_filter_width * conv_32_num_filters] ,
	float conv_32_biases[conv_32_num_filters] ,
	float dense_biases[dense_num_kernels] ,
	float softmax_weights[softmax_num_in][softmax_num_kernels] ,
	float softmax_biases[softmax_num_kernels] )
{
	store_l0_weights:
	for ( unsigned int h = 0 ; h < conv_16_filter_height ; h++ )
		for ( unsigned int w = 0 ; w < conv_16_filter_width ; w++ )
			for ( unsigned int f = 0 ; f < conv_16_num_filters ; f++ )
				conv_16_weights[h][w][f] = gmem_conv_16_weights[h][w][f];

	store_l0_biases:
	for ( unsigned int i = 0 ; i < conv_16_num_filters ; i++ )
		conv_16_biases[i] = gmem_conv_16_biases[i];

	store_l2_weights:
	for ( unsigned int channel = 0 ; channel < conv_32_in_channels ; channel++ )
		for ( unsigned int h = 0 ; h < conv_32_filter_height ; h++ )
			for ( unsigned int w = 0 ; w < conv_32_filter_width ; w++ )
				for ( unsigned int f = 0 ; f < conv_32_num_filters ; f++ )
					conv_32_weights[channel][h * conv_32_filter_width * conv_32_num_filters + w * conv_32_num_filters + f ] =
							gmem_conv_32_weights[channel][h][w][f];

	store_l2_biases:
	for ( unsigned int i = 0 ; i < conv_32_num_filters ; i++ )
		conv_32_biases[i] = gmem_conv_32_biases[i];

	store_l4_biases:
	for ( unsigned int i = 0 ; i < dense_num_kernels ; i++ )
		dense_biases[i] = gmem_dense_biases[i];

	store_l5_weights:
	for ( unsigned int i = 0 ; i < softmax_num_in ; i++ )
		for ( unsigned int k = 0 ; k < softmax_num_kernels ; k++ )
		softmax_weights[i][k] = gmem_softmax_weights[i][k];

	store_l5_biases:
	for ( unsigned int i = 0 ; i < softmax_num_kernels ; i++ )
		softmax_biases[i] = gmem_softmax_biases[i];
}


/***** conv, 1 input channel *****/
template < typename in_type ,
	unsigned int in_height     , unsigned int in_width    ,
	unsigned int filter_height , unsigned int filter_width >
void conv_1c_create_window_stream (
	hls::stream < float >& input_stream , // first layer gets input from axis stream
	hls::stream< window < in_type , filter_height , filter_width > >& window_stream )
{
	// line and window buffer
	in_type line_buffer[filter_height-1][in_width];
#pragma HLS ARRAY_PARTITION variable=line_buffer dim=2 complete // this can be removed if II=2

	window < in_type , filter_height , filter_width > temp_windows;

	const unsigned int ramp_up = in_width * ( ( filter_width - 1 ) / 2 ) + ( ( filter_height - 1 ) / 2 );
	const unsigned int num_pixels = in_width * in_height;

	unsigned int col_ptr = 0;
	pixel: for ( unsigned int pixel_counter = 0 ; pixel_counter < num_pixels + ramp_up ; pixel_counter++ )
	{
		in_type new_pixel;

		if( pixel_counter < num_pixels )
			new_pixel = input_stream.read();
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
void conv_1c_pad_windows (
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
void conv_1c_sum (
	hls::stream < window < float , filter_height , filter_width > >& input_window_stream ,
	float weights[filter_height][filter_width][num_filters] ,
	float biases[num_filters] ,
	hls::stream < float >& kernel_sums )
{
	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
	{
#pragma HLS PIPELINE II=16

		float filter_sum_stream;

		window < in_type , filter_height , filter_width > temp_window;

		temp_window = input_window_stream.read();

		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		{
			float temp_sum = biases[filter];

			filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
					temp_sum += temp_window.elements[filter_y][filter_x] * weights[filter_y][filter_x][filter];

			kernel_sums.write( temp_sum );
		}
	}
}

template < unsigned int in_height , unsigned int in_width ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv_1c_activate (
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


/***** conv, multiple input channels *****/
template < typename in_type ,
	unsigned int in_height     , unsigned int in_width    , unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width >
void conv_mc_create_window_stream (
	hls::stream< in_type >& input_stream ,
	hls::stream< window < in_type , filter_height , filter_width > >& window_stream )
{
	in_type line_buffer[filter_height-1][in_width][in_channels];
#pragma HLS ARRAY_PARTITION variable=line_buffer dim=2 complete // this can be removed if II=2

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
				new_pixel = input_stream.read();
			else
				new_pixel = 0.f;

//			hls::print("%f\n" , new_pixel);

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
void conv_mc_pad_windows (
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
void conv_mc_sum (
	hls::stream < window < float , filter_height , filter_width > >& input_window_stream ,
	float weights[filter_height * filter_width * num_filters] ,
	hls::stream < float >& in_channel_map_stream ) // outputs
{
	inputs: for ( unsigned int input_counter = 0 ; input_counter < in_height * in_width ; input_counter++ )
	{
#pragma HLS PIPELINE II=32

		window < in_type , filter_height , filter_width > temp_window;
		temp_window = input_window_stream.read();

		filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
		{
			float temp_sum = 0;
			filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
					temp_sum += temp_window.elements[filter_y][filter_x]
							   * weights[filter_y * filter_width * num_filters + filter_x * num_filters + filter];

			in_channel_map_stream.write( temp_sum );
		}
	}
}

template < 	unsigned int in_height , unsigned int in_width , unsigned int in_channels , unsigned int num_filters >
void conv_mc_aggregate_channels (
	float biases[num_filters] ,
	hls::stream < float > in_channel_map_stream[in_channels] ,
	hls::stream < float >& feature_map_stream ,
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
void maxp_create_window_stream (
	hls::stream < float >& input ,
	hls::stream < window < float , filter_height , filter_width > >& window_stream )
{
	unsigned int col_ptr = 0;
	unsigned int row_ptr = 0;

	pixel: for( unsigned int pixel = 0 ; pixel < in_width * in_height ; pixel++ )
	{
		channel: for ( unsigned int channel = 0 ; channel < in_channels ; channel++ )
		{
			float line_buffer[filter_height][in_width][in_channels];
			window < float , filter_height , filter_width > temp_window;

			line_buffer[col_ptr][row_ptr][channel] = input.read();

			get_window: for ( uint filter_y = 0 ; filter_y < filter_height ; filter_y++ )
				for ( uint filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				{
					int pos_y = static_cast<int>( col_ptr - 1 + filter_y );
					int pos_x = static_cast<int>( row_ptr - 1 + filter_x );

					if ( pos_y >= 0 && pos_x >= 0 )
						temp_window.elements[filter_y][filter_x] = line_buffer[pos_y][pos_x][channel];
				}
			if( col_ptr == filter_height - 1 && row_ptr % filter_width == 1 )
				window_stream.write( temp_window );


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
}

template < unsigned int num_windows , unsigned int filter_height , unsigned int filter_width >
void maxp (
		hls::stream < window < float , filter_height , filter_width > >& window_stream ,
		hls::stream < float >& output_stream ,
		hls::stream < window < bool , filter_height , filter_width > >& activations_stream )
{
	for( unsigned int w = 0 ; w < num_windows ; w++ )
	{
#pragma HLS PIPELINE II=1
		window < float , filter_height , filter_width > temp_window = window_stream.read();

		float max = -std::numeric_limits<float>::infinity(); //TODO: this can be static or const. Test it in cosim

		for( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				if ( temp_window.elements[filter_y][filter_x] > max ) // check for max
					max = temp_window.elements[filter_y][filter_x];

		window < bool , filter_height , filter_width > activation;
		for( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				if ( temp_window.elements[filter_y][filter_x] == max )
					activation.elements[filter_y][filter_x] = true;
				else
					activation.elements[filter_y][filter_x] = false;

		output_stream.write( max );
		activations_stream.write( activation );
	}
}

/***** Dense *****/
template < unsigned int num_kernels , unsigned int num_inputs >
void dense (
	hls::stream < float >& input_stream ,
	float weights[num_inputs][num_kernels] , float biases[num_kernels] ,
	hls::stream < float >& feature_map_stream , hls::stream < bool >& activations_stream ,
	hls::stream < float >& f_map_out )
{
	float kernel_sum[num_kernels];
#pragma HLS ARRAY_PARTITION variable=kernel_sum type=complete

	inputs: for ( unsigned int i = 0 ; i < num_inputs ; i++ )
	{
#pragma HLS PIPELINE II=4 // axi_m max widen port = 512 bits. 64 kernels * 32 bit floats = 2048 bits. min II = 2048/512 = 4

		float temp_input = input_stream.read();

		kernels: for ( unsigned int k = 0 ; k < num_kernels ; k++ )
		{
			float temp = temp_input * weights[i][k];
			if ( i == 0 )
				kernel_sum[k] = biases[k] + temp;
			else
				kernel_sum[k] += temp;
		}
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
	float weights[num_inputs][num_kernels] , float biases[num_kernels] ,
	hls::stream < float >& softmax_feature_map )
{
	float sum[num_kernels];
#pragma HLS ARRAY_PARTITION variable=sum type=complete

	float softmax_max;

	calc_sums_and_max: for ( unsigned int i = 0 ; i < num_inputs ; i++ )
	{
#pragma HLS PIPELINE II=3
		float temp_input = input_stream.read();
		softmax_max = -std::numeric_limits<float>::infinity();

		for ( unsigned int k = 0 ; k < num_kernels ; k++ )
		{
			float temp = temp_input * weights[i][k];
			if ( i == 0 )
				sum[k] = biases[k] + temp;
			else
				sum[k] += temp;

			if ( sum[k] > softmax_max )
				softmax_max = sum[k];
		}
	}

	float softmax_sum = 0.f;
	calc_exp_sum: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
#pragma HLS PIPELINE II=3
		softmax_sum += std::exp( sum[kernel] - softmax_max );

	float constant = softmax_max + hls::log( softmax_sum );
	feature_map: for ( unsigned int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		float temp_out = std::exp( sum[kernel] - constant );
		softmax_feature_map.write( temp_out );
	}
}


void write_gmem(
	hls::stream < float >& conv_16_f_map_out ,
	hls::stream < float >& conv_32_f_map_out ,
	hls::stream < float >& dense_f_map_out ,
	hls::stream < float >& softmax_feature_map_stream ,

	float gmem_conv_16_feature_map[conv_16_out_height * conv_16_out_width * conv_16_out_channels] ,
	float gmem_conv_32_feature_map[conv_32_out_height * conv_32_out_width * conv_32_out_channels] ,
	float gmem_dense_feature_map[dense_num_out] ,
	float gmem_softmax_feature_map[softmax_num_out] ,

	hls::stream < bool >& conv_16_activations_stream ,
	hls::stream < window < bool , maxp_16_filter_height , maxp_16_filter_width > >& maxp_16_activations_window_stream ,
	hls::stream < bool >& conv_32_activations_stream ,
	hls::stream < window < bool , maxp_32_filter_height , maxp_32_filter_width > >& maxp_32_activations_window_stream ,
	hls::stream < bool >& dense_activations_stream )
{
	conv_16: for ( unsigned int i = 0 ; i < conv_16_out_height * conv_16_out_width * conv_16_num_filters ; i++ )
		gmem_conv_16_feature_map[i] = conv_16_f_map_out.read();

	conv_32: for ( unsigned int i = 0 ; i < conv_32_out_height * conv_32_out_width * conv_32_num_filters ; i++ )
		gmem_conv_32_feature_map[i] = conv_32_f_map_out.read();

	dense: for ( unsigned int i = 0 ; i < dense_num_kernels ; i++ )
		gmem_dense_feature_map[i] = dense_f_map_out.read();

	softmax: for ( unsigned int i = 0 ; i < softmax_num_out ; i++ )
		gmem_softmax_feature_map[i] = softmax_feature_map_stream.read();

	// destroy activations
	for ( unsigned int i = 0 ; i < conv_16_out_height * conv_16_out_width * conv_16_num_filters ; i++ )
		conv_16_activations_stream.read();

	for ( unsigned int i = 0 ; i < maxp_16_num_windows ; i++ )
		maxp_16_activations_window_stream.read();

	for ( unsigned int i = 0 ; i < conv_32_out_height * conv_32_out_width * conv_32_num_filters ; i++ )
		conv_32_activations_stream.read();

	for ( unsigned int i = 0 ; i < maxp_32_num_windows ; i++ )
		maxp_32_activations_window_stream.read();

	for ( unsigned int i = 0 ; i < dense_num_kernels ; i++ )
		dense_activations_stream.read();
}

void input_to_stream(
	float gmem_input_data[image_height][image_width] ,
	hls::stream < float >& input_stream )
{
	for ( unsigned int h = 0 ; h < image_height ; h++ )
		for ( unsigned int w = 0 ; w < image_width ; w++ )
			input_stream.write( gmem_input_data[h][w] );
}

void dataflow_region (
	float gmem_input_data[image_height][image_width] ,

	float conv_16_weights[conv_16_filter_height][conv_16_filter_width][conv_16_num_filters] ,
	float conv_16_biases[conv_16_num_filters] ,
	float conv_32_weights[conv_32_in_channels][conv_32_filter_height * conv_32_filter_width * conv_32_num_filters] ,
	float conv_32_biases[conv_32_num_filters] ,
	float dense_weights[dense_num_in][dense_num_kernels] ,
	float dense_biases[dense_num_kernels] ,
	float softmax_weights[softmax_num_in][softmax_num_kernels] ,
	float softmax_biases[softmax_num_kernels] ,

	float gmem_conv_16_feature_map[conv_16_out_height * conv_16_out_width * conv_16_out_channels] ,
	float gmem_conv_32_feature_map[conv_32_out_height * conv_32_out_width * conv_32_out_channels] ,
	float gmem_dense_feature_map[dense_num_out] ,
	float gmem_softmax_feature_map[softmax_num_out]	)
{
// this is probably gmem wide and sees writing the outputs? throws weird warning hls 200-1888 for scalar gmem written. Cosim works fine.
#pragma HLS STABLE variable=gmem_input_data
#pragma HLS STABLE variable=conv_16_weights
#pragma HLS STABLE variable=conv_16_biases
#pragma HLS STABLE variable=conv_32_weights
#pragma HLS STABLE variable=conv_32_biases
#pragma HLS STABLE variable=dense_weights
#pragma HLS STABLE variable=dense_biases
#pragma HLS STABLE variable=softmax_weights
#pragma HLS STABLE variable=softmax_biases

#pragma HLS DATAFLOW

	// stream input
	hls::stream < float , 3 > input_stream;
	input_to_stream( gmem_input_data , input_stream );

	/* Streams between the layers */
	hls::stream < float , 3 > conv_16_feature_map_stream;
	hls::stream < bool , conv_16_out_height * conv_16_out_width * conv_16_num_filters > conv_16_activations_stream;

	hls::stream < float , 3 > maxp_16_feature_map_stream;
	hls::stream < window < bool , maxp_16_filter_height , maxp_16_filter_width > , maxp_16_num_windows > maxp_16_activations_window_stream;

	hls::stream < float , 3 > conv_32_feature_map_stream;
	hls::stream < bool , conv_32_out_height * conv_32_out_width * conv_32_num_filters > conv_32_activations_stream;

	hls::stream < float , 6 > maxp_32_feature_map_stream;
	hls::stream < window < bool , maxp_32_filter_height , maxp_32_filter_width > , maxp_32_num_windows > maxp_32_activations_window_stream;

	hls::stream < float , 3 > dense_feature_map_stream;
	hls::stream < bool , dense_num_kernels > dense_activations_stream;

	/* Streams to output */
	hls::stream < float , conv_16_out_height * conv_16_out_width * conv_16_num_filters > conv_16_f_map_out;
	hls::stream < float , conv_32_out_height * conv_32_out_width * conv_32_num_filters > conv_32_f_map_out;
	hls::stream < float , dense_num_kernels > dense_f_map_out;
	hls::stream < float , softmax_num_out > softmax_f_map_out;

	/***** Layer 0, 28x28x1 -> conv 16 filters of 3x3, padded, stride 1 -> 28x28x16 *****/
	// internal data streams
	hls::stream < window < float , conv_16_filter_height , conv_16_filter_width > , 3 > conv_16_window_stream;
	hls::stream < window < float , conv_16_filter_height , conv_16_filter_width > , 3 > conv_16_padded_window_stream;
	hls::stream < float , 3 > kernel_sums;

	// create windows
	conv_1c_create_window_stream < float , conv_16_in_height , conv_16_in_width , conv_16_filter_height , conv_16_filter_width >
		( input_stream , conv_16_window_stream );

	conv_1c_pad_windows < float , conv_16_in_height , conv_16_in_width , conv_16_filter_height , conv_16_filter_width , conv_16_num_filters >
		( conv_16_window_stream , conv_16_padded_window_stream );

	// full convolution
	conv_1c_sum < float , conv_16_in_height , conv_16_in_width , conv_16_filter_height , conv_16_filter_width , conv_16_num_filters >
		( conv_16_padded_window_stream , conv_16_weights , conv_16_biases , kernel_sums );

	conv_1c_activate < conv_16_in_height , conv_16_in_width , conv_16_filter_height , conv_16_filter_width , conv_16_num_filters >
		( kernel_sums , conv_16_feature_map_stream , conv_16_activations_stream , conv_16_f_map_out );

	/***** layer 1, 28x28x16 -> maxpool 2x2, stride 2,2 -> 14x14x16 *****/
	// internal data streams
	hls::stream < window < float , maxp_16_filter_height , maxp_16_filter_width > , 3 > maxp_16_window_stream;

	// create windows
	maxp_create_window_stream < maxp_16_in_height , maxp_16_in_width , maxp_16_in_channels , maxp_16_filter_height , maxp_16_filter_width >
		( conv_16_feature_map_stream , maxp_16_window_stream );

	// maxpool
	maxp < maxp_16_num_windows , maxp_16_filter_height , maxp_16_filter_width >
		( maxp_16_window_stream , maxp_16_feature_map_stream , maxp_16_activations_window_stream );

	/***** layer 2, 14x14x16 -> conv 32 filters of 3x3, padded, stride 1 -> 14x14x32 *****/
	// internal data streams
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 3 > conv_32_window_stream;
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 3 > conv_32_padded_window_stream[conv_32_in_channels];
	hls::stream < float , 3 > in_channel_map_stream[conv_32_in_channels];

	// create windows
	conv_mc_create_window_stream < float , conv_32_in_height , conv_32_in_width , conv_32_in_channels , conv_32_filter_height , conv_32_filter_width >
		( maxp_16_feature_map_stream , conv_32_window_stream );

	conv_mc_pad_windows < float , conv_32_in_height , conv_32_in_width , conv_32_in_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_window_stream , conv_32_padded_window_stream );

	// full convolution
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[0] , conv_32_weights[0] , in_channel_map_stream[0] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[1] , conv_32_weights[1] , in_channel_map_stream[1] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[2] , conv_32_weights[2] , in_channel_map_stream[2] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[3] , conv_32_weights[3] , in_channel_map_stream[3] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[4] , conv_32_weights[4] , in_channel_map_stream[4] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[5] , conv_32_weights[5] , in_channel_map_stream[5] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[6] , conv_32_weights[6] , in_channel_map_stream[6] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[7] , conv_32_weights[7] , in_channel_map_stream[7] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[8] , conv_32_weights[8] , in_channel_map_stream[8] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[9] , conv_32_weights[9] , in_channel_map_stream[9] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[10] , conv_32_weights[10] , in_channel_map_stream[10] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[11] , conv_32_weights[11] , in_channel_map_stream[11] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[12] , conv_32_weights[12] , in_channel_map_stream[12] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[13] , conv_32_weights[13] , in_channel_map_stream[13] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[14] , conv_32_weights[14] , in_channel_map_stream[14] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( conv_32_padded_window_stream[15] , conv_32_weights[15] , in_channel_map_stream[15] );

	conv_mc_aggregate_channels < conv_32_in_height , conv_32_in_width , conv_32_in_channels , conv_32_num_filters >
		( conv_32_biases , in_channel_map_stream , conv_32_feature_map_stream , conv_32_activations_stream , conv_32_f_map_out );

	/***** layer 3, 14x14x32 -> maxpool 2x2, stride 2,2 -> 7x7x32 *****/
	// internal data streams
	hls::stream < window < float , maxp_32_filter_height , maxp_32_filter_width > , 3 > maxp_32_window_stream;

	// create windows
	maxp_create_window_stream < maxp_32_in_height , maxp_32_in_width , maxp_32_in_channels , maxp_32_filter_height , maxp_32_filter_width >
		( conv_32_feature_map_stream , maxp_32_window_stream );

	// maxpool
	maxp < maxp_32_num_windows , maxp_32_filter_height , maxp_32_filter_width >
		( maxp_32_window_stream , maxp_32_feature_map_stream , maxp_32_activations_window_stream );

	/***** layer 4, 7x7x32 = 1568 -> fully connected 64 -> 64 *****/
// WARNING: [HLS 200-1449] Process dense<64u, 1568u> has both a predecessor and reads an input from its caller (see the GUI dataflow viewer).
// This may lead to lower throughput. Consider copying this input via a predecessor process.
	// Gmem to stream;
	dense < dense_num_kernels , dense_num_in >
		( maxp_32_feature_map_stream , dense_weights , dense_biases , dense_feature_map_stream , dense_activations_stream , dense_f_map_out );

	/***** layer 5, 64 -> fully connected softmax 10 -> 10 normalized *****/
	softmax < softmax_num_kernels , softmax_num_in >
		( dense_feature_map_stream , softmax_weights , softmax_biases , softmax_f_map_out );

	write_gmem(
		conv_16_f_map_out ,
		conv_32_f_map_out ,
		dense_f_map_out ,
		softmax_f_map_out ,
		gmem_conv_16_feature_map ,
		gmem_conv_32_feature_map ,
		gmem_dense_feature_map ,
		gmem_softmax_feature_map ,
		conv_16_activations_stream ,
		maxp_16_activations_window_stream ,
		conv_32_activations_stream ,
		maxp_32_activations_window_stream ,
		dense_activations_stream );
}


void accel (
	float gmem_input_data[image_height][image_width] ,
	float gmem_conv_16_weights[conv_16_filter_height][conv_16_filter_width][conv_16_num_filters] ,
	float gmem_conv_16_biases[conv_16_num_filters] ,

	float gmem_conv_32_weights[conv_32_in_channels][conv_32_filter_height][conv_32_filter_width][conv_32_num_filters] ,
	float gmem_conv_32_biases[conv_32_num_filters] ,

	float gmem_dense_weights[dense_num_in][dense_num_kernels] ,
	float gmem_dense_biases[dense_num_kernels] ,

	float gmem_softmax_weights[softmax_num_in][softmax_num_kernels] ,
	float gmem_softmax_biases[softmax_num_kernels] ,

	float gmem_conv_16_feature_map[conv_16_out_height * conv_16_out_width * conv_16_out_channels] ,
	float gmem_conv_32_feature_map[conv_32_out_height * conv_32_out_width * conv_32_out_channels] ,
	float gmem_dense_feature_map[dense_num_out] ,
	float gmem_softmax_feature_map[softmax_num_out] )
{
#pragma HLS INTERFACE mode=m_axi port=gmem_dense_weights bundle=dense_weights max_write_burst_length=1 num_write_outstanding=1 // read only

	/***** Save variables locally. *****/
	float conv_16_weights[conv_16_filter_height][conv_16_filter_width][conv_16_num_filters];
	float conv_16_biases[conv_16_num_filters];

	float conv_32_weights[conv_32_in_channels][conv_32_filter_height * conv_32_filter_width * conv_32_num_filters];
#pragma HLS ARRAY_PARTITION variable=conv_32_weights type=complete dim=1
	float conv_32_biases[conv_32_num_filters];

	// dense weights are in gmem
	float dense_biases[dense_num_kernels];

	float softmax_weights[softmax_num_in][softmax_num_kernels];
	float softmax_biases[softmax_num_kernels];

	save_variables_locally(
		gmem_conv_16_weights , gmem_conv_16_biases ,
		gmem_conv_32_weights , gmem_conv_32_biases ,
		gmem_dense_biases ,
		gmem_softmax_weights , gmem_softmax_biases ,
		conv_16_weights , conv_16_biases ,
		conv_32_weights , conv_32_biases ,
		dense_biases ,
		softmax_weights , softmax_biases );

	dataflow_region( gmem_input_data ,
		conv_16_weights , conv_16_biases ,
		conv_32_weights , conv_32_biases ,
		gmem_dense_weights , dense_biases ,
		softmax_weights , softmax_biases ,
		gmem_conv_16_feature_map ,
		gmem_conv_32_feature_map ,
		gmem_dense_feature_map ,
		gmem_softmax_feature_map );
}
