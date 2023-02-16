#include "all_fwp_bp.hpp"

#include <iostream>
#include <iomanip>
#include <fstream>

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

	for ( int c0  = 0 ; c0 < dim0 ; c0++ )
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
	std::string num;

	for ( uint c2 = 0 ; c2 < dim2 ; c2++ )
		for ( uint c1 = 0 ; c1 < dim1 ; c1++ )
				for ( uint c0 = 0 ; c0 < dim0 ; c0++ )
				{
					file >> num; // stored as array in the file.
					array[c2][c1][c0] = std::stof( num );
				}
	file.close();
}

int main ( int argc , char** argv )
{
	/*********** Get variables ***********/
	static float l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f];
	static float l0_conv_biases[l0_conv_f];

	static float l2_conv_weights[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f];
	static float l2_conv_biases[l2_conv_f];

	static float l4_dens_weights[l4_dens_in_size][l4_dens_k];
	static float l4_dens_biases[l4_dens_k];

	static float l5_soft_weights[l5_soft_in_size][l5_soft_k];
	static float l5_soft_biases[l5_soft_k];

	/********** layer 0 **********/
	file_to_3d_array < float , l0_conv_f_h , l0_conv_f_w , l0_conv_f >
		( l0_conv_weights , "data/l0_weights.txt" );
	file_to_1d_array < float , l0_conv_f >
		( l0_conv_biases , "data/l0_biases.txt" );

	/********** layer 2 **********/
	file_to_4d_array < float , l2_conv_f_h , l2_conv_f_w , l2_conv_in_c , l2_conv_f >
		( l2_conv_weights , "data/l2_weights.txt" );
	file_to_1d_array < float , l2_conv_f >
		( l2_conv_biases , "data/l2_biases.txt" );

	/********** layer 4 **********/
	file_to_2d_array < float , l4_dens_in_size , l4_dens_k >
		( l4_dens_weights , "data/l4_weights.txt" );
	file_to_1d_array < float , l4_dens_k >
		( l4_dens_biases , "data/l4_biases.txt" );

	/********** layer 5 **********/
	file_to_2d_array < float , l5_soft_in_size , l5_soft_k >
		( l5_soft_weights , "data/l5_weights.txt" );
	file_to_1d_array < float , l5_soft_k >
		( l5_soft_biases , "data/l5_biases.txt" );

	/*********** Get input ***********/
	static float input_data[num_batches][batch_size][ input_h * input_w ];
	static uint input_labels[num_batches][batch_size];


	read_input_data < float , num_batches , batch_size , input_h * input_w > ( input_data , "data/array.txt" );

	// TODO: get labels from file:
	// file_to_2d_array < uint , num_batches * batch_size > ( input_labels , "data/labels.txt" );
	input_labels[0][0] = 2;
	input_labels[0][1] = 1;
	input_labels[1][0] = 2;
	input_labels[1][1] = 1;

	/******* Get learning rate *******/
	float learning_rate = learning_rate_const / float(batch_size);

	/*********** Call IP ***********/
	cnn_accelerator ( learning_rate , input_data , input_data , input_labels ,
		l0_conv_weights , l0_conv_biases , l2_conv_weights , l2_conv_biases ,
		l4_dens_weights , l4_dens_biases , l5_soft_weights , l5_soft_biases );

	/*********** Print Results ***********/
	save_array < l0_conv_f_h * l0_conv_f_w * l0_conv_f > ( reinterpret_cast<float*>(l0_conv_weights) , "variables/l0_weights_hls.txt" , 6 );
	save_array < l0_conv_f > ( l0_conv_biases , "variables/l0_biases_hls.txt" , 6 );

	save_array < l2_conv_f_h * l2_conv_f_w * l2_conv_in_c * l2_conv_f > ( reinterpret_cast<float*>(l2_conv_weights) , "variables/l2_weights_hls.txt" , 6 );
	save_array < l2_conv_f > ( l2_conv_biases , "variables/l2_biases_hls.txt" , 6 );

	save_array < l4_dens_in_size * l4_dens_k > ( reinterpret_cast<float*>(l4_dens_weights) ,"variables/l4_weights_hls.txt" , 6 );
	save_array < l4_dens_k > ( l4_dens_biases , "variables/l4_biases_hls.txt" , 6 );

	save_array < l5_soft_in_size * l5_soft_k > ( reinterpret_cast<float*>(l5_soft_weights) ,"variables/l5_weights_hls.txt" , 6 );
	save_array < l5_soft_k > ( l5_soft_biases , "variables/l5_biases_hls.txt" , 6 );
}
