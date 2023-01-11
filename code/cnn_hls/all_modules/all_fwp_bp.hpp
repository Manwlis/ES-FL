#pragma once

#include <hls_stream.h>
#include <hls_math.h>
#include <stdio.h>
#include <string.h>

/***** Size definitions *****/
#define num_batches			1
#define batch_size			10
#define learning_rate_const 0.01f

// 28x28x1 image
#define input_h				28
#define input_w				28
#define input_c				 1

// passes through 16 3x3 filters
#define l0_conv_f_h			 3
#define l0_conv_f_w			 3
#define l0_conv_f			16

#define l0_conv_in_h		input_h	// 28
#define l0_conv_in_w		input_w	// 28
#define l0_conv_in_c		input_c	// 1

#define l0_conv_out_h		l0_conv_in_h	// 28
#define l0_conv_out_w		l0_conv_in_w	// 28
#define l0_conv_out_c		l0_conv_f		// 16

#define l0_conv_num_wnd		l0_conv_in_h * l0_conv_in_w * l0_conv_in_c

// max pooling 2x2x1 with (2,2,1) stride
#define l1_maxp_f_h			 2
#define l1_maxp_f_w			 2
#define l1_maxp_f_st		 2

#define l1_maxp_in_h		l0_conv_out_h	// 28
#define l1_maxp_in_w		l0_conv_out_w	// 28
#define l1_maxp_in_c		l0_conv_out_c	// 16

#define l1_maxp_out_h		l1_maxp_in_h / l1_maxp_f_st		// 14
#define l1_maxp_out_w		l1_maxp_in_w / l1_maxp_f_st		// 14
#define l1_maxp_out_c		l1_maxp_in_c					// 16

#define l1_maxp_num_wnd 	(l1_maxp_in_h * l1_maxp_in_w * l1_maxp_in_c) / (l1_maxp_f_h * l1_maxp_f_w)

// 32 3x3 filters
#define l2_conv_f_h			 3
#define l2_conv_f_w			 3
#define l2_conv_f			16

#define l2_conv_in_h		l1_maxp_out_h	// 14
#define l2_conv_in_w		l1_maxp_out_w	// 14
#define l2_conv_in_c		l1_maxp_out_c	// 16

#define l2_conv_out_h		l1_maxp_out_h	// 14
#define l2_conv_out_w		l1_maxp_out_w	// 14
#define l2_conv_out_c		l2_conv_f		// 16

#define l2_conv_num_wnd		l2_conv_in_h * l2_conv_in_w * l2_conv_in_c

// max pooling 2x2x1 with (2,2,1) stride
#define l3_maxp_f_h			 2
#define l3_maxp_f_w			 2
#define l3_maxp_f_st		 2

#define l3_maxp_in_h		l2_conv_out_h	// 14
#define l3_maxp_in_w		l2_conv_out_w	// 14
#define l3_maxp_in_c		l2_conv_out_c	// 16

#define l3_maxp_out_h		l3_maxp_in_h / l3_maxp_f_st	// 7
#define l3_maxp_out_w		l3_maxp_in_w / l3_maxp_f_st	// 7
#define l3_maxp_out_c		l3_maxp_in_c				// 16

#define l3_maxp_num_wnd		(l3_maxp_in_h * l3_maxp_in_w * l3_maxp_in_c) / (l3_maxp_f_h * l3_maxp_f_w )

// fully connected layer
#define l4_dens_in_size		l3_maxp_out_c * l3_maxp_out_h * l3_maxp_out_w	// 784
#define l4_dens_k			64
#define l4_dens_out_size	l4_dens_k										// 64

// softmax classification layer
#define l5_soft_in_size		l4_dens_out_size	// 64
#define l5_soft_k			10
#define l5_soft_out_size	l5_soft_k			// 10

/***** Datatypes definitions *****/
typedef unsigned int uint;
typedef unsigned int t_label; // change this to ap_uint 4 bits


/***** Helper functions & structs *****/
template < typename in_type , uint filter_height , uint filter_width >
struct window {
	in_type elements[filter_height][filter_width];

	void operator=(const window& input)
	{
		for( int h = 0 ; h < filter_height ; h++ )
			for( int w = 0 ; w < filter_width ; w++ )
				this->elements[h][w] = input.elements[h][w];
	}
};

template < typename data_type , uint size >
struct window_1d
{
	data_type elements[size];

	void operator=( const window_1d& in )
	{
		for( int s = 0 ; s < size ; s++ )
			this->elements[s] = in.elements[s];
	}
	void operator+=( const window_1d& in )
	{
		for( int s = 0 ; s < size ; s++ )
			this->elements[s] += in.elements[s];
	}
};


// Reads a stream and puts its data on global memory
template < typename out_type , uint num_elements >
void write_mem ( hls::stream< out_type >& s_input , out_type output[num_elements] )
{
	write_out_mem: for ( uint i = 0 ; i < num_elements ; i++ )
	{
		out_type temp = s_input.read();
		output[i] = temp;
	}
}


template < typename out_type , uint _batch_size , uint size >
void duplicate_stream ( hls::stream< out_type >& s_in , hls::stream< out_type >& s_out_1 , hls::stream< out_type >& s_out_2 )
{

	batch: for ( uint batch = 0 ; batch < _batch_size ; batch++ )
		dup_stream: for( uint i = 0 ; i < size ; i++ )
		{
#pragma HLS PIPELINE II=1 style=frp
			out_type temp = s_in.read();
			s_out_1.write( temp );
			s_out_2.write( temp );
		}
}


extern "C"
{
void accel ( float learning_rate ,
	float gmem_input_data[num_batches][batch_size][input_h][input_w] , uint gmem_label[num_batches][batch_size] ,
	float gmem_l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f] , float gmem_l0_conv_biases[l0_conv_f] ,
	float gmem_l2_conv_weights[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f] , float gmem_l2_conv_biases[l2_conv_f] ,
	float gmem_l4_dens_weights[l4_dens_in_size][l4_dens_k] , float gmem_l4_dens_biases[l4_dens_k] ,
	float gmem_l5_soft_weights[l5_soft_in_size][l5_soft_k] , float gmem_l5_soft_biases[l5_soft_k] );
}
