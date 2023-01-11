#include "conv_2d_fwp.hpp"

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
	static float input[conv_32_in_height][conv_32_in_width][conv_32_in_channels];
	static float conv_32_weights[conv_32_filter_height][conv_32_filter_width][conv_32_in_channels][conv_32_num_filters];
	static float conv_32_biases[conv_32_num_filters];
	static float conv_32_feature_map[conv_32_out_height][conv_32_out_width][conv_32_out_channels];
	/*********** Get input ***********/
	std::ifstream input_file("data/l1_maxp16_cpp.txt");
	std::string temp;

	for( int y = 0 ; y < conv_32_in_height ; y++ )
		for ( int x = 0 ; x < conv_32_in_width ; x++ )
			for ( int k = 0 ; k < conv_32_in_channels ; k++ )
			{
				input_file >> temp;
				input[y][x][k] = std::stof(temp);
			}
	/*********** Get variables ***********/
	std::ifstream file;
	std::string line;

	file.open("data/l2_weights.txt");
	for( int y = 0 ; y < conv_32_filter_height ; y++ )
		for ( int x = 0 ; x < conv_32_filter_width ; x++ )
			for ( int channel = 0 ; channel < conv_32_in_channels ; channel++ )
				for ( int kernel = 0 ; kernel < conv_32_num_filters ; kernel++ )
				{
					getline( file , line );
					conv_32_weights[y][x][channel][kernel] = std::stof(line);
				}
	file.close();

	file.open("data/l2_biases.txt");
	for( int kernel = 0 ; kernel < conv_32_num_filters ; kernel++ )
	{
		getline( file , line );
		conv_32_biases[kernel] = std::stof(line);
	}
	file.close();

	/*********** Call IP ***********/
	accel ( reinterpret_cast<float*>(input) , conv_32_weights , conv_32_biases , reinterpret_cast<float*>(conv_32_feature_map) );

	/*********** Print Results ***********/
	save_array < conv_32_out_height * conv_32_out_width * conv_32_out_channels > ( reinterpret_cast<float*>(conv_32_feature_map) , "data/l2_conv_cpp.txt" , 4 );
}
