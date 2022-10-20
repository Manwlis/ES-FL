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
	static float conv2d_32_weights[conv2d_32_filter_height][conv2d_32_filter_width][conv2d_32_num_filters];
	static float conv2d_32_biases[conv2d_32_num_filters];
	static float conv2d_32_feature_map[conv2d_32_out_height][conv2d_32_out_width][conv2d_32_out_channels];
	static bool conv2d_32_activations[conv2d_32_out_height][conv2d_32_out_width][conv2d_32_out_channels];

	axis_float_stream input_stream;
	/*********** Get input ***********/
	std::ifstream input_file("temp/array.txt");
	std::string temp;

	for( int y = 0 ; y < conv2d_32_in_height ; y++ )
		for ( int x = 0 ; x < conv2d_32_in_width ; x++ )
			for ( int k = 0 ; k < conv2d_32_in_channels ; k++ )
			{
				input_file >> temp;
				axis_float temp_axis_float;
				temp_axis_float.data = std::stof( temp );
				input_stream.write( temp_axis_float );
			}
	/*********** Get variables ***********/
	std::ifstream file;
	std::string line;

	file.open("./temp/l0_weights.txt");
	for( int y = 0 ; y < conv2d_32_filter_height ; y++ )
		for ( int x = 0 ; x < conv2d_32_filter_width ; x++ )
			for ( int kernel = 0 ; kernel < conv2d_32_num_filters ; kernel++ )
			{
				getline( file , line );
				conv2d_32_weights[y][x][kernel] = std::stof(line);
			}
	file.close();

	file.open("./temp/l0_biases.txt");
	for( int kernel = 0 ; kernel < conv2d_32_num_filters ; kernel++ )
	{
		getline( file , line );
		conv2d_32_biases[kernel] = std::stof(line);
	}
	file.close();

	/*********** Call IP ***********/
	accel ( input_stream ,
			conv2d_32_weights , conv2d_32_biases ,
			reinterpret_cast<float*>(conv2d_32_feature_map) ,
			reinterpret_cast<bool*>(conv2d_32_activations) );

	/*********** Print Results ***********/
	save_array < conv2d_32_out_height * conv2d_32_out_width * conv2d_32_out_channels >
		( reinterpret_cast<float*>(conv2d_32_feature_map) , "temp/l0_conv32_hls.txt" , 4 );

}
