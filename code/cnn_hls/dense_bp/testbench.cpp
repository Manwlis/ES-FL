#include "dense_bp.hpp"

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


int main ( int argc , char** argv )
{
	/*********** Get inputs  ***********/
	static float dense_weights[dense_num_in][dense_num_kernels];
	static float dense_output_error[dense_num_kernels];
	static bool activations[dense_num_kernels];

	std::ifstream file;
	std::string line;

	file.open("data/l4_weights.txt");
	for ( int i = 0 ; i < dense_num_in ; i++ )
		for ( int kernel = 0 ; kernel < dense_num_kernels ; kernel++ )
		{
			getline( file , line );
			dense_weights[i][kernel] = std::stof( line );
		}
	file.close();

	file.open("data/l4_dense_error_cpp.txt");
	for ( int kernel = 0 ; kernel < dense_num_kernels ; kernel++ )
	{
		getline( file , line );
		dense_output_error[kernel] = std::stof( line );
	}
	file.close();

	file.open("data/l4_dense_activations_cpp.txt");
	for ( int kernel = 0 ; kernel < dense_num_kernels ; kernel++ )
	{
		getline( file , line );
		float temp = std::stof( line );
		activations[kernel] = ( temp > 0 );
	}
	file.close();

	/*********** Call IP ***********/
	float dense_input_error[dense_num_in];
	accel( dense_weights , dense_output_error , activations , dense_input_error );

	/*********** Print Results ***********/
	save_array < dense_num_in > ( dense_input_error , "data/l3_out_grad_hls.txt" , 4 );
}
