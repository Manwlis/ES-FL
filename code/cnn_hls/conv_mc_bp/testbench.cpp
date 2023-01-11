#include "conv_bp.hpp"

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
	static float conv_32_out_error[conv_32_out_height][conv_32_out_width][conv_32_out_channels];
	static bool conv_32_activations[conv_32_out_height][conv_32_out_width][conv_32_out_channels];
	static float conv_32_weights[conv_32_filter_height][conv_32_filter_width][conv_32_in_channels][conv_32_num_filters];

	std::ifstream file;
	std::string line;

	/*********** Get input ***********/
	file.open("data/l2_out_grads.txt");
	for( int y = 0 ; y < conv_32_out_height ; y++ )
		for ( int x = 0 ; x < conv_32_out_width ; x++ )
			for ( int channel = 0 ; channel < conv_32_out_channels ; channel++ )
			{
				getline( file , line );
				conv_32_out_error[y][x][channel] = std::stof( line );
			}
	file.close();

	file.open("data/l2_activations.txt");
	for( int y = 0 ; y < conv_32_out_height ; y++ )
		for ( int x = 0 ; x < conv_32_out_width ; x++ )
			for ( int channel = 0 ; channel < conv_32_out_channels ; channel++ )
			{
				getline( file , line );
				bool temp = ( std::stof( line ) != 0 );
				conv_32_activations[y][x][channel] = temp;
			}
	file.close();

	file.open("data/l2_weights.txt");
	for( int y = 0 ; y < conv_32_filter_height ; y++ )
		for ( int x = 0 ; x < conv_32_filter_width ; x++ )
			for ( int channel = 0 ; channel < conv_32_in_channels ; channel++ )
				for ( int kernel = 0 ; kernel < conv_32_num_filters ; kernel++ )
				{
					getline( file , line );
					conv_32_weights[y][x][channel][kernel] = std::stof( line );
				}
	file.close();

	/*********** Call IP ***********/
	static float conv_32_in_error[conv_32_in_height][conv_32_in_width][conv_32_in_channels];

	accel ( reinterpret_cast<float*>(conv_32_out_error) , reinterpret_cast<bool*>(conv_32_activations) ,
			conv_32_weights , reinterpret_cast<float*>(conv_32_in_error) );

	/*********** Print Results ***********/
	save_array < conv_32_in_height * conv_32_in_width * conv_32_in_channels > ( reinterpret_cast<float*>(conv_32_in_error) , "data/l1_out_grads_hls.txt" , 4 );
}
