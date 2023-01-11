#include "conv_sc_cg.hpp"

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
	static float input[input_h][input_w][input_c];
	static float conv_16_out_grads[conv_16_out_h][conv_16_out_w][conv_16_out_c];
	static bool activations[conv_16_out_h][conv_16_out_w][conv_16_out_c];

	std::ifstream file;
	std::string line;


	file.open("data/input.txt");
	for ( int h = 0 ; h < input_h ; h++ )
		for ( int w = 0 ; w < input_w ; w++ )
			for ( int c = 0 ; c < input_c ; c++ )
			{
				file >> line;
				input[h][w][c] = std::stof( line );
			}
	file.close();

	file.open("data/l0_out_grads.txt");
	for ( int h = 0 ; h < conv_16_out_h ; h++ )
		for ( int w = 0 ; w < conv_16_out_w ; w++ )
			for ( int c = 0 ; c < conv_16_out_c ; c++ )
			{
				getline( file , line );
				conv_16_out_grads[h][w][c] = std::stof( line );
			}
	file.close();

	file.open("data/l0_fmap.txt");
	for ( int h = 0 ; h < conv_16_out_h ; h++ )
		for ( int w = 0 ; w < conv_16_out_w ; w++ )
			for ( int c = 0 ; c < conv_16_out_c ; c++ )
			{
				getline( file , line );
				float temp = std::stof( line );
				activations[h][w][c] = ( temp > 0 );
			}
	file.close();

	static float conv_16_activated_out_grads[conv_16_out_h][conv_16_out_w][conv_16_out_c];

	for ( int h = 0 ; h < conv_16_out_h ; h++ )
		for ( int w = 0 ; w < conv_16_out_w ; w++ )
			for ( int c = 0 ; c < conv_16_out_c ; c++ )
				conv_16_activated_out_grads[h][w][c] = activations[h][w][c] ? conv_16_out_grads[h][w][c] : 0.f;

	/*********** Call IP ***********/
	static float weight_grads[conv_16_f_h][conv_16_f_w][conv_16_f];
	static float bias_grads[conv_16_f];

	accel ( input , conv_16_activated_out_grads , weight_grads , bias_grads );

	save_array < conv_16_f_h * conv_16_f_w * conv_16_f > ( reinterpret_cast<float*>(weight_grads) , "data/l0_weight_grads_hls.txt" , 4 );
	save_array < conv_16_f > ( bias_grads , "data/l0_bias_grads_hls.txt" , 4 );

}
