#include "softmax_fwp.hpp"

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
	static float softmax_weights[softmax_num_in][softmax_num_kernels];
	static float softmax_biases[softmax_num_kernels];
	static float softmax_feature_map[softmax_num_out];
	static bool softmax_activations[softmax_num_out];

	axis_float_stream input_stream;
	/*********** Get input ***********/
	std::ifstream file;
	std::string line;

	file.open("data/l4_dense_cpp.txt");
	for( int y = 0 ; y < softmax_num_in ; y++ )
	{
		getline( file , line );
		axis_float temp_axis_float;
		temp_axis_float.data = std::stof( line );
		input_stream.write( temp_axis_float );
	}
	file.close();

	/*********** Get variables ***********/
	file.open("data/l5_weights.txt");
	for( int y = 0 ; y < softmax_num_in ; y++ )
		for ( int x = 0 ; x < softmax_num_kernels ; x++ )
		{
			getline( file , line );
			softmax_weights[y][x] = std::stof( line );
		}
	file.close();

	file.open("data/l5_biases.txt");
	for( int kernel = 0 ; kernel < softmax_num_kernels ; kernel++ )
	{
		getline( file , line );
		softmax_biases[kernel] = std::stof(line);
	}
	file.close();

	/*********** Call IP ***********/
	accel ( input_stream , softmax_weights , softmax_biases , softmax_feature_map );

	/*********** Print Results ***********/
	save_array < softmax_num_out > ( softmax_feature_map , "data/l5_softmax_hls.txt" , 4 );
}
