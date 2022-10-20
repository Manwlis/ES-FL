#include "maxp2d_32_fwp.hpp"

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
	static float input[maxp2d_32_in_height][maxp2d_32_in_width][maxp2d_32_in_channels];

	static float output[maxp2d_32_out_height][maxp2d_32_out_width][maxp2d_32_out_channels];
	static window < bool , maxp2d_32_filter_height , maxp2d_32_filter_width > activations[maxp2d_32_num_windows];

	std::ifstream file;
	std::string line;

	/*********** Get input ***********/
	file.open("./temp/l0_conv32_cpp.txt");
	for( int y = 0 ; y < maxp2d_32_in_height ; y++ )
		for ( int x = 0 ; x < maxp2d_32_in_width ; x++ )
			for ( int channel = 0 ; channel < maxp2d_32_in_channels ; channel++ )
			{
				getline( file , line );
				input[y][x][channel] = std::stof( line );
			}
	file.close();

	/*********** Call IP ***********/
	accel ( reinterpret_cast<float*>(input) , reinterpret_cast<float*>(output) , activations );

	/*********** Print Results ***********/
	save_array < maxp2d_32_out_height * maxp2d_32_out_width * maxp2d_32_out_channels >
		( reinterpret_cast<float*>(output) , "temp/l1_maxp32_hls.txt" , 4 );
}
