#include "dense_cg.hpp"

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
	static float maxp_32_fmap[dense_num_in];
	static float dense_out_grads[dense_num_out];
	static bool activations[dense_num_kernels];

	std::ifstream file;
	std::string line;

	file.open("data/l3_fmap.txt");
	for ( int i = 0 ; i < dense_num_in ; i++ )
	{
		getline( file , line );
		maxp_32_fmap[i] = std::stof( line );

	}
	file.close();

	file.open("data/l4_out_grads.txt");
	for ( int i = 0 ; i < dense_num_out ; i++ )
	{
		getline( file , line );
		dense_out_grads[i] = std::stof( line );
	}
	file.close();

	file.open("data/l4_dense_activations_cpp.txt");
	for ( int kernel = 0 ; kernel < dense_num_kernels ; kernel++ )
	{
		getline( file , line );
		float temp = std::stof( line );
		activations[kernel] = ( temp > 0 );
	}
	file.close();

	/*********** Call IP ***********/
	static float weight_gradients[dense_num_in][dense_num_kernels];
	static float bias_gradients[dense_num_kernels];

	accel ( maxp_32_fmap , dense_out_grads , activations , weight_gradients , bias_gradients );

	/*********** Print Results ***********/
	save_array < dense_num_in * dense_num_kernels > ( reinterpret_cast<float*>(weight_gradients) , "data/l4_weight_grads_hls.txt" , 4 );
	save_array < dense_num_kernels > ( bias_gradients , "data/l4_bias_grads_hls.txt" , 4 );
}
