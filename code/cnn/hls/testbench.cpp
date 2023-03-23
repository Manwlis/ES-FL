#include "cnn_accelerator.hpp"

#include <iostream>
#include <iomanip>
#include <fstream>


// Saves array to file.
template < uint num_elements >
void save_array_txt( float array[num_elements] , const char* file_name , const uint precision )
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
	std::cout << "Get variables" << std::endl;
	static float trainable_variables[NUM_VARIABLES];

	std::ifstream file( "data/init_model.bin" , std::ios::binary );
	file.read( reinterpret_cast<char*>(trainable_variables) , NUM_VARIABLES * sizeof(float) );
	file.close();

	/*********** Get input ***********/
	std::cout << "Get inputs" << std::endl;
	static float input_data[NUM_BATCHES][BATCH_SIZE][input_h][input_w];
	static uint input_labels[NUM_BATCHES][BATCH_SIZE];

	file.open( "data/images.bin" , std::ios::binary );
	file.read( reinterpret_cast<char*>(input_data) , NUM_INPUTS * input_h * input_w * sizeof(float) );
	file.close();

	file.open( "data/labels.bin" , std::ios::binary );
	file.read( reinterpret_cast<char*>(input_labels) , NUM_INPUTS * sizeof(float) );
	file.close();

	/******* Get learning rate *******/
	float learning_rate = c_learning_rate / float(BATCH_SIZE);

	/*********** Call IP ***********/
	std::cout << "Call accel" << std::endl;
	cnn_accelerator ( learning_rate , input_data , input_data , input_labels , trainable_variables );

	/*********** Print Results ***********/
	save_array_txt < NUM_VARIABLES > ( trainable_variables , "variables/hls.txt" , 6 );

	std::ofstream output_file( "variables/hls.bin" , std::ios::out | std::ios::binary );
	output_file.write( reinterpret_cast<char*>(trainable_variables) , NUM_VARIABLES * sizeof(float) );
	file.close();
}
