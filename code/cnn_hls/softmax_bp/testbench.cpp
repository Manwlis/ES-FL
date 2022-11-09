#include "softmax_bp.hpp"

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
	/*********** Get weights & feature map  ***********/
	static float softmax_weights[softmax_num_in][softmax_num_kernels];
	static float softmax_feature_map[softmax_num_out];
	unsigned int label = 4;

	std::ifstream file;
	std::string line;

	file.open("data/l5_weights.txt");
	for ( int i = 0 ; i < softmax_num_in ; i++ )
		for ( int kernel = 0 ; kernel < softmax_num_kernels ; kernel++ )
		{
			getline( file , line );
			softmax_weights[i][kernel] = std::stof( line );
		}
	file.close();

	file.open("data/l5_activation_cpp.txt");
	for ( int i = 0 ; i < softmax_num_out ; i++ )
		{
			getline( file , line );
			softmax_feature_map[i] = std::stof(line);
		}
	file.close();

	/*********** Call IP ***********/
	static float softmax_input_error[softmax_num_in];

	accel ( softmax_weights ,
			softmax_feature_map , label ,
			softmax_input_error );

	/*********** Print Results ***********/
	save_array < softmax_num_in > ( softmax_input_error , "data/l4_out_grad_hls.txt" , 4 );
}
