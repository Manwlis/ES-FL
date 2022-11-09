#include "all_fwp_bp.hpp"
#include "dense_layer.hpp"
#include "softmax_layer.hpp"
#include "maxp_layer.hpp"
#include "conv_layer.hpp"


void input_to_stream(
	float gmem_input_data[image_height][image_width] ,
	hls::stream < float >& s_input )
{
	for ( unsigned int h = 0 ; h < image_height ; h++ )
		for ( unsigned int w = 0 ; w < image_width ; w++ )
			s_input.write( gmem_input_data[h][w] );
}


void save_variables_locally (
	float gmem_conv_16_weights[conv_16_filter_height][conv_16_filter_width][conv_16_num_filters] ,
	float gmem_conv_16_biases[conv_16_num_filters] ,
	float gmem_conv_32_weights_fp[conv_32_in_channels][conv_32_filter_height][conv_32_filter_width][conv_32_num_filters] ,
	float gmem_conv_32_weights_bp[conv_32_num_filters][conv_32_filter_height][conv_32_filter_width][conv_32_in_channels] ,
	float gmem_conv_32_biases[conv_32_num_filters] ,
	float gmem_dense_weights[dense_num_in][dense_num_kernels] ,
	float gmem_dense_biases[dense_num_kernels] ,
	float gmem_softmax_weights[softmax_num_in][softmax_num_kernels] ,
	float gmem_softmax_biases[softmax_num_kernels] ,

	float conv_16_weights[conv_16_filter_height][conv_16_filter_width][conv_16_num_filters] ,
	float conv_16_biases[conv_16_num_filters] ,
	float conv_32_weights_fp[conv_32_in_channels][conv_32_filter_height * conv_32_filter_width * conv_32_num_filters] ,
	float conv_32_weights_bp[conv_32_num_filters][conv_32_filter_height * conv_32_filter_width * conv_32_in_channels] ,
	float conv_32_biases[conv_32_num_filters] ,
	float dense_weights[dense_num_in][dense_num_kernels] ,
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

	store_l2_weights_fp:
	for ( unsigned int c = 0 ; c < conv_32_in_channels ; c++ )
		for ( unsigned int h = 0 ; h < conv_32_filter_height ; h++ )
			for ( unsigned int w = 0 ; w < conv_32_filter_width ; w++ )
				for ( unsigned int f = 0 ; f < conv_32_num_filters ; f++ )
					conv_32_weights_fp[c][h * conv_32_filter_width * conv_32_num_filters + w * conv_32_num_filters + f ] = gmem_conv_32_weights_fp[c][h][w][f];

	store_l2_weights_bp:
	for ( unsigned int f = 0 ; f < conv_32_num_filters ; f++ )
		for ( unsigned int h = 0 ; h < conv_32_filter_height ; h++ )
			for ( unsigned int w = 0 ; w < conv_32_filter_width ; w++ )
				for ( unsigned int c = 0 ; c < conv_32_in_channels ; c++ )
					conv_32_weights_bp[f][h * conv_32_filter_width * conv_32_in_channels + w * conv_32_in_channels + c ] = gmem_conv_32_weights_bp[f][h][w][c];

	store_l2_biases:
	for ( unsigned int i = 0 ; i < conv_32_num_filters ; i++ )
		conv_32_biases[i] = gmem_conv_32_biases[i];

	store_l4_weights:
	for ( unsigned int i = 0 ; i < dense_num_in ; i++ )
		for ( unsigned int k = 0 ; k < dense_num_kernels ; k++ )
		dense_weights[i][k] = gmem_dense_weights[i][k];

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


void write_gmem(
	hls::stream < float >& s_conv_16_fmap_gc ,
	hls::stream < float >& s_conv_32_fmap_gc ,
	hls::stream < float >& s_dense_fmap_gc ,

	hls::stream < float >& s_maxp_16_in_error ,
	float maxp_16_in_error[ maxp_16_in_height * maxp_16_in_width * maxp_16_in_channels ] )
{
	conv_16: for ( unsigned int i = 0 ; i < conv_16_out_height * conv_16_out_width * conv_16_num_filters ; i++ )
		s_conv_16_fmap_gc.read();

	conv_32: for ( unsigned int i = 0 ; i < conv_32_out_height * conv_32_out_width * conv_32_num_filters ; i++ )
		s_conv_32_fmap_gc.read();

	dense: for ( unsigned int i = 0 ; i < dense_num_kernels ; i++ )
		s_dense_fmap_gc.read();

	for ( unsigned int i = 0 ; i < maxp_16_in_height * maxp_16_in_width * maxp_16_in_channels ; i++ )
		maxp_16_in_error[i] = s_maxp_16_in_error.read();
}


void dataflow_region (
	float gmem_input_data[image_height][image_width] , unsigned int label ,
	float conv_16_weights[conv_16_filter_height][conv_16_filter_width][conv_16_num_filters] ,
	float conv_16_biases[conv_16_num_filters] ,
	float conv_32_weights_fp[conv_32_in_channels][conv_32_filter_height * conv_32_filter_width * conv_32_num_filters] ,
	float conv_32_weights_bp[conv_32_num_filters][conv_32_filter_height * conv_32_filter_width * conv_32_in_channels] ,
	float conv_32_biases[conv_32_num_filters] ,
	float dense_weights[dense_num_in][dense_num_kernels] ,
	float dense_biases[dense_num_kernels] ,
	float softmax_weights[softmax_num_in][softmax_num_kernels] ,
	float softmax_biases[softmax_num_kernels] ,
	float maxp_16_in_error[ maxp_16_in_height * maxp_16_in_width * maxp_16_in_channels ] )
{
// this is probably gmem wide and sees writing the outputs? throws weird warning hls 200-1888 for scalar gmem written if an array on gmem. Cosim works fine.
#pragma HLS STABLE variable=gmem_input_data
#pragma HLS STABLE variable=conv_16_weights
#pragma HLS STABLE variable=conv_16_biases
#pragma HLS STABLE variable=conv_32_weights_fp
#pragma HLS STABLE variable=conv_32_weights_bp
#pragma HLS STABLE variable=conv_32_biases
#pragma HLS STABLE variable=dense_weights
#pragma HLS STABLE variable=dense_biases
#pragma HLS STABLE variable=softmax_weights
#pragma HLS STABLE variable=softmax_biases

#pragma HLS DATAFLOW

	// stream input
	hls::stream < float , 3 > s_input;
	input_to_stream( gmem_input_data , s_input );

	/* Streams between the layers */
	hls::stream < float , 3 > s_conv_16_fmap_fp;
	hls::stream < float , 3 > s_maxp_16_fmap_fp;
	hls::stream < float , 3 > s_conv_32_fmap_fp;
	hls::stream < float , 3 > s_maxp_32_fmap_fp;
	hls::stream < float , 3 > s_dense_fmap_fp;
	hls::stream < float , 3 > s_softmax_fmap_fp;

	hls::stream < float , 3 > s_total_error_bp;
	hls::stream < float , 3 > s_softmax_in_error;
	hls::stream < float , 3 > s_dense_in_error;
	hls::stream < float , 3 > s_maxp_32_in_error;
	hls::stream < float , 3 > s_conv_32_in_error;
	hls::stream < float , maxp_16_in_height * maxp_16_in_width * maxp_16_in_channels > s_maxp_16_in_error; // TODO change size

	/* Red streams */
	hls::stream < window < bool , maxp_16_filter_height , maxp_16_filter_width > , maxp_16_num_windows > s_maxp_16_activations_window;
	hls::stream < bool , conv_32_out_height * conv_32_out_width * conv_32_num_filters > s_conv_32_activations;
	hls::stream < window < bool , maxp_32_filter_height , maxp_32_filter_width > , maxp_32_num_windows > s_maxp_32_activations_window;
	hls::stream < bool , dense_num_kernels > s_dense_activations;

	hls::stream < float , conv_16_out_height * conv_16_out_width * conv_16_num_filters > s_conv_16_fmap_gc;
	hls::stream < float , conv_32_out_height * conv_32_out_width * conv_32_num_filters > s_conv_32_fmap_gc;
	hls::stream < float , dense_num_kernels > s_dense_fmap_gc;

	/************************/
	/***** Forward prop *****/
	/************************/
/***** Layer 0, 28x28x1 -> conv 16 filters of 3x3, padded, stride 1 -> 28x28x16 *****/
	// internal data streams
	hls::stream < window < float , conv_16_filter_height , conv_16_filter_width > , 3 > s_conv_16_in_window;
	hls::stream < window < float , conv_16_filter_height , conv_16_filter_width > , 3 > s_conv_16_in_padded_window;
	hls::stream < float , 3 > s_conv_16_kernel_sums;

	// create windows
	conv_create_window_stream < float , conv_16_in_height , conv_16_in_width , conv_16_in_channels , conv_16_filter_height , conv_16_filter_width , 1 >
		( s_input , s_conv_16_in_window );

	conv_pad_windows < float , conv_16_in_height , conv_16_in_width , conv_16_in_channels , conv_16_filter_height , conv_16_filter_width , conv_16_num_filters >
		( s_conv_16_in_window , s_conv_16_in_padded_window );

	// full convolution
	conv_1c_sum < float , conv_16_in_height , conv_16_in_width , conv_16_filter_height , conv_16_filter_width , conv_16_num_filters >
		( s_conv_16_in_padded_window , conv_16_weights , conv_16_biases , s_conv_16_kernel_sums );

	conv_1c_activate < conv_16_in_height , conv_16_in_width , conv_16_filter_height , conv_16_filter_width , conv_16_num_filters >
		( s_conv_16_kernel_sums , s_conv_16_fmap_fp , s_conv_16_fmap_gc );

/***** layer 1, 28x28x16 -> maxpool 2x2, stride 2,2 -> 14x14x16 *****/
	// internal data streams
	hls::stream < window < float , maxp_16_filter_height , maxp_16_filter_width > , 3 > s_maxp_16_in_window;

	// create windows
	maxp_create_window_stream < maxp_16_in_height , maxp_16_in_width , maxp_16_in_channels , maxp_16_filter_height , maxp_16_filter_width >
		( s_conv_16_fmap_fp , s_maxp_16_in_window );

	// maxpool
	maxp < maxp_16_num_windows , maxp_16_filter_height , maxp_16_filter_width >
		( s_maxp_16_in_window , s_maxp_16_fmap_fp , s_maxp_16_activations_window );

/***** layer 2, 14x14x16 -> conv 32 filters of 3x3, padded, stride 1 -> 14x14x32 *****/
	// internal data streams
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 3 > s_conv_32_in_window;
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 3 > s_conv_32_in_padded_window;
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 3 > s_conv_32_in_per_channel[conv_32_in_channels];
	hls::stream < float , 3 > s_kernel_sums_per_channel[conv_32_in_channels];

	// create windows
	conv_create_window_stream < float , conv_32_in_height , conv_32_in_width , conv_32_in_channels , conv_32_filter_height , conv_32_filter_width , 14 >
		( s_maxp_16_fmap_fp , s_conv_32_in_window );

	conv_pad_windows < float , conv_32_in_height , conv_32_in_width , conv_32_in_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_window , s_conv_32_in_padded_window );

	split_streams < window < float , conv_32_filter_height , conv_32_filter_width > , conv_32_in_height , conv_32_in_width , conv_32_in_channels >
		( s_conv_32_in_padded_window , s_conv_32_in_per_channel );

	// full convolution
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[0] , conv_32_weights_fp[0] , s_kernel_sums_per_channel[0] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[1] , conv_32_weights_fp[1] , s_kernel_sums_per_channel[1] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[2] , conv_32_weights_fp[2] , s_kernel_sums_per_channel[2] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[3] , conv_32_weights_fp[3] , s_kernel_sums_per_channel[3] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[4] , conv_32_weights_fp[4] , s_kernel_sums_per_channel[4] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[5] , conv_32_weights_fp[5] , s_kernel_sums_per_channel[5] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[6] , conv_32_weights_fp[6] , s_kernel_sums_per_channel[6] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[7] , conv_32_weights_fp[7] , s_kernel_sums_per_channel[7] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[8] , conv_32_weights_fp[8] , s_kernel_sums_per_channel[8] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[9] , conv_32_weights_fp[9] , s_kernel_sums_per_channel[9] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[10] , conv_32_weights_fp[10] , s_kernel_sums_per_channel[10] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[11] , conv_32_weights_fp[11] , s_kernel_sums_per_channel[11] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[12] , conv_32_weights_fp[12] , s_kernel_sums_per_channel[12] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[13] , conv_32_weights_fp[13] , s_kernel_sums_per_channel[13] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[14] , conv_32_weights_fp[14] , s_kernel_sums_per_channel[14] );
	conv_mc_sum < float , conv_32_in_height , conv_32_in_width , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_in_per_channel[15] , conv_32_weights_fp[15] , s_kernel_sums_per_channel[15] );

	conv_mc_aggregate_channels < conv_32_in_height , conv_32_in_width , conv_32_in_channels , conv_32_num_filters >
		( conv_32_biases , s_kernel_sums_per_channel , s_conv_32_fmap_fp , s_conv_32_fmap_gc , s_conv_32_activations );

/***** layer 3, 14x14x32 -> maxpool 2x2, stride 2,2 -> 7x7x32 *****/
	// internal data streams
	hls::stream < window < float , maxp_32_filter_height , maxp_32_filter_width > , 3 > s_maxp_32_in_window;

	// create windows
	maxp_create_window_stream < maxp_32_in_height , maxp_32_in_width , maxp_32_in_channels , maxp_32_filter_height , maxp_32_filter_width > ( s_conv_32_fmap_fp , s_maxp_32_in_window );

	// maxpool
	maxp < maxp_32_num_windows , maxp_32_filter_height , maxp_32_filter_width > ( s_maxp_32_in_window , s_maxp_32_fmap_fp , s_maxp_32_activations_window );

/***** layer 4, 7x7x32 = 1568 -> fully connected 64 -> 64 *****/
// WARNING: [HLS 200-1449] Process dense<64u, 1568u> has both a predecessor and reads an input from its caller (see the GUI dataflow viewer).
// This may lead to lower throughput. Consider copying this input via a predecessor process.
	// Gmem to stream;
	dense < dense_num_kernels , dense_num_in > ( s_maxp_32_fmap_fp , dense_weights , dense_biases , s_dense_fmap_fp , s_dense_fmap_gc , s_dense_activations );

	/***** layer 5, 64 -> fully connected softmax 10 -> 10 normalized *****/
	softmax < softmax_num_kernels , softmax_num_in > ( s_dense_fmap_fp , softmax_weights , softmax_biases , s_softmax_fmap_fp );

	/************************/
	/******* Back prop ******/
	/************************/
/***** Loss function *****/
	sparce_categorical_cross_entropy < softmax_num_kernels > ( s_softmax_fmap_fp , label , s_total_error_bp );

/***** layer 5, 10 -> fully connected softmax 10 backprop -> 64 *****/
	softmax_error_propagation < softmax_num_kernels , softmax_num_in > ( s_total_error_bp , softmax_weights , s_softmax_in_error );

/***** layer 4, 64 -> fully connected relu 64 backprop -> 1568 *****/
	dense_error_propagation < dense_num_kernels , dense_num_in > ( dense_weights , s_dense_activations , s_softmax_in_error , s_dense_in_error );

/***** layer 3, 7x7x32 -> maxp 2x2 backprop -> 14x14x32 *****/
	maxp_error_propagation < maxp_32_in_height , maxp_32_in_width , maxp_32_in_channels , maxp_32_filter_height , maxp_32_filter_width , maxp_32_filter_stride , 2 >
		( s_dense_in_error , s_maxp_32_activations_window , s_maxp_32_in_error );

/***** layer 2, 14x14x32 -> conv 3x3 backprop -> 14x14x16 *****/
	// internal data streams
	hls::stream < float , 3 > s_conv_32_activated_out_error;
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 3 > s_conv_32_out_error_window;
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 3 > s_conv_32_out_error_paddded_window;
	hls::stream < window < float , conv_32_filter_height , conv_32_filter_width > , 3 > s_conv_32_out_error_per_filter[conv_32_out_channels];
	hls::stream < float , 3 > s_conv_32_in_error_per_filter[conv_32_out_channels];

	// filter unactivated errors
	conv_bp_activate_error < conv_32_out_height , conv_32_out_width , conv_32_out_channels > ( s_maxp_32_in_error , s_conv_32_activations , s_conv_32_activated_out_error );

	// put activations & errors in windows
	conv_create_window_stream < float , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , 14 >
		( s_conv_32_activated_out_error , s_conv_32_out_error_window );

	// pad windows
	conv_pad_windows < float , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width , conv_32_num_filters >
		( s_conv_32_out_error_window , s_conv_32_out_error_paddded_window );

	split_streams < window < float , conv_32_filter_height , conv_32_filter_width > , conv_32_out_height , conv_32_out_width , conv_32_out_channels >
		( s_conv_32_out_error_paddded_window , s_conv_32_out_error_per_filter );

	// calculate error of each input per filter
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[0] , conv_32_weights_bp[0] , s_conv_32_in_error_per_filter[0] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[1] , conv_32_weights_bp[1] , s_conv_32_in_error_per_filter[1] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[2] , conv_32_weights_bp[2] , s_conv_32_in_error_per_filter[2] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[3] , conv_32_weights_bp[3] , s_conv_32_in_error_per_filter[3] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[4] , conv_32_weights_bp[4] , s_conv_32_in_error_per_filter[4] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[5] , conv_32_weights_bp[5] , s_conv_32_in_error_per_filter[5] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[6] , conv_32_weights_bp[6] , s_conv_32_in_error_per_filter[6] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[7] , conv_32_weights_bp[7] , s_conv_32_in_error_per_filter[7] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[8] , conv_32_weights_bp[8] , s_conv_32_in_error_per_filter[8] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[9] , conv_32_weights_bp[9] , s_conv_32_in_error_per_filter[9] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[10] , conv_32_weights_bp[10] , s_conv_32_in_error_per_filter[10] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[11] , conv_32_weights_bp[11] , s_conv_32_in_error_per_filter[11] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[12] , conv_32_weights_bp[12] , s_conv_32_in_error_per_filter[12] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[13] , conv_32_weights_bp[13] , s_conv_32_in_error_per_filter[13] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[14] , conv_32_weights_bp[14] , s_conv_32_in_error_per_filter[14] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[15] , conv_32_weights_bp[15] , s_conv_32_in_error_per_filter[15] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[16] , conv_32_weights_bp[16] , s_conv_32_in_error_per_filter[16] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[17] , conv_32_weights_bp[17] , s_conv_32_in_error_per_filter[17] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[18] , conv_32_weights_bp[18] , s_conv_32_in_error_per_filter[18] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[19] , conv_32_weights_bp[19] , s_conv_32_in_error_per_filter[19] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[20] , conv_32_weights_bp[20] , s_conv_32_in_error_per_filter[20] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[21] , conv_32_weights_bp[21] , s_conv_32_in_error_per_filter[21] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[22] , conv_32_weights_bp[22] , s_conv_32_in_error_per_filter[22] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[23] , conv_32_weights_bp[23] , s_conv_32_in_error_per_filter[23] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[24] , conv_32_weights_bp[24] , s_conv_32_in_error_per_filter[24] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[25] , conv_32_weights_bp[25] , s_conv_32_in_error_per_filter[25] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[26] , conv_32_weights_bp[26] , s_conv_32_in_error_per_filter[26] );
	conv_bp_mc_sum <  conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[27] , conv_32_weights_bp[27] , s_conv_32_in_error_per_filter[27] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[28] , conv_32_weights_bp[28] , s_conv_32_in_error_per_filter[28] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[29] , conv_32_weights_bp[29] , s_conv_32_in_error_per_filter[29] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[30] , conv_32_weights_bp[30] , s_conv_32_in_error_per_filter[30] );
	conv_bp_mc_sum < conv_32_in_channels , conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_filter_height , conv_32_filter_width >
		( s_conv_32_out_error_per_filter[31] , conv_32_weights_bp[31] , s_conv_32_in_error_per_filter[31] );

	conv_bp_aggregate < conv_32_out_height , conv_32_out_width , conv_32_out_channels , conv_32_in_channels >
		( s_conv_32_in_error_per_filter , s_conv_32_in_error );

/***** layer 1, 14x14x16 -> maxp 2x2 backprop -> 28x28x16 *****/
	maxp_error_propagation < maxp_16_in_height , maxp_16_in_width , maxp_16_in_channels , maxp_16_filter_height , maxp_16_filter_width , maxp_16_filter_stride , 2 >
		( s_conv_32_in_error , s_maxp_16_activations_window , s_maxp_16_in_error );

	write_gmem ( s_conv_16_fmap_gc , s_conv_32_fmap_gc , s_dense_fmap_gc , s_maxp_16_in_error , maxp_16_in_error );
}


void accel (
	float gmem_input_data[image_height][image_width] ,
	unsigned int label ,

	float gmem_conv_16_weights[conv_16_filter_height][conv_16_filter_width][conv_16_num_filters] ,
	float gmem_conv_16_biases[conv_16_num_filters] ,

	float gmem_conv_32_weights_fp[conv_32_in_channels][conv_32_filter_height][conv_32_filter_width][conv_32_num_filters] ,
	float gmem_conv_32_weights_bp[conv_32_num_filters][conv_32_filter_height][conv_32_filter_width][conv_32_in_channels] ,
	float gmem_conv_32_biases[conv_32_num_filters] ,

	float gmem_dense_weights[dense_num_in][dense_num_kernels] ,
	float gmem_dense_biases[dense_num_kernels] ,

	float gmem_softmax_weights[softmax_num_in][softmax_num_kernels] ,
	float gmem_softmax_biases[softmax_num_kernels] ,

	float maxp_16_in_error[ maxp_16_in_height * maxp_16_in_width * maxp_16_in_channels ] )
{
//#pragma HLS INTERFACE mode=m_axi port=gmem_dense_weights bundle=dense_weights max_write_burst_length=1 num_write_outstanding=1 max_widen_bitwidth=1024 // read only

	/***** Save variables locally. *****/
	float conv_16_weights[conv_16_filter_height][conv_16_filter_width][conv_16_num_filters];
	float conv_16_biases[conv_16_num_filters];

	float conv_32_weights_fp[conv_32_in_channels][conv_32_filter_height * conv_32_filter_width * conv_32_num_filters];
#pragma HLS ARRAY_PARTITION variable=conv_32_weights_fp type=complete dim=1
	float conv_32_weights_bp[conv_32_num_filters][conv_32_filter_height * conv_32_filter_width * conv_32_in_channels];
#pragma HLS ARRAY_PARTITION variable=conv_32_weights_bp type=complete dim=1
	float conv_32_biases[conv_32_num_filters];

	float dense_weights[dense_num_in][dense_num_kernels];
#pragma HLS ARRAY_RESHAPE variable=dense_weights dim=2 type=complete
#pragma HLS STREAM variable=dense_weights type=shared depth=3
	float dense_biases[dense_num_kernels];

	float softmax_weights[softmax_num_in][softmax_num_kernels];
#pragma HLS ARRAY_RESHAPE variable=softmax_weights dim=2 type=complete
#pragma HLS STREAM variable=softmax_weights type=shared depth=3
	float softmax_biases[softmax_num_kernels];

	save_variables_locally (
		gmem_conv_16_weights , gmem_conv_16_biases ,
		gmem_conv_32_weights_fp , gmem_conv_32_weights_bp , gmem_conv_32_biases ,
		gmem_dense_weights , gmem_dense_biases ,
		gmem_softmax_weights , gmem_softmax_biases ,
		conv_16_weights , conv_16_biases ,
		conv_32_weights_fp , conv_32_weights_bp , conv_32_biases ,
		dense_weights , dense_biases ,
		softmax_weights , softmax_biases );

	dataflow_region ( gmem_input_data , label ,
		conv_16_weights , conv_16_biases ,
		conv_32_weights_fp , conv_32_weights_bp , conv_32_biases ,
		dense_weights , dense_biases ,
		softmax_weights , softmax_biases ,
		maxp_16_in_error );
}
