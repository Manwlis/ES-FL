#pragma once

#include <stdio.h>
#include <string.h>

#include <iostream>
#include <iomanip>
#include <fstream>

/***********************************************************************************/
/* Info for the host to find and execute the accelerator.                          */
/***********************************************************************************/
#define c_device_index     0
#define c_binary_file_name "binary_container_1.xclbin"
#define c_kernel_name      "accel"

/***********************************************************************************/
/* Size definitions                                                                */
/***********************************************************************************/
#define num_batches			2 // !!! Needs to change in both host.hpp and all_fwp_bp.hpp
#define batch_size			2
#define c_learning_rate 0.01f

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

/***********************************************************************************/
/* Layer 2: Convolution with 16 3x3 filters.                                       */
/***********************************************************************************/
#define l2_conv_f_h			 3
#define l2_conv_f_w			 3
#define l2_conv_f			16
#define l2_conv_in_c		16

/***********************************************************************************/
/* Layer 4: Fully connected ReLU layer with 64 kernels.                            */
/***********************************************************************************/
#define l4_dens_in_size		784
#define l4_dens_k			64

/***********************************************************************************/
/* Layer 5: Fully connected Softmax layer with 10 kernels.                         */
/***********************************************************************************/
#define l5_soft_in_size		64
#define l5_soft_k			10

/***********************************************************************************/
/* Datatype definitions.                                                           */
/***********************************************************************************/
typedef unsigned int uint;
typedef float t_data;
typedef unsigned int t_label; // change this to ap_uint 4 bits?

/***********************************************************************************/
/* Auxiliary functions.                                                            */
/***********************************************************************************/
// Saves array to file.
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

// Reads array from file.
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
