#include "dense_fwp.hpp"

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
	static float dense_weights[dense_num_in][dense_num_kernels];
	static float dense_biases[dense_num_kernels];
	static float dense_feature_map[dense_num_out];

	axis_float_stream input_stream;
	axis_float temp_axis_float;
	/*********** Get input ***********/
	std::ifstream file;
	std::string line;

	file.open("data/l3_maxp32_cpp.txt");
	for( int y = 0 ; y < dense_num_in ; y++ )
	{
		getline( file , line );
		temp_axis_float.data = std::stof( line );
		input_stream.write( temp_axis_float );
	}
	file.close();

	/*********** Get variables ***********/
	file.open("data/l4_weights.txt");
	for( int y = 0 ; y < dense_num_in ; y++ )
		for ( int x = 0 ; x < dense_num_kernels ; x++ )
		{
			getline( file , line );
			dense_weights[y][x] = std::stof(line);
		}
	file.close();

	file.open("data/l4_biases.txt");
	for( int kernel = 0 ; kernel < dense_num_kernels ; kernel++ )
	{
		getline( file , line );
		dense_biases[kernel] = std::stof(line);
	}
	file.close();

	/*********** Call IP ***********/
	accel ( input_stream , dense_weights , dense_biases , dense_feature_map );

	/*********** Print Results ***********/
	save_array < dense_num_out > ( reinterpret_cast<float*>(dense_feature_map) , "data/l4_dense_hls.txt" , 4 );
}
