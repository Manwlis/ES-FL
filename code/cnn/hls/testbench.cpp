#include "cnn_accelerator.hpp"

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
	std::ifstream file( filename , std::ios::binary );
	data_type temp;

	for ( uint c0  = 0 ; c0 < dim0 ; c0++ )
	{
		file.read( reinterpret_cast<char*>(&temp) , sizeof(data_type) );
		array[c0] = temp;
	}
	file.close();
}

template < typename data_type , uint dim1 , uint dim0 >
void file_to_2d_array ( data_type array[dim1][dim0] , std::string filename )
{
	std::ifstream file( filename , std::ios::binary );
	data_type temp;

	for ( uint c1  = 0 ; c1 < dim1 ; c1++ )
		for ( uint c0  = 0 ; c0 < dim0 ; c0++ )
		{
			file.read( reinterpret_cast<char*>(&temp) , sizeof(data_type) );
			array[c1][c0] = temp;
		}
	file.close();
}

template < typename data_type , uint dim2 , uint dim1 , uint dim0 >
void file_to_3d_array ( data_type array[dim2][dim1][dim0] , std::string filename )
{
	std::ifstream file( filename , std::ios::binary );
	data_type temp;

	for ( uint c2  = 0 ; c2 < dim2 ; c2++ )
		for ( uint c1  = 0 ; c1 < dim1 ; c1++ )
			for ( uint c0  = 0 ; c0 < dim0 ; c0++ )
			{
				file.read( reinterpret_cast<char*>(&temp) , sizeof(data_type) );
				array[c2][c1][c0] = temp;
			}
	file.close();
}

template < typename data_type , uint dim3 , uint dim2 , uint dim1 , uint dim0 >
void file_to_4d_array ( data_type array[dim3][dim2][dim1][dim0] , std::string filename )
{
	std::ifstream file( filename , std::ios::binary );
	data_type temp;

	for ( uint c3  = 0 ; c3 < dim3 ; c3++ )
		for ( uint c2  = 0 ; c2 < dim2 ; c2++ )
			for ( uint c1  = 0 ; c1 < dim1 ; c1++ )
				for ( uint c0  = 0 ; c0 < dim0 ; c0++ )
				{
					file.read( reinterpret_cast<char*>(&temp) , sizeof(data_type) );
					array[c3][c2][c1][c0] = temp;
				}
	file.close();
}

int main ( int argc , char** argv )
{
	/*********** Get variables ***********/
	std::cout << "Get variables" << std::endl;
	static float l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f];
	static float l0_conv_biases[l0_conv_f];

	static float l2_conv_weights[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f];
	static float l2_conv_biases[l2_conv_f];

	static float l4_dens_weights[l4_dens_in_size][l4_dens_k];
	static float l4_dens_biases[l4_dens_k];

	static float l5_soft_weights[l5_soft_in_size][l5_soft_k];
	static float l5_soft_biases[l5_soft_k];

	/********** layer 0 **********/
	file_to_3d_array < float , l0_conv_f_h , l0_conv_f_w , l0_conv_f > ( l0_conv_weights , "data/l0_weights.bin" );
	file_to_1d_array < float , l0_conv_f > ( l0_conv_biases , "data/l0_biases.bin" );

	/********** layer 2 **********/
	file_to_4d_array < float , l2_conv_f_h , l2_conv_f_w , l2_conv_in_c , l2_conv_f > ( l2_conv_weights , "data/l2_weights.bin" );
	file_to_1d_array < float , l2_conv_f > ( l2_conv_biases , "data/l2_biases.bin" );

	/********** layer 4 **********/
	file_to_2d_array < float , l4_dens_in_size , l4_dens_k > ( l4_dens_weights , "data/l4_weights.bin" );
	file_to_1d_array < float , l4_dens_k > ( l4_dens_biases , "data/l4_biases.bin" );

	/********** layer 5 **********/
	file_to_2d_array < float , l5_soft_in_size , l5_soft_k > ( l5_soft_weights , "data/l5_weights.bin" );
	file_to_1d_array < float , l5_soft_k > ( l5_soft_biases , "data/l5_biases.bin" );

	/*********** Get input ***********/
	std::cout << "Get inputs" << std::endl;
	static float input_data[c_num_batches][batch_size][input_h][input_w];
	static uint input_labels[c_num_batches][batch_size];

	file_to_4d_array < float , c_num_batches , batch_size , input_h , input_w > ( input_data , "data/images.bin" );
	file_to_2d_array < uint , c_num_batches , batch_size > ( input_labels , "data/labels.bin" );

	/******* Get learning rate *******/
	float learning_rate = c_learning_rate / float(batch_size);

	/*********** Call IP ***********/
	std::cout << "Call accel" << std::endl;
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

   std::ofstream file( "variables/model.bin" , std::ios::out | std::ios::binary );

   file.write( (char*) &l0_conv_weights[0][0][0] , l0_conv_f_h * l0_conv_f_w * l0_conv_f * sizeof(float) );
   file.write( (char*) &l0_conv_biases[0] , l0_conv_f * sizeof(float) );
   file.write( (char*) &l2_conv_weights[0][0][0][0] , l2_conv_f_h * l2_conv_f_w * l2_conv_in_c * l2_conv_f * sizeof(float) );
   file.write( (char*) &l2_conv_biases[0] , l2_conv_f * sizeof(float) );
   file.write( (char*) &l4_dens_weights[0][0] , l4_dens_in_size * l4_dens_k * sizeof(float) );
   file.write( (char*) &l4_dens_biases[0] , l4_dens_k * sizeof(float) );
   file.write( (char*) &l5_soft_weights[0][0] , l5_soft_in_size * l5_soft_k * sizeof(float) );
   file.write( (char*) &l4_dens_biases[0] , l5_soft_k * sizeof(float) );

   file.close();
}
