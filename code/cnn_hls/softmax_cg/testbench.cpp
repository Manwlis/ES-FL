#include "softmax_cg.hpp"

#include <iostream>
#include <iomanip>
#include <fstream>

template < uint num_elements >
void save_array( float array[num_elements] , const char* file_name , const uint precision )
{
	std::ofstream file;
	file.open( file_name );
	file.precision( precision );

	for ( unsigned int element = 0 ; element < num_elements ; element++ )
		file << std::fixed << array[element] << "\n";

	file.close();
}


int main ( int argc , char** argv )
{
	/*********** Get weights & feature map  ***********/
	static float dense_feature_map[softmax_num_in];
	static float softmax_feature_map[softmax_num_out];
	unsigned int label = 4;

	std::ifstream file;
	std::string line;

	file.open("data/l4_dense_cpp.txt");
	for ( int i = 0 ; i < softmax_num_in ; i++ )
	{
		getline( file , line );
		dense_feature_map[i] = std::stof( line );

	}
	file.close();

	file.open("data/l5_softmax_cpp.txt");
	for ( int i = 0 ; i < softmax_num_out ; i++ )
	{
		getline( file , line );
		softmax_feature_map[i] = std::stof( line );
	}
	file.close();

	/*********** Call IP ***********/
	static float weight_gradients[softmax_num_in][softmax_num_kernels];
	static float bias_gradients[softmax_num_kernels];

	accel ( dense_feature_map , softmax_feature_map , label , weight_gradients , bias_gradients );

	/*********** Print Results ***********/
	save_array < softmax_num_in * softmax_num_kernels > ( reinterpret_cast<float*>(weight_gradients) , "data/l5_weight_grads_hls.txt" , 4 );
	save_array < softmax_num_kernels > ( bias_gradients , "data/l5_bias_grads_hls.txt" , 4 );
}
