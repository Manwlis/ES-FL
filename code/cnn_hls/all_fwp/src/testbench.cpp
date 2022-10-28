#include "forward_prop.hpp"

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
	/*********** Get variables ***********/
	static float conv_16_weights[conv_16_filter_height][conv_16_filter_width][conv_16_num_filters];
	static float conv_16_biases[conv_16_num_filters];

	static float conv_32_weights[conv_32_in_channels][conv_32_filter_height][conv_32_filter_width][conv_32_num_filters];
	static float conv_32_biases[conv_32_num_filters];

	static float dense_weights[dense_num_in][dense_num_kernels];
	static float dense_biases[dense_num_kernels];

	static float softmax_weights[softmax_num_in][softmax_num_kernels];
	static float softmax_biases[softmax_num_kernels];

	std::ifstream file;
	std::string line;

	/********** layer 0 **********/
	file.open("data/l0_weights.txt");
	for( int y = 0 ; y < conv_16_filter_height ; y++ )
		for ( int x = 0 ; x < conv_16_filter_width ; x++ )
			for ( int kernel = 0 ; kernel < conv_16_num_filters ; kernel++ )
			{
				getline( file , line );
				conv_16_weights[y][x][kernel] = std::stof( line );
			}
	file.close();

	file.open("data/l0_biases.txt");
	for( int kernel = 0 ; kernel < conv_16_num_filters ; kernel++ )
	{
		getline( file , line );
		conv_16_biases[kernel] = std::stof( line );
	}
	file.close();

	/********** layer 2 **********/
	file.open("data/l2_weights.txt");
	for( int y = 0 ; y < conv_32_filter_height ; y++ )
		for ( int x = 0 ; x < conv_32_filter_width ; x++ )
			for ( int channel = 0 ; channel < conv_32_in_channels ; channel++ )
				for ( int kernel = 0 ; kernel < conv_32_num_filters ; kernel++ )
				{
					getline( file , line );
					conv_32_weights[channel][y][x][kernel] = std::stof(line);
				}
	file.close();

	file.open("data/l2_biases.txt");
	for( int kernel = 0 ; kernel < conv_32_num_filters ; kernel++ )
	{
		getline( file , line );
		conv_32_biases[kernel] = std::stof(line);
	}
	file.close();

	/********** layer 4 **********/
	file.open("data/l4_weights.txt");
	for ( int i = 0 ; i < dense_num_in ; i++ )
		for ( int kernel = 0 ; kernel < dense_num_kernels ; kernel++ )
		{
			getline( file , line );
			dense_weights[i][kernel] = std::stof(line);
		}
	file.close();

	file.open("data/l4_biases.txt");
	for( int k = 0 ; k < dense_num_kernels ; k++ )
	{
		getline( file , line );
		dense_biases[k] = std::stof(line);
	}
	file.close();

	/********** layer 5 **********/
	file.open("data/l5_weights.txt");
	for ( int i = 0 ; i < softmax_num_in ; i++ )
		for ( int kernel = 0 ; kernel < softmax_num_kernels ; kernel++ )
		{
			getline( file , line );
			softmax_weights[i][kernel] = std::stof(line);
		}
	file.close();

	file.open("data/l5_biases.txt");
	for( int k = 0 ; k < softmax_num_kernels ; k++ )
	{
		getline( file , line );
		softmax_biases[k] = std::stof(line);
	}
	file.close();

	/*********** Get input ***********/
	static float input_data[image_height][image_width];

	file.open("data/array.txt");
	for( int y = 0 ; y < image_height ; y++ )
		for ( int x = 0 ; x < image_width ; x++ )
		{
			file >> line; // stored as array in the file.
			input_data[y][x] = std::stof( line );
		}
	file.close();

	/*********** Call IP ***********/
	static float conv_16_feature_map[conv_16_out_height * conv_16_out_width * conv_16_out_channels];
	static float conv_32_feature_map[conv_32_out_height * conv_32_out_width * conv_32_out_channels];
	static float dense_feature_map[dense_num_out];
	static float softmax_feature_map[softmax_num_out];

	accel( input_data ,
		conv_16_weights , conv_16_biases ,
		conv_32_weights , conv_32_biases ,
		dense_weights , dense_biases ,
		softmax_weights , softmax_biases ,
		conv_16_feature_map ,
		conv_32_feature_map ,
		dense_feature_map ,
		softmax_feature_map	);

	/*********** Print Results ***********/
	save_array < conv_16_out_height * conv_16_out_width * conv_16_out_channels > ( conv_16_feature_map , "activations/l0_conv16_hls.txt" , 4 );
	save_array < conv_32_out_height * conv_32_out_width * conv_32_out_channels > ( conv_32_feature_map , "activations/l2_conv32_hls.txt" , 4 );
	save_array < dense_num_out > ( dense_feature_map , "activations/l4_dense_hls.txt" , 4 );
	save_array < softmax_num_out > ( softmax_feature_map , "activations/l5_softmax_hls.txt" , 4 );
}
