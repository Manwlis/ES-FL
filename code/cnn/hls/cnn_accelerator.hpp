#pragma once

#include <hls_stream.h>
#include <hls_math.h>
#include <stdio.h>
#include <string.h>

/***********************************************************************************/
/* Size definitions                                                                */
/***********************************************************************************/
#define LOCAL_EPOCHS		 1
#define NUM_BATCHES			 2
#define BATCH_SIZE			 2
#define NUM_INPUTS		NUM_BATCHES * BATCH_SIZE
#define NUM_VARIABLES	105866
#define c_learning_rate  0.01f
#define MOMENTUM_CONSTANT 0.9f

/***********************************************************************************/
/* Input: 28x28x1 array.                                                           */
/***********************************************************************************/
#define input_h				28
#define input_w				28
#define input_c				 1

/***********************************************************************************/
/* Layer 0: Convolution with 16 3x3 filters.                                       */
/***********************************************************************************/
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

/***********************************************************************************/
/* Layer 1: Max pooling  with 2x2x1 filter (2,2,1) stride.                         */
/***********************************************************************************/
#define l1_maxp_f_h			 2
#define l1_maxp_f_w			 2
#define l1_maxp_f_st		 2

#define l1_maxp_in_h		l0_conv_out_h	// 28
#define l1_maxp_in_w		l0_conv_out_w	// 28
#define l1_maxp_in_c		l0_conv_out_c	// 16

#define l1_maxp_out_h		( l1_maxp_in_h / l1_maxp_f_st )	// 14
#define l1_maxp_out_w		( l1_maxp_in_w / l1_maxp_f_st )	// 14
#define l1_maxp_out_c		l1_maxp_in_c					// 16

#define l1_maxp_num_wnd 	(l1_maxp_in_h * l1_maxp_in_w * l1_maxp_in_c) / (l1_maxp_f_h * l1_maxp_f_w)

/***********************************************************************************/
/* Layer 2: Convolution with 16 3x3 filters.                                       */
/***********************************************************************************/
#define l2_conv_f_h			 3
#define l2_conv_f_w			 3
#define l2_conv_f			32

#define l2_conv_in_h		l1_maxp_out_h	// 14
#define l2_conv_in_w		l1_maxp_out_w	// 14
#define l2_conv_in_c		l1_maxp_out_c	// 16

#define l2_conv_out_h		l1_maxp_out_h	// 14
#define l2_conv_out_w		l1_maxp_out_w	// 14
#define l2_conv_out_c		l2_conv_f		// 32

#define l2_conv_num_wnd		l2_conv_in_h * l2_conv_in_w * l2_conv_in_c

/***********************************************************************************/
/* Layer 3: Max pooling  with 2x2x1 filter (2,2,1) stride.                         */
/***********************************************************************************/
#define l3_maxp_f_h			 2
#define l3_maxp_f_w			 2
#define l3_maxp_f_st		 2

#define l3_maxp_in_h		l2_conv_out_h	// 14
#define l3_maxp_in_w		l2_conv_out_w	// 14
#define l3_maxp_in_c		l2_conv_out_c	// 32

#define l3_maxp_out_h		( l3_maxp_in_h / l3_maxp_f_st )	// 7
#define l3_maxp_out_w		( l3_maxp_in_w / l3_maxp_f_st )	// 7
#define l3_maxp_out_c		l3_maxp_in_c					// 32

#define l3_maxp_num_wnd		(l3_maxp_in_h * l3_maxp_in_w * l3_maxp_in_c) / (l3_maxp_f_h * l3_maxp_f_w )

/***********************************************************************************/
/* Layer 4: Fully connected ReLU layer with 64 kernels.                            */
/***********************************************************************************/
#define l4_dens_in_size		l3_maxp_out_c * l3_maxp_out_h * l3_maxp_out_w	// 1568
#define l4_dens_k			64
#define l4_dens_out_size	l4_dens_k										// 64

/***********************************************************************************/
/* Layer 5: Fully connected Softmax layer with 10 kernels.                         */
/***********************************************************************************/
#define l5_soft_in_size		l4_dens_out_size	// 64
#define l5_soft_k			10
#define l5_soft_out_size	l5_soft_k			// 10

/***********************************************************************************/
/* Datatype definitions.                                                           */
/***********************************************************************************/
typedef unsigned int uint;
typedef unsigned int t_label; // change this to ap_uint 4 bits?

/***********************************************************************************/
/* HLS tools can't pass primitive arrays through streams.                          */
/* Instead, these structs are used.                                                */
/***********************************************************************************/
template < typename in_type , uint filter_height , uint filter_width >
struct window {
	in_type elements[filter_height][filter_width];

	void operator=( const window& input )
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

/***********************************************************************************/
/* Auxiliary functions.                                                            */
/***********************************************************************************/
// Duplicates a stream.
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

/***********************************************************************************/
/* Expose top function of the design to the host.                                  */
/***********************************************************************************/
extern "C"
{
void cnn_accelerator ( float learning_rate ,
	float gmem_input_data_fp[NUM_BATCHES][BATCH_SIZE][input_h][input_w] ,
	float gmem_input_data_cg[NUM_BATCHES][BATCH_SIZE][input_h][input_w] ,
	t_label gmem_labels[NUM_BATCHES][BATCH_SIZE] ,
	float trainable_variables[NUM_VARIABLES] );
}
