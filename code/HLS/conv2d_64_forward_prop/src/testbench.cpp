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
	static float input[conv2d_64_in_height][conv2d_64_in_width][conv2d_64_in_channels];
	static float conv2d_64_weights[conv2d_64_filter_height][conv2d_64_filter_width][conv2d_64_in_channels][conv2d_64_num_filters];
	static float conv2d_64_biases[conv2d_64_num_filters];
	static float conv2d_64_feature_map[conv2d_64_out_height][conv2d_64_out_width][conv2d_64_out_channels];
	static bool conv2d_64_activations[conv2d_64_out_height][conv2d_64_out_width][conv2d_64_out_channels];
	/*********** Get input ***********/
	std::ifstream input_file("temp/l1_maxp32_cpp.txt");
	std::string temp;

	for( int y = 0 ; y < conv2d_64_in_height ; y++ )
	{
		for ( int x = 0 ; x < conv2d_64_in_width ; x++ )
		{
			for ( int k = 0 ; k < conv2d_64_in_channels ; k++ )
			{
				input_file >> temp;
				input[y][x][k] = std::stof(temp);
			}
		}
	}
	/*********** Get variables ***********/
	std::ifstream file;
	std::string line;

	file.open("./temp/l2_weights.txt");
	for( int y = 0 ; y < conv2d_64_filter_height ; y++ )
		for ( int x = 0 ; x < conv2d_64_filter_width ; x++ )
			for ( int channel = 0 ; channel < conv2d_64_in_channels ; channel++ )
				for ( int kernel = 0 ; kernel < conv2d_64_num_filters ; kernel++ )
				{
					getline( file , line );
					conv2d_64_weights[y][x][channel][kernel] = std::stof(line);
				}
	file.close();

	file.open("./temp/l2_biases.txt");
	for( int kernel = 0 ; kernel < conv2d_64_num_filters ; kernel++ )
	{
		getline( file , line );
		conv2d_64_biases[kernel] = std::stof(line);
	}
	file.close();

	/*********** Call IP ***********/
	accel ( reinterpret_cast<float*>(input) ,
			conv2d_64_weights , conv2d_64_biases ,
			reinterpret_cast<float*>(conv2d_64_feature_map) ,
			reinterpret_cast<bool*>(conv2d_64_activations) );

	/*********** Print Results ***********/
	save_array < conv2d_64_out_height * conv2d_64_out_width * conv2d_64_out_channels >
		( reinterpret_cast<float*>(conv2d_64_feature_map) , "temp/l2_conv64_cpp.txt" , 4 );

}
