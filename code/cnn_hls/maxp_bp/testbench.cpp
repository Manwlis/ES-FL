#include "maxp_bp.hpp"

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
	static float maxp_output_error[maxp2d_32_num_out];
	static bool maxp_activations[maxp2d_32_num_out][maxp2d_32_filter_height][maxp2d_32_filter_width];

	std::ifstream file;
	std::string line;

	/*********** Get input ***********/
	file.open("data/l3_maxp_error.txt");
	for( int i = 0 ; i < maxp2d_32_out_height * maxp2d_32_out_width * maxp2d_32_out_channels ; i++ )
	{
		getline( file , line );
		maxp_output_error[i] = std::stof( line );
	}
	file.close();

	file.open("data/l3_maxp_activations.txt");
	for( int i = 0 ; i < maxp2d_32_num_out ; i++ )
		for( int y = 0 ; y < maxp2d_32_filter_height ; y++ )
			for( int x = 0 ; x < maxp2d_32_filter_width ; x++ )
			{
				getline( file , line );
				std::istringstream( line ) >> maxp_activations[i][y][x];
			}
	file.close();

	/*********** Call IP ***********/
	static float maxp_input_error[maxp2d_32_in_height * maxp2d_32_in_width * maxp2d_32_in_channels];

	accel ( maxp_output_error , maxp_activations , maxp_input_error );

	/*********** Print Results ***********/
	save_array < maxp2d_32_in_height * maxp2d_32_in_width * maxp2d_32_in_channels > ( maxp_input_error , "data/l2_out_grads_hls.txt" , 4 );
}
