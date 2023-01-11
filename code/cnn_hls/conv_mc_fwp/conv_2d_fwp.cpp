#include "conv_2d_fwp.hpp"


template < typename in_type , unsigned int num_elements >
void read_mem( const in_type input[num_elements] , hls::stream< in_type >& out_stream )
{
	write_in_stream: for ( unsigned int i = 0 ; i < num_elements ; i++ )
	{
		in_type temp = input[i];
		out_stream.write( temp );
	}
}

template < typename out_type_1 , typename out_type_2 , unsigned int num_elements >
void write_mem ( hls::stream< out_type_1 >& in_stream_1 , out_type_1 output_1[num_elements] , hls::stream< out_type_2 >& in_stream_2 )
{
	write_out_mem: for ( unsigned int i = 0 ; i < num_elements ; i++ )
	{
		out_type_1 temp = in_stream_1.read();
		output_1[i] = temp;
		in_stream_2.read();
	}
}


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

// does not influence the order of the windows, only their contents
template < typename in_type ,
	unsigned int in_height ,     unsigned int in_width ,     unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width >
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

template < typename in_type ,
	unsigned int in_height ,     unsigned int in_width , unsigned int in_channels ,
	unsigned int filter_height , unsigned int filter_width , unsigned int num_filters >
void conv_mc_sum (
	hls::stream < window < in_type , filter_height , filter_width > >& s_in_window ,
	float weights[filter_height][filter_width][in_channels][num_filters] ,
	hls::stream < window_1d< float , num_filters > >& s_kernel_sums_per_channel )
{
	in_y: for ( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
			in_c: for ( unsigned int in_c = 0 ; in_c < in_channels ; in_c++ )
			{
#pragma HLS PIPELINE II=4
				window < in_type , filter_height , filter_width > temp_window = s_in_window.read();
				window_1d < float , num_filters > filter_sums;

				filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
				{
					filter_sums.elements[filter] = 0;
					filt_y: for ( unsigned int filter_y = 0 ; filter_y < filter_height ; filter_y++ )
						filt_x: for ( unsigned int filter_x = 0 ; filter_x < filter_width ; filter_x++ )
							filter_sums.elements[filter] += temp_window.elements[filter_y][filter_x] * weights[filter_y][filter_x][in_c][filter];
				}
				s_kernel_sums_per_channel.write( filter_sums );
			}
}


template < unsigned int in_height , unsigned int in_width , unsigned int in_channels , unsigned int num_filters >
void conv_mc_aggregate_channels (
	hls::stream < window_1d< float , num_filters > >& s_kernel_sums_per_channel ,
	hls::stream < window_1d< float , num_filters > >& s_kernel_sums )
{
	window_1d< float , num_filters > kernel_sums;
	in_y: for ( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
			in_c: for ( unsigned int in_c = 0 ; in_c < in_channels ; in_c++ )
			{
#pragma HLS PIPELINE II=4
				window_1d< float , num_filters > temp = s_kernel_sums_per_channel.read();
				if ( in_c == 0 )
					kernel_sums = temp;
				else
					kernel_sums += temp;

				if ( in_c == in_channels - 1 )
					s_kernel_sums.write( kernel_sums );
			}
}

template < unsigned int in_height , unsigned int in_width , unsigned int num_filters >
void conv_mc_activate (
	hls::stream < window_1d< float , num_filters > >& s_kernel_sums  ,
	float biases[num_filters] ,
	hls::stream < float >& s_output ,
	hls::stream < bool >& s_activations )
{
	window_1d< float , num_filters > kernel_sums;
	in_y: for ( unsigned int in_y = 0 ; in_y < in_height ; in_y++ )
		in_x: for ( unsigned int in_x = 0 ; in_x < in_width ; in_x++ )
			filter: for ( unsigned int filter = 0 ; filter < num_filters ; filter++ )
			{
#pragma HLS PIPELINE II=2
				if ( filter == 0 )
					kernel_sums = s_kernel_sums.read();

				kernel_sums.elements[filter] += biases[filter];

				bool activation = kernel_sums.elements[filter] > 0.f;
				float temp_out = activation ? kernel_sums.elements[filter] : 0.f;

				s_output.write( temp_out );
				s_activations.write( activation );
			}
}


void dataflow_region(
	hls::stream < float >& s_input ,
	float conv_32_weights[conv_32_filter_height][conv_32_filter_width][conv_32_in_channels][conv_32_num_filters] ,
	float conv_32_biases[conv_32_num_filters] ,
	float conv_32_feature_map[conv_32_out_height * conv_32_out_width * conv_32_num_filters] )
{
#pragma HLS DATAFLOW

	// internal data streams
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 3 > s_conv_32_in_window;
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 3 > s_conv_32_in_padded_window;
	hls::stream < window_1d < float , conv_32_num_filters > , 3 > s_kernel_sums_per_channel;
	hls::stream < window_1d < float , conv_32_num_filters > , 3 > s_kernel_sums;

	// output streams
	hls::stream < float , 3 > s_fmap;
	hls::stream < bool , conv_32_out_height * conv_32_out_width * conv_32_num_filters > s_activations;

	// create windows
	conv_create_window_stream < float , conv_32_in_height , conv_32_in_width , conv_32_in_channels , conv_32_filter_height , conv_32_filter_width , 14 >
		( s_input , s_conv_32_in_window );

	conv_pad_windows < float , conv_32_in_height , conv_32_in_width , conv_32_in_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_in_window , s_conv_32_in_padded_window );

	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_in_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_padded_window , conv_32_weights , s_kernel_sums_per_channel );

	conv_mc_aggregate_channels < conv_32_in_height , conv_32_in_width , conv_32_in_channels , conv_32_num_filters >
		( s_kernel_sums_per_channel , s_kernel_sums );

	conv_mc_activate < conv_32_in_height , conv_32_in_width , conv_32_num_filters > ( s_kernel_sums , conv_32_biases , s_fmap , s_activations );

	// write in memory
	write_mem < float , bool , conv_32_out_height * conv_32_out_width * conv_32_num_filters > ( s_fmap , conv_32_feature_map , s_activations );
}



// Top function TODO: create dataflow region and read weights outside of it
void accel (
	float input[conv_32_in_height * conv_32_in_width * conv_32_in_channels ],
	float gmem_conv_32_weights[conv_32_filter_height][conv_32_filter_width][conv_32_in_channels][conv_32_num_filters] ,
	float gmem_conv_32_biases[conv_32_num_filters] ,
	float conv_32_feature_map[conv_32_out_height * conv_32_out_width * conv_32_num_filters] )
{
	float conv_32_weights[conv_32_filter_height][conv_32_filter_width][conv_32_in_channels][conv_32_num_filters];
	float conv_32_biases[conv_32_num_filters];

	save_weights:
	for ( unsigned int filter_y = 0 ; filter_y < conv_32_filter_height ; filter_y++ )
		for ( unsigned int filter_x = 0 ; filter_x < conv_32_filter_width ; filter_x++ )
			for ( unsigned int in_c = 0 ; in_c < conv_32_in_channels ; in_c++ )
				for ( unsigned int filter = 0 ; filter < conv_32_num_filters ; filter++ )
					conv_32_weights[filter_y][filter_x][in_c][filter] = gmem_conv_32_weights[filter_y][filter_x][in_c][filter];

	save_biases:
	for ( unsigned int filter = 0 ; filter < conv_32_num_filters ; filter++ )
		conv_32_biases[filter] = gmem_conv_32_biases[filter];


	// gmem streams
	hls::stream < float , 2 > s_input;

	// get inputs and put them in their streams
	read_mem < float , conv_32_in_height * conv_32_in_width * conv_32_in_channels > (input, s_input );

	dataflow_region( s_input , conv_32_weights , conv_32_biases , conv_32_feature_map );

}
