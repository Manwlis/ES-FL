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
	{
		file << std::fixed << array[element] << "\n";
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

	std::ifstream file;
	std::string line;

	/********** layer 0 **********/
	file.open("data/l0_weights.txt");
	for( int y = 0 ; y < l0_conv_f_h ; y++ )
		for ( int x = 0 ; x < l0_conv_f_w ; x++ )
			for ( int kernel = 0 ; kernel < l0_conv_f ; kernel++ )
			{
				getline( file , line );
				l0_conv_weights[y][x][kernel] = std::stof( line );
			}
	file.close();

	file.open("data/l0_biases.txt");
	for( int kernel = 0 ; kernel < l0_conv_f ; kernel++ )
	{
		getline( file , line );
		l0_conv_biases[kernel] = std::stof( line );
	}
	file.close();

	/********** layer 2 **********/
	file.open("data/l2_weights.txt");
	for( int y = 0 ; y < l2_conv_f_h ; y++ )
		for ( int x = 0 ; x < l2_conv_f_w ; x++ )
			for ( int channel = 0 ; channel < l2_conv_in_c ; channel++ )
				for ( int kernel = 0 ; kernel < l2_conv_f ; kernel++ )
				{
					getline( file , line );
					l2_conv_weights[y][x][channel][kernel] = std::stof(line);
				}
	file.close();

	file.open("data/l2_biases.txt");
	for( int kernel = 0 ; kernel < l2_conv_f ; kernel++ )
	{
		getline( file , line );
		l2_conv_biases[kernel] = std::stof(line);
	}
	file.close();

	/********** layer 4 **********/
	file.open("data/l4_weights.txt");
	for ( int i = 0 ; i < l4_dens_in_size ; i++ )
		for ( int kernel = 0 ; kernel < l4_dens_k ; kernel++ )
		{
			getline( file , line );
			l4_dens_weights[i][kernel] = std::stof(line);
		}
	file.close();

	file.open("data/l4_biases.txt");
	for( int k = 0 ; k < l4_dens_k ; k++ )
	{
		getline( file , line );
		l4_dens_biases[k] = std::stof(line);
	}
	file.close();

	/********** layer 5 **********/
	file.open("data/l5_weights.txt");
	for ( int i = 0 ; i < l5_soft_in_size ; i++ )
		for ( int kernel = 0 ; kernel < l5_soft_k ; kernel++ )
		{
			getline( file , line );
			l5_soft_weights[i][kernel] = std::stof(line);
		}
	file.close();

	file.open("data/l5_biases.txt");
	for( int k = 0 ; k < l5_soft_k ; k++ )
	{
		getline( file , line );
		l5_soft_biases[k] = std::stof(line);
	}
	file.close();

	/*********** Get input ***********/
	static float input_data[num_batches][batch_size][input_h][input_w];
	static uint input_labels[num_batches][batch_size];

	file.open("data/array.txt");
	for ( uint n = 0 ; n < num_batches ; n++ )
		for ( uint b = 0 ; b < batch_size ; b++ )
			for( int y = 0 ; y < input_h ; y++ )
				for ( int x = 0 ; x < input_w ; x++ )
				{
					file >> line; // stored as array in the file.
					float temp = std::stof( line );
					input_data[n][b][y][x] = temp;
				}
	file.close();

	// TODO: get labels from file
//	for ( uint n = 0 ; n < num_batches ; n++ )
//		for ( uint b = 0 ; b < batch_size ; b++ )
//			input_labels[n][b] = 4;

	input_labels[0][0] = 2;
	input_labels[0][1] = 1;

	/*********** Call IP ***********/
	accel( learning_rate_const , input_data , input_labels ,
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
