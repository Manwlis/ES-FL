#include "all_fwp_bp.hpp"
#include "dense_layer.hpp"
#include "softmax_layer.hpp"
#include "maxp_layer.hpp"
#include "conv_layer.hpp"
#include "update_arrays.hpp"

void maxi_labels_to_stream ( uint batch ,
	t_label input_labels[num_batches][batch_size] , hls::stream < t_label >& s_input )
{
	stream_labels:
	for ( uint s = 0 ; s < batch_size ; s++ )
#pragma HLS PIPELINE II=1
		s_input.write( input_labels[batch][s] );
}


// read inputs in chunks to minimize global memory accesses.
template  < uint _buf_size >
void maxi_data_to_stream_part1 ( uint batch ,
	float input_data[num_batches][batch_size][ input_h * input_w ] ,
	hls::stream < window_1d< float , _buf_size > >& s_input_buffered )
{
	window_1d < float , _buf_size > local_buffer;

	stream_batch_get_buffer:
	for ( uint s = 0 ; s < batch_size ; s++ )
		for ( uint hw = 0 ; hw < input_h * input_w / _buf_size ; hw++ )
		{
#pragma HLS PIPELINE II=1
			for( int b = 0 ; b < _buf_size ; b++ )
				local_buffer.elements[b] = input_data[batch][s][ hw * _buf_size + b ];

			s_input_buffered.write( local_buffer);
		}
}

template  < uint _buf_size >
void maxi_data_to_stream_part2 (
	hls::stream < window_1d< float , _buf_size > >& s_input_buffered ,
	hls::stream < float >& s_input )
{
	window_1d < float , _buf_size > local_buffer;

	stream_batch_unbuffer:
	for ( uint s = 0 ; s < batch_size ; s++ )
		for ( uint hw = 0 ; hw < input_h * input_w / _buf_size ; hw++ )
			for( int b = 0 ; b < _buf_size ; b++ )
			{
#pragma HLS PIPELINE II=1 style=frp
				if ( b == 0 )
					local_buffer = s_input_buffered.read();

				s_input.write( local_buffer.elements[b] );
			}
}


void save_variables_locally (
	float gmem_l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f] , float gmem_l0_conv_biases[l0_conv_f] ,
	float gmem_l2_conv_weights[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f] , float gmem_l2_conv_biases[l2_conv_f] ,
	float gmem_l4_dens_weights[l4_dens_in_size][l4_dens_k] , float gmem_l4_dens_biases[l4_dens_k] ,
	float gmem_l5_soft_weights[l5_soft_in_size][l5_soft_k] , float gmem_l5_soft_biases[l5_soft_k] ,

	float l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f] , float l0_conv_biases[l0_conv_f] ,
	float l2_conv_weights_fp[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f] ,
	float l2_conv_weights_bp[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f] , float l2_conv_biases[l2_conv_f] ,
	float l4_dens_weights[l4_dens_in_size][l4_dens_k] , float l4_dens_biases[l4_dens_k] ,
	float l5_soft_weights[l5_soft_in_size][l5_soft_k] , float l5_soft_biases[l5_soft_k] )
{

	store_l0_weights:
	for ( uint h = 0 ; h < l0_conv_f_h ; h++ )
		for ( uint w = 0 ; w < l0_conv_f_w ; w++ )
			for ( uint f = 0 ; f < l0_conv_f ; f++ )
#pragma HLS PIPELINE II=1
				l0_conv_weights[h][w][f] = gmem_l0_conv_weights[h][w][f];

	store_l0_biases:
	for ( uint i = 0 ; i < l0_conv_f ; i++ )
#pragma HLS PIPELINE II=1
		l0_conv_biases[i] = gmem_l0_conv_biases[i];

	store_l2_weights:
	for ( uint h = 0 ; h < l2_conv_f_h ; h++ )
		for ( uint w = 0 ; w < l2_conv_f_w ; w++ )
			for ( uint c = 0 ; c < l2_conv_in_c ; c++ )
				for ( uint f = 0 ; f < l2_conv_f ; f++ )
				{
#pragma HLS PIPELINE II=1
					float temp = gmem_l2_conv_weights[h][w][c][f];
					l2_conv_weights_fp[h][w][c][f] = temp;
					l2_conv_weights_bp[h][w][c][f] = temp;
				}

	store_l2_biases:
	for ( uint i = 0 ; i < l2_conv_f ; i++ )
#pragma HLS PIPELINE II=1
		l2_conv_biases[i] = gmem_l2_conv_biases[i];

	store_l4_weights:
	for ( uint i = 0 ; i < l4_dens_in_size ; i++ )
#pragma HLS PIPELINE II=4
		for ( uint k = 0 ; k < l4_dens_k ; k++ )
			l4_dens_weights[i][k] = gmem_l4_dens_weights[i][k];

	store_l4_biases:
	for ( uint i = 0 ; i < l4_dens_k ; i++ )
#pragma HLS PIPELINE II=1
		l4_dens_biases[i] = gmem_l4_dens_biases[i];

	store_l5_weights:
	for ( uint i = 0 ; i < l5_soft_in_size ; i++ )
		for ( uint k = 0 ; k < l5_soft_k ; k++ )
#pragma HLS PIPELINE II=1
		l5_soft_weights[i][k] = gmem_l5_soft_weights[i][k];

	store_l5_biases:
	for ( uint i = 0 ; i < l5_soft_k ; i++ )
#pragma HLS UNROLL
		l5_soft_biases[i] = gmem_l5_soft_biases[i];
}

void save_variables_globally (
		float gmem_l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f] , float gmem_l0_conv_biases[l0_conv_f] ,
		float gmem_l2_conv_weights[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f] , float gmem_l2_conv_biases[l2_conv_f] ,
		float gmem_l4_dens_weights[l4_dens_in_size][l4_dens_k] , float gmem_l4_dens_biases[l4_dens_k] ,
		float gmem_l5_soft_weights[l5_soft_in_size][l5_soft_k] , float gmem_l5_soft_biases[l5_soft_k] ,

		float l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f] , float l0_conv_biases[l0_conv_f] ,
		float l2_conv_weights_fp[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f] , float l2_conv_biases[l2_conv_f] ,
		float l4_dens_weights[l4_dens_in_size][l4_dens_k] , float l4_dens_biases[l4_dens_k] ,
		float l5_soft_weights[l5_soft_in_size][l5_soft_k] , float l5_soft_biases[l5_soft_k] )
{
	gmem_l0_conv_weights:
	for ( uint h = 0 ; h < l0_conv_f_h ; h++ )
		for ( uint w = 0 ; w < l0_conv_f_w ; w++ )
			for ( uint f = 0 ; f < l0_conv_f ; f++ )
#pragma HLS PIPELINE II=1
				gmem_l0_conv_weights[h][w][f] = l0_conv_weights[h][w][f];

	gmem_l0_conv_biases:
	for ( uint f = 0 ; f < l0_conv_f ; f++ )
#pragma HLS PIPELINE II=1
		gmem_l0_conv_biases[f] = l0_conv_biases[f];

	gmem_l2_conv_weights:
	for ( uint h = 0 ; h < l2_conv_f_h ; h++ )
		for ( uint w = 0 ; w < l2_conv_f_w ; w++ )
			for ( uint c = 0 ; c < l2_conv_in_c ; c++ )
				for ( uint f = 0 ; f < l2_conv_f ; f++ )
#pragma HLS PIPELINE II=1
					gmem_l2_conv_weights[h][w][c][f] = l2_conv_weights_fp[h][w][c][f];

	gmem_l2_conv_biases:
	for ( uint f = 0 ; f < l2_conv_f ; f++ )
#pragma HLS PIPELINE II=1
		gmem_l2_conv_biases[f] = l2_conv_biases[f];

	gmem_l4_dens_weights: for ( uint i = 0 ; i < l4_dens_in_size ; i++ )
#pragma HLS PIPELINE II=4
		for ( uint k = 0 ; k < l4_dens_k ; k++ )
			gmem_l4_dens_weights[i][k] = l4_dens_weights[i][k];

	gmem_l4_dens_biases: for ( uint k = 0 ; k < l4_dens_k ; k++ )
#pragma HLS PIPELINE II=1
		gmem_l4_dens_biases[k] = l4_dens_biases[k];

	gmem_l5_soft_weights:
	for ( uint i = 0 ; i < l5_soft_in_size ; i++ )
		for ( uint k = 0 ; k < l5_soft_k ; k++ )
#pragma HLS PIPELINE II=1
			gmem_l5_soft_weights[i][k] = l5_soft_weights[i][k];

	gmem_l5_soft_biases: for ( uint k = 0 ; k < l5_soft_k ; k++ )
#pragma HLS UNROLL
		gmem_l5_soft_biases[k] = l5_soft_biases[k];
}


void fp_bp_cg (
	float gmem_input_data_fp[num_batches][batch_size][input_h * input_w] ,
	float gmem_input_data_cg[num_batches][batch_size][input_h * input_w] ,
	t_label gmem_labels[num_batches][batch_size] ,
	uint batch ,

	float l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f] , float l0_conv_biases[l0_conv_f] ,
	float l2_conv_weights_fp[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f] , float l2_conv_weights_bp[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f] ,
	float l2_conv_biases[l2_conv_f] ,
	float l4_dens_weights[l4_dens_in_size][l4_dens_k] , float l4_dens_biases[l4_dens_k] ,
	float l5_soft_weights[l5_soft_in_size][l5_soft_k] , float l5_soft_biases[l5_soft_k] ,

	float l5_soft_weight_grad[l5_soft_in_size][l5_soft_k] , float l5_soft_bias_grad[l5_soft_k] ,
	float l4_dens_weight_grad[l4_dens_in_size][l4_dens_k] , float l4_dens_bias_grad[l4_dens_k] ,
	float l2_conv_weight_grad[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f] , float l2_conv_bias_grad[l2_conv_f] ,
	float l0_conv_weight_grad[l0_conv_f_h][l0_conv_f_w][l0_conv_f] , float l0_conv_bias_grad[l0_conv_f] )
{
// cosim sometimes works, other times not. TODO: Try on real hardware
#pragma HLS STABLE variable=batch
#pragma HLS STABLE variable=l0_conv_weights
#pragma HLS STABLE variable=l0_conv_biases
#pragma HLS STABLE variable=l2_conv_weights_fp
#pragma HLS STABLE variable=l2_conv_weights_bp
#pragma HLS STABLE variable=l2_conv_biases
#pragma HLS STABLE variable=l4_dens_weights
#pragma HLS STABLE variable=l4_dens_biases
#pragma HLS STABLE variable=l5_soft_weights
#pragma HLS STABLE variable=l5_soft_biases

//#pragma HLS STABLE variable=l0_conv_weight_grad
//#pragma HLS STABLE variable=l0_conv_bias_grad
//#pragma HLS STABLE variable=l2_conv_weight_grad
//#pragma HLS STABLE variable=l2_conv_bias_grad
//#pragma HLS STABLE variable=l4_dens_weight_grad
//#pragma HLS STABLE variable=l4_dens_bias_grad
//#pragma HLS STABLE variable=l5_soft_weight_grad
//#pragma HLS STABLE variable=l5_soft_bias_grad

#pragma HLS DATAFLOW

	// input streams. maxi inputs
	hls::stream < window_1d < float , maxi_buffer_size > ,  1 > s_input_fp_buffered ("s_input_fp_buffered");
	hls::stream <                                  float , 16 > s_input_fp ("s_input_fp");
	hls::stream < window_1d < float , maxi_buffer_size > ,  1 > s_input_cg_buffered ("s_input_cg_buffered");
	hls::stream <                                  float , 16 > s_input_cg ("s_input_cg");
	hls::stream <                                t_label ,  3 > s_labels ("s_labels");

	/* forward propagation streams */
	hls::stream < window < float , l0_conv_f_h , l0_conv_f_w > ,  3 > s_l0_conv_in_wnd_fp;
	hls::stream < window < float , l0_conv_f_h , l0_conv_f_w > ,  2 > s_l0_conv_in_pad_wnd_fp;
	hls::stream <                                        float ,  3 > s_l0_conv_k_sums;
	hls::stream <                                        float , 20 > s_l0_conv_fmap_fp;
	hls::stream < window < float , l1_maxp_f_h , l1_maxp_f_w > ,  2 > s_l1_maxp_in_wnd;
	hls::stream <                                        float ,  3 > s_l1_maxp_fmap;
	hls::stream <                                        float , 20 > s_l1_maxp_fmap_fp;
	hls::stream < window < float , l2_conv_f_h , l2_conv_f_w > ,  2 > s_l2_conv_in_wnd_fp;
	hls::stream < window < float , l2_conv_f_h , l2_conv_f_w > ,  2 > s_l2_conv_in_pad_wnd_fp;
	hls::stream <              window_1d < float , l2_conv_f > ,  1 > s_l2_conv_k_sums_per_c;
	hls::stream <              window_1d < float , l2_conv_f > ,  1 > s_l2_conv_k_sums;
	hls::stream <                                        float ,  3 > s_l3_maxp_fmap;
	hls::stream <                                        float ,  2 > s_l2_conv_fmap_fp;
	hls::stream < window < float , l3_maxp_f_h , l3_maxp_f_w > ,  2 > s_l3_maxp_in_window;
	hls::stream <                                        float ,  3 > s_l3_maxp_fmap_fp;
	hls::stream <                                        float ,  3 > s_l4_dens_fmap_fp;
	hls::stream <                                        float , 10 > s_l5_soft_fmap_fp;

	/* back propagation streams */
	hls::stream <                                        float ,  2 > s_err_bp;
	hls::stream <                                        float ,  2 > s_l5_soft_in_err;
	hls::stream <                                        float ,  2 > s_l4_dens_bp_k_err;
	hls::stream <                                        float ,  3 > s_l4_dens_in_err;
	hls::stream <                                        float ,  3 > s_l3_maxp_in_err;
	hls::stream <                                        float , 20 > s_l2_conv_act_out_err;
	hls::stream <                                        float ,  5 > s_l2_conv_act_out_err_bp;
	hls::stream < window < float , l2_conv_f_h , l2_conv_f_w > ,  3 > s_l2_conv_out_err_wnd;
	hls::stream < window < float , l2_conv_f_h , l2_conv_f_w > ,  2 > s_l2_conv_out_err_pad_wnd;
	hls::stream <           window_1d < float , l2_conv_in_c > ,  2 > s_l2_c_err_per_f;
	hls::stream <           window_1d < float , l2_conv_in_c > ,  3 > s_l2_c_err;
	hls::stream <                                        float , 20 > s_l2_conv_in_err;
	hls::stream <                                        float ,  3 > s_l1_maxp_in_err;

	/* calculate gradients streams */
	hls::stream <                                        float ,  2 > s_err_cg;
	hls::stream <                                        float ,  2 > s_l4_dens_k_err_cg;
	hls::stream < window < float , l2_conv_f_h , l2_conv_f_w > ,  1 > s_l2_conv_in_wnd_cg; // 1 so data is saved in the float stream "s_l1_maxp_fmap_cg"
	hls::stream < window < float , l2_conv_f_h , l2_conv_f_w > ,  1 > s_l2_conv_in_pad_wnd_cg;
	hls::stream <                                        float , 20 > s_l2_conv_act_out_err_cg;
	hls::stream <          window_1d < float , l2_conv_out_c > ,  2 > s_l2_cg_grouped_k_err;
	hls::stream < window < float , l0_conv_f_h , l0_conv_f_w > ,  1 > s_l0_conv_in_wnd_cg; // 1 so data is saved in the float stream "s_input_cg"
	hls::stream < window < float , l0_conv_f_h , l0_conv_f_w > ,  1 > s_l0_conv_in_pad_wnd_cg;
	hls::stream <                                        float ,  2 > s_l0_conv_out_error;

	/* Red streams */
#define s_f 2
	hls::stream <                                        bool ,           s_f * l0_conv_out_h * l0_conv_out_w * l0_conv_f > s_l0_conv_acts;
	hls::stream < window < bool , l1_maxp_f_h , l1_maxp_f_w > ,                                     s_f * l1_maxp_num_wnd > s_l1_maxp_acts_wnd;
	hls::stream <                                        bool ,           s_f * l2_conv_out_h * l2_conv_out_w * l2_conv_f > s_l2_conv_acts;
	hls::stream < window < bool , l3_maxp_f_h , l3_maxp_f_w > ,                                     s_f * l3_maxp_num_wnd > s_l3_maxp_acts_wnd;
	hls::stream <                                        bool ,                                     /* s_f * */ l4_dens_k > s_l4_dens_acts;
	hls::stream <                                       float ,                                     /* s_f * */ l4_dens_k > s_l4_dens_fmap_cg;
	hls::stream <                                       float ,       s_f * l3_maxp_out_h * l3_maxp_out_w * l3_maxp_out_c > s_l3_maxp_fmap_cg; // that one is spooky
	hls::stream <                                       float ,       s_f * l1_maxp_out_h * l1_maxp_out_w * l1_maxp_out_c > s_l1_maxp_fmap_cg; // needs just depth 2886 in cosim

	/************************************************/
	/***************** Forward prop *****************/
	/************************************************/
	maxi_data_to_stream_part1 < maxi_buffer_size > ( batch , gmem_input_data_fp , s_input_fp_buffered );
	maxi_data_to_stream_part2 < maxi_buffer_size > ( s_input_fp_buffered , s_input_fp );

/***** Layer 0, 28x28x1 -> conv 16 filters of 3x3, padded, stride 1 -> 28x28x16 *****/
	// create windows
	conv_create_window_stream < float , batch_size , l0_conv_in_h , l0_conv_in_w , l0_conv_in_c , l0_conv_f_h , l0_conv_f_w >
		( s_input_fp , s_l0_conv_in_wnd_fp );
	conv_pad_windows < float , batch_size , l0_conv_in_h , l0_conv_in_w , l0_conv_in_c , l0_conv_f_h , l0_conv_f_w >
		( s_l0_conv_in_wnd_fp , s_l0_conv_in_pad_wnd_fp );

	// full convolution
	conv_fp_1c_sum < float , batch_size , l0_conv_in_h , l0_conv_in_w , l0_conv_f_h , l0_conv_f_w , l0_conv_f >
		( s_l0_conv_in_pad_wnd_fp , l0_conv_weights , l0_conv_biases , s_l0_conv_k_sums );
	conv_fp_1c_activate < batch_size , l0_conv_in_h , l0_conv_in_w , l0_conv_f_h , l0_conv_f_w , l0_conv_f >
		( s_l0_conv_k_sums , s_l0_conv_fmap_fp , s_l0_conv_acts );

/***** layer 1, 28x28x16 -> maxpool 2x2, stride 2,2 -> 14x14x16 *****/
	// create windows
	maxp_create_window_stream < batch_size , l1_maxp_in_h , l1_maxp_in_w , l1_maxp_in_c , l1_maxp_f_h , l1_maxp_f_w >
		( s_l0_conv_fmap_fp , s_l1_maxp_in_wnd );

	// maxpool
	maxp_fp < batch_size , l1_maxp_num_wnd , l1_maxp_f_h , l1_maxp_f_w >
		( s_l1_maxp_in_wnd , s_l1_maxp_fmap , s_l1_maxp_acts_wnd );

	// duplicate to send a copy to calculate gradients function
	duplicate_stream < float , batch_size , l1_maxp_out_h * l1_maxp_out_w * l1_maxp_out_c >
		( s_l1_maxp_fmap , s_l1_maxp_fmap_fp , s_l1_maxp_fmap_cg );

/***** layer 2, 14x14x16 -> conv 32 filters of 3x3, padded, stride 1 -> 14x14x32 *****/
	// create windows
	conv_create_window_stream < float , batch_size , l2_conv_in_h , l2_conv_in_w , l2_conv_in_c , l2_conv_f_h , l2_conv_f_w >
		( s_l1_maxp_fmap_fp , s_l2_conv_in_wnd_fp );
	conv_pad_windows < float , batch_size , l2_conv_in_h , l2_conv_in_w , l2_conv_in_c , l2_conv_f_h , l2_conv_f_w >
		( s_l2_conv_in_wnd_fp , s_l2_conv_in_pad_wnd_fp );

	// full convolution
	conv_fp_mc_sum < float , batch_size , l2_conv_in_h , l2_conv_in_w , l2_conv_in_c , l2_conv_f_h , l2_conv_f_w , l2_conv_f >
		( s_l2_conv_in_pad_wnd_fp , l2_conv_weights_fp , s_l2_conv_k_sums_per_c );
	conv_fp_mc_aggregate_channels < batch_size , l2_conv_in_h , l2_conv_in_w , l2_conv_in_c , l2_conv_f >
		( s_l2_conv_k_sums_per_c , s_l2_conv_k_sums );
	conv_fp_mc_activate < batch_size , l2_conv_in_h , l2_conv_in_w , l2_conv_f >
		( s_l2_conv_k_sums , l2_conv_biases , s_l2_conv_fmap_fp , s_l2_conv_acts );

/***** layer 3, 14x14x32 -> maxpool 2x2, stride 2,2 -> 7x7x32 *****/
	// create windows
	maxp_create_window_stream < batch_size , l3_maxp_in_h , l3_maxp_in_w , l3_maxp_in_c , l3_maxp_f_h , l3_maxp_f_w >
		( s_l2_conv_fmap_fp , s_l3_maxp_in_window );

	// maxpool
	maxp_fp < batch_size , l3_maxp_num_wnd , l3_maxp_f_h , l3_maxp_f_w >
		( s_l3_maxp_in_window , s_l3_maxp_fmap , s_l3_maxp_acts_wnd );

	// duplicate to send a copy to calculate gradients
	duplicate_stream < float , batch_size , l3_maxp_out_h * l3_maxp_out_w * l3_maxp_out_c >
		( s_l3_maxp_fmap , s_l3_maxp_fmap_fp , s_l3_maxp_fmap_cg );

/***** layer 4, 7x7x32 = 1568 -> fully connected 64 -> 64 *****/
	dense_fp < batch_size , l4_dens_k , l4_dens_in_size >
		( s_l3_maxp_fmap_fp , l4_dens_weights , l4_dens_biases , s_l4_dens_fmap_fp , s_l4_dens_fmap_cg , s_l4_dens_acts );

/***** layer 5, 64 -> fully connected softmax 10 -> 10 normalized *****/
	softmax_fp < batch_size , l5_soft_k , l5_soft_in_size >
		( s_l4_dens_fmap_fp , l5_soft_weights , l5_soft_biases , s_l5_soft_fmap_fp );

	/************************************************/
	/****************** Back prop *******************/
	/************************************************/
/***** Loss function *****/
	maxi_labels_to_stream( batch, gmem_labels , s_labels );
	sparce_categorical_cross_entropy < num_batches , batch_size , l5_soft_k >
		( s_l5_soft_fmap_fp , s_labels , s_err_bp , s_err_cg );

/***** layer 5, 10 -> fully connected softmax 10 backprop -> 64 *****/
	softmax_bp < batch_size , l5_soft_k , l5_soft_in_size >
		( s_err_bp , l5_soft_weights , s_l5_soft_in_err );

/***** layer 4, 64 -> fully connected relu 64 backprop -> 1568 *****/
	activate_kernel_errors < batch_size , l4_dens_k , l4_dens_in_size >
		( s_l4_dens_acts , s_l5_soft_in_err , s_l4_dens_bp_k_err , s_l4_dens_k_err_cg );
	dense_bp < batch_size , l4_dens_k , l4_dens_in_size >
		( l4_dens_weights , s_l4_dens_bp_k_err , s_l4_dens_in_err );

/***** layer 3, 7x7x32 -> maxp 2x2 backprop -> 14x14x32 *****/
	maxp_bp < batch_size , l3_maxp_in_h , l3_maxp_in_w , l3_maxp_in_c , l3_maxp_f_h , l3_maxp_f_w , l3_maxp_f_st >
		( s_l4_dens_in_err , s_l3_maxp_acts_wnd , s_l3_maxp_in_err );

/***** layer 2, 14x14x32 -> conv 3x3 backprop -> 14x14x16 *****/
	// filter unactivated errors
	conv_bp_activate_error < batch_size , l2_conv_out_h , l2_conv_out_w , l2_conv_out_c >
		( s_l3_maxp_in_err , s_l2_conv_acts , s_l2_conv_act_out_err );

	// duplicate to send a copy to cg
	duplicate_stream < float , batch_size , l2_conv_out_h * l2_conv_out_w * l2_conv_out_c >
		( s_l2_conv_act_out_err , s_l2_conv_act_out_err_bp , s_l2_conv_act_out_err_cg );

	// put activations & errors in windows
	conv_create_window_stream < float , batch_size , l2_conv_out_h , l2_conv_out_w , l2_conv_out_c , l2_conv_f_h , l2_conv_f_w >
		( s_l2_conv_act_out_err_bp , s_l2_conv_out_err_wnd );
	conv_pad_windows < float , batch_size , l2_conv_out_h , l2_conv_out_w , l2_conv_out_c , l2_conv_f_h , l2_conv_f_w >
		( s_l2_conv_out_err_wnd , s_l2_conv_out_err_pad_wnd );

	// full convolution back prop
	conv_bp_mc_sum < batch_size , l2_conv_in_h , l2_conv_in_w , l2_conv_in_c , l2_conv_f_h , l2_conv_f_w , l2_conv_f >
		( s_l2_conv_out_err_pad_wnd , l2_conv_weights_bp , s_l2_c_err_per_f );
	conv_bp_mc_aggregate_channels < batch_size , l2_conv_in_h , l2_conv_in_w , l2_conv_in_c , l2_conv_f >
		( s_l2_c_err_per_f , s_l2_c_err );
	conv_bp_mc_stream < batch_size , l2_conv_in_h , l2_conv_in_w , l2_conv_in_c >
		( s_l2_c_err , s_l2_conv_in_err );

/***** layer 1, 14x14x16 -> maxp 2x2 backprop -> 28x28x16 *****/
	maxp_bp < batch_size , l1_maxp_in_h , l1_maxp_in_w , l1_maxp_in_c , l1_maxp_f_h , l1_maxp_f_w , l1_maxp_f_st >
		( s_l2_conv_in_err , s_l1_maxp_acts_wnd , s_l1_maxp_in_err );

	/************************************************/
	/******************* Calc grad ******************/
	/************************************************/
/***** layer 5, 64->10 -> softmax regression -> 640 , 10 *****/
	softmax_cg < batch_size , l5_soft_k , l5_soft_in_size >
		( s_l4_dens_fmap_cg , s_err_cg , l5_soft_weight_grad, l5_soft_bias_grad );

/***** layer 4, 1568->64 -> dense regression -> 1568 , 64 *****/
	dense_cg < batch_size , l4_dens_k , l4_dens_in_size >
		( s_l3_maxp_fmap_cg , s_l4_dens_k_err_cg , l4_dens_weight_grad, l4_dens_bias_grad );

/***** layer 2, 14*14*16->14*14*32 -> conv regression -> 14*14*16*32 , 32 *****/
	conv_create_window_stream < float , batch_size , l2_conv_in_h , l2_conv_in_w , l2_conv_in_c , l2_conv_f_h , l2_conv_f_w >
		( s_l1_maxp_fmap_cg , s_l2_conv_in_wnd_cg );
	conv_pad_windows < float , batch_size , l2_conv_in_h , l2_conv_in_w , l2_conv_in_c , l2_conv_f_h , l2_conv_f_w >
		( s_l2_conv_in_wnd_cg , s_l2_conv_in_pad_wnd_cg );

	// calc gradients
	conv_cg_mc_group_kernel_errors < batch_size , l2_conv_out_h , l2_conv_out_w , l2_conv_out_c >
		( s_l2_conv_act_out_err_cg , s_l2_cg_grouped_k_err );
	conv_cg_mc < float , batch_size , l2_conv_in_h , l2_conv_in_w , l2_conv_in_c , l2_conv_f_h , l2_conv_f_w , l2_conv_f >
		( s_l2_conv_in_pad_wnd_cg , s_l2_cg_grouped_k_err , l2_conv_weight_grad , l2_conv_bias_grad );

/***** layer 0, 28*28->28*28*16 -> conv regression -> 28*28*32 , 16 *****/
	maxi_data_to_stream_part1 < maxi_buffer_size > ( batch , gmem_input_data_cg , s_input_cg_buffered );
	maxi_data_to_stream_part2 < maxi_buffer_size > ( s_input_cg_buffered , s_input_cg );

	conv_create_window_stream < float , batch_size , l0_conv_in_h , l0_conv_in_w , l0_conv_in_c , l0_conv_f_h , l0_conv_f_w >
		( s_input_cg , s_l0_conv_in_wnd_cg );
	conv_pad_windows < float , batch_size , l0_conv_in_h , l0_conv_in_w , l0_conv_in_c , l0_conv_f_h , l0_conv_f_w >
		( s_l0_conv_in_wnd_cg , s_l0_conv_in_pad_wnd_cg );

	conv_bp_activate_error < batch_size , l0_conv_out_h , l0_conv_out_w , l0_conv_out_c >
		( s_l1_maxp_in_err , s_l0_conv_acts , s_l0_conv_out_error );

	conv_cg_sc < float , batch_size , l0_conv_in_h , l0_conv_in_w , l0_conv_in_c , l0_conv_f_h , l0_conv_f_w , l0_conv_f >
		( s_l0_conv_in_pad_wnd_cg , s_l0_conv_out_error , l0_conv_weight_grad , l0_conv_bias_grad );
}


void update_variables ( float batch_lr ,
	float l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f] , float l0_conv_biases[l0_conv_f] ,
	float l2_conv_weights_fp[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f] , float l2_conv_weights_bp[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f] ,
	float l2_conv_biases[l2_conv_f] ,
	float l4_dens_weights[l4_dens_in_size][l4_dens_k] , float l4_dens_biases[l4_dens_k] ,
	float l5_soft_weights[l5_soft_in_size][l5_soft_k] , float l5_soft_biases[l5_soft_k] ,

	float l5_soft_weight_grad[l5_soft_in_size][l5_soft_k] , float l5_soft_bias_grad[l5_soft_k] ,
	float l4_dens_weight_grad[l4_dens_in_size][l4_dens_k] , float l4_dens_bias_grad[l4_dens_k] ,
	float l2_conv_weight_grad[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f] , float l2_conv_bias_grad[l2_conv_f] ,
	float l0_conv_weight_grad[l0_conv_f_h][l0_conv_f_w][l0_conv_f] , float l0_conv_bias_grad[l0_conv_f] )
{
#pragma HLS DATAFLOW

#pragma HLS STABLE variable=l0_conv_weights
#pragma HLS STABLE variable=l0_conv_biases
#pragma HLS STABLE variable=l2_conv_weights_fp
#pragma HLS STABLE variable=l2_conv_weights_bp
#pragma HLS STABLE variable=l2_conv_biases
#pragma HLS STABLE variable=l4_dens_weights
#pragma HLS STABLE variable=l4_dens_biases
#pragma HLS STABLE variable=l5_soft_weights
#pragma HLS STABLE variable=l5_soft_biases

#pragma HLS STABLE variable=l0_conv_weight_grad
#pragma HLS STABLE variable=l0_conv_bias_grad
#pragma HLS STABLE variable=l2_conv_weight_grad
#pragma HLS STABLE variable=l2_conv_bias_grad
#pragma HLS STABLE variable=l4_dens_weight_grad
#pragma HLS STABLE variable=l4_dens_bias_grad
#pragma HLS STABLE variable=l5_soft_weight_grad
#pragma HLS STABLE variable=l5_soft_bias_grad

	update_l0_conv_weights ( batch_lr , l0_conv_weight_grad , l0_conv_weights );
	update_l0_conv_biases ( batch_lr , l0_conv_bias_grad , l0_conv_biases );

	update_l2_conv_weights ( batch_lr , l2_conv_weight_grad , l2_conv_weights_fp , l2_conv_weights_bp );
	update_l2_conv_biases ( batch_lr , l2_conv_bias_grad , l2_conv_biases );

	update_l4_dens_weights ( batch_lr , l4_dens_weight_grad , l4_dens_weights );
	update_l4_dens_biases ( batch_lr , l4_dens_bias_grad , l4_dens_biases );

	update_l5_soft_weights ( batch_lr , l5_soft_weight_grad , l5_soft_weights );
	update_l5_soft_biases ( batch_lr , l5_soft_bias_grad , l5_soft_biases );
}


void accel ( float learning_rate ,
	float gmem_input_data_fp[num_batches][batch_size][input_h * input_w] ,
	float gmem_input_data_cg[num_batches][batch_size][input_h * input_w] ,
	uint gmem_labels[num_batches][batch_size] ,

	float gmem_l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f] , float gmem_l0_conv_biases[l0_conv_f] ,
	float gmem_l2_conv_weights[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f] , float gmem_l2_conv_biases[l2_conv_f] ,
	float gmem_l4_dens_weights[l4_dens_in_size][l4_dens_k] , float gmem_l4_dens_biases[l4_dens_k] ,
	float gmem_l5_soft_weights[l5_soft_in_size][l5_soft_k] , float gmem_l5_soft_biases[l5_soft_k] )
{
#pragma HLS INTERFACE mode=m_axi port=gmem_labels
#pragma HLS INTERFACE mode=m_axi port=gmem_input_data_fp bundle=gmem1
#pragma HLS INTERFACE mode=m_axi port=gmem_input_data_cg bundle=gmem2

	/***** Save variables locally. *****/
	float l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f];
	float l0_conv_biases[l0_conv_f];
	float l2_conv_weights_fp[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f];
	float l2_conv_weights_bp[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f];
	float l2_conv_biases[l2_conv_f];
	float l4_dens_weights[l4_dens_in_size][l4_dens_k];
	float l4_dens_biases[l4_dens_k];
	float l5_soft_weights[l5_soft_in_size][l5_soft_k];
	float l5_soft_biases[l5_soft_k];

	float l5_soft_weight_grad[l5_soft_in_size][l5_soft_k];
	float l5_soft_bias_grad[l5_soft_k];
	float l4_dens_weight_grad[l4_dens_in_size][l4_dens_k];
	float l4_dens_bias_grad[l4_dens_k];
	float l2_conv_weight_grad[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f];
	float l2_conv_bias_grad[l2_conv_f];
	float l0_conv_weight_grad[l0_conv_f_h][l0_conv_f_w][l0_conv_f];
	float l0_conv_bias_grad[l0_conv_f];

// data that are needed in multiple processes must be shared
#pragma HLS STREAM variable=l4_dens_weights type=shared depth=3
#pragma HLS STREAM variable=l5_soft_weights type=shared depth=3

#pragma HLS ARRAY_PARTITION variable=l0_conv_weights dim=1 type=complete
#pragma HLS ARRAY_PARTITION variable=l0_conv_weights dim=2 type=complete
#pragma HLS ARRAY_PARTITION variable=l2_conv_weights_fp dim=4 type=cyclic factor=4
#pragma HLS ARRAY_PARTITION variable=l2_conv_weights_bp dim=3 type=cyclic factor=4
#pragma HLS ARRAY_PARTITION variable=l4_dens_weights dim=2 type=cyclic factor=8
#pragma HLS ARRAY_PARTITION variable=l5_soft_weights dim=2 type=complete

#pragma HLS ARRAY_PARTITION variable=l0_conv_weight_grad dim=2 type=complete
#pragma HLS ARRAY_PARTITION variable=l2_conv_bias_grad dim=1 type=cyclic factor=2
#pragma HLS ARRAY_PARTITION variable=l2_conv_weight_grad dim=4 type=cyclic factor=16
#pragma HLS ARRAY_PARTITION variable=l4_dens_weight_grad dim=2 type=cyclic factor=8
#pragma HLS ARRAY_PARTITION variable=l5_soft_weight_grad dim=2 type=complete

	save_variables_locally (
		gmem_l0_conv_weights , gmem_l0_conv_biases , gmem_l2_conv_weights , gmem_l2_conv_biases ,
		gmem_l4_dens_weights , gmem_l4_dens_biases , gmem_l5_soft_weights , gmem_l5_soft_biases ,
		l0_conv_weights , l0_conv_biases , l2_conv_weights_fp , l2_conv_weights_bp , l2_conv_biases ,
		l4_dens_weights , l4_dens_biases , l5_soft_weights , l5_soft_biases );

	for ( uint num_batch = 0 ; num_batch < num_batches ; num_batch++ )
	{
		fp_bp_cg ( gmem_input_data_fp , gmem_input_data_cg , gmem_labels , num_batch ,
			l0_conv_weights , l0_conv_biases , l2_conv_weights_fp , l2_conv_weights_bp , l2_conv_biases ,
			l4_dens_weights , l4_dens_biases , l5_soft_weights , l5_soft_biases ,
			l5_soft_weight_grad , l5_soft_bias_grad , l4_dens_weight_grad , l4_dens_bias_grad ,
			l2_conv_weight_grad , l2_conv_bias_grad , l0_conv_weight_grad , l0_conv_bias_grad );

		update_variables( learning_rate ,
			l0_conv_weights , l0_conv_biases , l2_conv_weights_fp , l2_conv_weights_bp , l2_conv_biases ,
			l4_dens_weights , l4_dens_biases , l5_soft_weights , l5_soft_biases ,
			l5_soft_weight_grad , l5_soft_bias_grad , l4_dens_weight_grad , l4_dens_bias_grad ,
			l2_conv_weight_grad , l2_conv_bias_grad , l0_conv_weight_grad , l0_conv_bias_grad );
	}

	save_variables_globally (
		gmem_l0_conv_weights , gmem_l0_conv_biases , gmem_l2_conv_weights , gmem_l2_conv_biases ,
		gmem_l4_dens_weights , gmem_l4_dens_biases , gmem_l5_soft_weights , gmem_l5_soft_biases ,
		l0_conv_weights , l0_conv_biases , l2_conv_weights_fp , l2_conv_biases ,
		l4_dens_weights , l4_dens_biases , l5_soft_weights , l5_soft_biases );
}
