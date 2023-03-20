/**
 * @file update_arrays.hpp
 * @author Emmanouil Petrakos
 * @brief Holds helpful functions to update the weight and variable arrays.
 *
 * @copyright None
 *
 * Developed with Vitis HLS 2022.1.
 */

#include "cnn_accelerator.hpp"
	//, hls::stream < float >& l0_conv_bias_grad
void update_l0_conv_weights ( float lr , hls::stream < float >& l0_conv_weight_grad ,
	float l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f] ,
	float l0_conv_weight_momentum[l0_conv_f_h][l0_conv_f_w][l0_conv_f])
{
	for ( uint h = 0 ; h < l0_conv_f_h ; h++ )
		for ( uint w = 0 ; w < l0_conv_f_w ; w++ )
			for ( uint f = 0 ; f < l0_conv_f ; f++ )
			{
#pragma HLS PIPELINE off
				float change = lr * l0_conv_weight_grad.read() + MOMENTUM_CONSTANT * l0_conv_weight_momentum[h][w][f];
				l0_conv_weights[h][w][f] -= change;
				l0_conv_weight_momentum[h][w][f] = change;
			}
}

void update_l0_conv_biases ( float lr , hls::stream < float >& l0_conv_bias_grad ,
	float l0_conv_biases[l0_conv_f] , float l0_conv_bias_momentum[l0_conv_f] )
{
	for ( uint f = 0 ; f < l0_conv_f ; f++ )
	{
#pragma HLS PIPELINE off
		float change = lr * l0_conv_bias_grad.read() + MOMENTUM_CONSTANT * l0_conv_bias_momentum[f];
		l0_conv_biases[f] -= change;
		l0_conv_bias_momentum[f] = change;
	}
}

void update_l2_conv_weights ( float lr , hls::stream < float >& l2_conv_weight_grad ,
	float l2_conv_weights_fp[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f] ,
	float l2_conv_weights_bp[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f] ,
	float l2_conv_weight_momentum[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f])
{
	for ( uint h = 0 ; h < l2_conv_f_h ; h++ )
		for ( uint w = 0 ; w < l2_conv_f_w ; w++ )
			for ( uint c = 0 ; c < l2_conv_in_c ; c++ )
				for ( uint f = 0 ; f < l2_conv_f ; f++ )
				{
#pragma HLS PIPELINE II=11
					float change = lr * l2_conv_weight_grad.read() + MOMENTUM_CONSTANT * l2_conv_weight_momentum[h][w][c][f];
					l2_conv_weights_fp[h][w][c][f] -= change;
					l2_conv_weights_bp[h][w][c][f] = l2_conv_weights_fp[h][w][c][f];
					l2_conv_weight_momentum[h][w][c][f] = change;
				}
}

void update_l2_conv_biases ( float lr , hls::stream < float >& l2_conv_bias_grad ,
	float l2_conv_biases[l2_conv_f] , float l2_conv_bias_momentum[l2_conv_f] )
{
	for ( uint f = 0 ; f < l2_conv_f ; f++ )
	{
#pragma HLS PIPELINE off//II=1 style=frp
		float change = lr * l2_conv_bias_grad.read() + MOMENTUM_CONSTANT * l2_conv_bias_momentum[f];
		l2_conv_biases[f] -= change;
		l2_conv_bias_momentum[f] = change;
	}
}

void update_l4_dens_weights ( float lr , float l4_dens_weight_grad[l4_dens_in_size][l4_dens_k] ,
	float l4_dens_weights[l4_dens_in_size][l4_dens_k] , float l4_dens_weight_momentum[l4_dens_in_size][l4_dens_k] )
{
	for ( uint i = 0 ; i < l4_dens_in_size ; i++ )
#pragma HLS PIPELINE II=32
		for ( uint k = 0 ; k < l4_dens_k ; k++ )
		{
			float change = lr * l4_dens_weight_grad[i][k] + MOMENTUM_CONSTANT * l4_dens_weight_momentum[i][k];
			l4_dens_weights[i][k] -= change;
			l4_dens_weight_grad[i][k] = 0.f;
			l4_dens_weight_momentum[i][k] = change;
		}
}

void update_l4_dens_biases ( float lr , float l4_dens_bias_grad[l4_dens_k] ,
	float l4_dens_biases[l4_dens_k] , float l4_dens_bias_momentum[l4_dens_k] )
{
	for ( uint k = 0 ; k < l4_dens_k ; k++ )
	{
#pragma HLS PIPELINE off
		float change = lr * l4_dens_bias_grad[k] + MOMENTUM_CONSTANT * l4_dens_bias_momentum[k];
		l4_dens_biases[k] -= change;
		l4_dens_bias_grad[k] = 0.f;
		l4_dens_bias_momentum[k] = change;
	}
}

void update_l5_soft_weights ( float lr , float l5_soft_weight_grad[l5_soft_in_size][l5_soft_k] ,
	float l5_soft_weights[l5_soft_in_size][l5_soft_k] , float l5_soft_weight_momentum[l5_soft_in_size][l5_soft_k] )
{
	for ( uint i = 0 ; i < l5_soft_in_size ; i++ )
		for ( uint k = 0 ; k < l5_soft_k ; k++ )
		{
#pragma HLS PIPELINE off
			float change = lr * l5_soft_weight_grad[i][k] + MOMENTUM_CONSTANT * l5_soft_weight_momentum[i][k];
			l5_soft_weights[i][k] -= change;
			l5_soft_weight_grad[i][k] = 0.f;
			l5_soft_weight_momentum[i][k] = change;
		}
}

void update_l5_soft_biases ( float lr , float l5_soft_bias_grad[l5_soft_k] ,
	float l5_soft_biases[l5_soft_k] , float l5_soft_bias_momentum[l5_soft_k] )
{
	for ( uint k = 0 ; k < l5_soft_k ; k++ )
	{
#pragma HLS PIPELINE off
		float change = lr * l5_soft_bias_grad[k] + MOMENTUM_CONSTANT * l5_soft_bias_momentum[k];
		l5_soft_biases[k] -= change;
		l5_soft_bias_grad[k] = 0.f;
		l5_soft_bias_momentum[k] = change;
	}
}
