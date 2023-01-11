#include "conv_cg.hpp"

#include <iostream>
#include <iomanip>
#include <fstream>

template < unsigned int num_elements >
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
	/*********** Get data  ***********/
	static float maxp_16_fmap[conv_32_in_h][conv_32_in_w][conv_32_in_c];
	static float conv_32_out_grads[conv_32_out_h][conv_32_out_w][conv_32_out_c];
	static bool activations[conv_32_out_h][conv_32_out_w][conv_32_out_c];

	std::ifstream file;
	std::string line;

	file.open("data/l1_fmap.txt");
	for ( int h = 0 ; h < conv_32_in_h ; h++ )
		for ( int w = 0 ; w < conv_32_in_h ; w++ )
			for ( int c = 0 ; c < conv_32_in_c ; c++ )
			{
				getline( file , line );
				maxp_16_fmap[h][w][c] = std::stof( line );
			}
	file.close();

	file.open("data/l2_out_grads.txt");
	for ( int h = 0 ; h < conv_32_out_h ; h++ )
		for ( int w = 0 ; w < conv_32_out_w ; w++ )
			for ( int c = 0 ; c < conv_32_out_c ; c++ )
			{
				getline( file , line );
				conv_32_out_grads[h][w][c] = std::stof( line );
			}
	file.close();

	file.open("data/l2_fmap.txt");
	for ( int h = 0 ; h < conv_32_out_h ; h++ )
		for ( int w = 0 ; w < conv_32_out_w ; w++ )
			for ( int c = 0 ; c < conv_32_out_c ; c++ )
			{
				getline( file , line );
				float temp = std::stof( line );
				activations[h][w][c] = ( temp > 0 );
			}
	file.close();

	// activate out grads, done by conv_bp_activate_error normally
	static float conv_32_activated_out_grads[conv_32_out_h][conv_32_out_w][conv_32_out_c];

	for ( int h = 0 ; h < conv_32_out_h ; h++ )
		for ( int w = 0 ; w < conv_32_out_h ; w++ )
			for ( int c = 0 ; c < conv_32_out_c ; c++ )
				conv_32_activated_out_grads[h][w][c] = activations[h][w][c] ? conv_32_out_grads[h][w][c] : 0.f;

	/*********** Call IP ***********/
	static float weight_gradients[conv_32_f_h][conv_32_f_w][conv_32_in_c][conv_32_num_f];
	static float bias_gradients[conv_32_num_f];

	accel ( maxp_16_fmap , conv_32_activated_out_grads , weight_gradients , bias_gradients );

	/*********** Print Results ***********/
	save_array < conv_32_in_c * conv_32_f_h * conv_32_f_w * conv_32_num_f > ( reinterpret_cast<float*>(weight_gradients) , "data/l2_weight_grads_hls.txt" , 4 );
	save_array < conv_32_num_f > ( bias_gradients , "data/l2_bias_grads_hls.txt" , 4 );
}
