#pragma once

#include <stdio.h>
#include <string.h>

#include <iostream>
#include <iomanip>
#include <fstream>

/***** Host definitions *****/
#define c_device_index 0
#define c_binary_file_name "binary_container_1.xclbin" // TODO: find correct name
#define c_kernel_name "accel"

/***** Size definitions *****/
#define num_batches			1
#define batch_size			2
#define c_learning_rate 0.01f

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
typedef float t_data;
typedef unsigned int t_label; // change this to ap_uint 4 bits

/***** Helper functions & structs *****/
template < uint num_elements >
void save_array( float array[num_elements] , const char* file_name , const uint precision )
{
	std::ofstream file;
	file.open( file_name );
	file.precision( precision );

	for ( uint element = 0 ; element < num_elements ; element++ )
		file << std::fixed << array[element] << "\n";

	file.close();
}

template < typename data_type , uint dim0 >
void file_to_1d_array ( data_type array[dim0] , std::string filename )
{
	std::ifstream file( filename );
	std::string line;

	for ( uint c0  = 0 ; c0 < dim0 ; c0++ )
	{
		getline( file , line );
		array[c0] = std::stof( line );
	}
	file.close();
}

template < typename data_type , uint dim1 , uint dim0 >
void file_to_2d_array ( data_type array[dim1][dim0] , std::string filename )
{
	std::ifstream file( filename );
	std::string line;

	for ( uint c1  = 0 ; c1 < dim1 ; c1++ )
		for ( uint c0  = 0 ; c0 < dim0 ; c0++ )
		{
			getline( file , line );
			array[c1][c0] = std::stof( line );
		}
	file.close();
}

template < typename data_type , uint dim2 , uint dim1 , uint dim0 >
void file_to_3d_array ( data_type array[dim2][dim1][dim0] , std::string filename )
{
	std::ifstream file( filename );
	std::string line;

	for ( uint c2  = 0 ; c2 < dim2 ; c2++ )
		for ( uint c1  = 0 ; c1 < dim1 ; c1++ )
			for ( uint c0  = 0 ; c0 < dim0 ; c0++ )
			{
				getline( file , line );
				array[c2][c1][c0] = std::stof( line );
			}
	file.close();
}

template < typename data_type , uint dim3 , uint dim2 , uint dim1 , uint dim0 >
void file_to_4d_array ( data_type array[dim3][dim2][dim1][dim0] , std::string filename )
{
	std::ifstream file( filename );
	std::string line;

	for ( uint c3  = 0 ; c3 < dim2 ; c3++ )
		for ( uint c2  = 0 ; c2 < dim2 ; c2++ )
			for ( uint c1  = 0 ; c1 < dim1 ; c1++ )
				for ( uint c0  = 0 ; c0 < dim0 ; c0++ )
				{
					getline( file , line );
					array[c3][c2][c1][c0] = std::stof( line );
				}
	file.close();
}

template < typename data_type , uint dim2 , uint dim1 , uint dim0 >
void read_input_data ( data_type array[dim2][dim1][dim0] , std::string filename )
{
	std::ifstream file( filename );
	std::string line;

		for ( uint c2 = 0 ; c2 < dim2 ; c2++ )
			for( uint c1 = 0 ; c1 < dim1 ; c1++ )
				for ( uint c0 = 0 ; c0 < dim0 ; c0++ )
				{
					file >> line; // stored as array in the file.
					array[c2][c1][c0] = std::stof( line );
				}
	file.close();
}
