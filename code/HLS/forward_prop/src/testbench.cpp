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
	static float conv2d_32_weights[conv2d_32_filter_height][conv2d_32_filter_width][conv2d_32_num_filters];
	static float conv2d_32_biases[conv2d_32_num_filters];

	static float conv2d_64_weights[conv2d_64_in_channels][conv2d_64_filter_height][conv2d_64_filter_width][conv2d_64_num_filters];
	static float conv2d_64_biases[conv2d_64_num_filters];

	static float dense_weights[dense_num_in][dense_num_kernels];
	static float dense_biases[dense_num_kernels];

	static float softmax_weights[softmax_num_in][softmax_num_kernels];
	static float softmax_biases[softmax_num_kernels];

	std::ifstream file;
	std::string line;

	/********** layer 0 **********/
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

	/********** layer 2 **********/
	file.open("./temp/l2_weights.txt");
	for( int y = 0 ; y < conv2d_64_filter_height ; y++ )
		for ( int x = 0 ; x < conv2d_64_filter_width ; x++ )
			for ( int channel = 0 ; channel < conv2d_64_in_channels ; channel++ )
				for ( int kernel = 0 ; kernel < conv2d_64_num_filters ; kernel++ )
				{
					getline( file , line );
					conv2d_64_weights[channel][y][x][kernel] = std::stof(line);
				}
	file.close();

	file.open("./temp/l2_biases.txt");
	for( int kernel = 0 ; kernel < conv2d_64_num_filters ; kernel++ )
	{
		getline( file , line );
		conv2d_64_biases[kernel] = std::stof(line);
	}
	file.close();

	/********** layer 4 **********/
	file.open("./temp/l4_weights.txt");
	for ( int i = 0 ; i < dense_num_in ; i++ )
		for ( int kernel = 0 ; kernel < dense_num_kernels ; kernel++ )
		{
			getline( file , line );
			dense_weights[i][kernel] = std::stof(line);
		}
	file.close();

	file.open("./temp/l4_biases.txt");
	for( int k = 0 ; k < dense_num_kernels ; k++ )
	{
		getline( file , line );
		dense_biases[k] = std::stof(line);
	}
	file.close();

	/********** layer 5 **********/
	file.open("./temp/l5_weights.txt");
	for ( int i = 0 ; i < softmax_num_in ; i++ )
		for ( int kernel = 0 ; kernel < softmax_num_kernels ; kernel++ )
		{
			getline( file , line );
			softmax_weights[i][kernel] = std::stof(line);
		}
	file.close();

	file.open("./temp/l5_biases.txt");
	for( int k = 0 ; k < softmax_num_kernels ; k++ )
	{
		getline( file , line );
		softmax_biases[k] = std::stof(line);
	}

	/*********** Get input ***********/
	axis_float_stream input_stream;

	std::ifstream input_file("temp/array.txt");
	std::string temp;

	for( int y = 0 ; y < conv2d_32_in_height ; y++ )
		for ( int x = 0 ; x < conv2d_32_in_width ; x++ )
		{
			input_file >> temp;
			axis_float temp_axis_float;
			temp_axis_float.data = std::stof( temp );
			input_stream.write( temp_axis_float );
		}

	/*********** Call IP ***********/
	static float conv2d_32_feature_map[conv2d_32_out_height][conv2d_32_out_width][conv2d_32_out_channels];
	static float maxp2d_32_feature_map[maxp2d_32_out_height][maxp2d_32_out_width][maxp2d_32_out_channels];
	static float conv2d_64_feature_map[conv2d_64_out_height][conv2d_64_out_width][conv2d_64_out_channels];
	static float maxp2d_64_feature_map[maxp2d_64_out_height][maxp2d_64_out_width][maxp2d_64_out_channels];
	static float dense_feature_map[dense_num_out];
	static float softmax_feature_map[softmax_num_out];

	accel( input_stream ,
		reinterpret_cast<float*>(conv2d_32_weights) , conv2d_32_biases ,
		reinterpret_cast<float*>(conv2d_64_weights) , conv2d_64_biases ,
		reinterpret_cast<float*>(dense_weights) , dense_biases ,
		reinterpret_cast<float*>(softmax_weights) , softmax_biases ,
		reinterpret_cast<float*>(conv2d_32_feature_map) ,
		reinterpret_cast<float*>(maxp2d_32_feature_map) ,
		reinterpret_cast<float*>(conv2d_64_feature_map) ,
		reinterpret_cast<float*>(maxp2d_64_feature_map) ,
		dense_feature_map ,
		softmax_feature_map	);

	/*********** Print Results ***********/
	save_array < conv2d_32_out_height * conv2d_32_out_width * conv2d_32_out_channels >
		( reinterpret_cast<float*>(conv2d_32_feature_map) , "activations/l0_conv32_hls.txt" , 4 );

	save_array < maxp2d_32_out_height * maxp2d_32_out_width * maxp2d_32_out_channels >
		( reinterpret_cast<float*>(maxp2d_32_feature_map) , "activations/l1_maxp32_hls.txt" , 4 );

	save_array < conv2d_64_out_height * conv2d_64_out_width * conv2d_64_out_channels >
		( reinterpret_cast<float*>(conv2d_64_feature_map) , "activations/l2_conv64_hls.txt" , 4 );

	save_array < maxp2d_64_out_height * maxp2d_64_out_width * maxp2d_64_out_channels >
		( reinterpret_cast<float*>(maxp2d_64_feature_map) , "activations/l3_maxp64_hls.txt" , 4 );

	save_array < dense_num_out > ( dense_feature_map , "activations/l4_dense_hls.txt" , 4 );

	save_array < softmax_num_out > ( softmax_feature_map , "activations/l5_softmax_hls.txt" , 4 );
}
