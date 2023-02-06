#include "host.hpp"

// XRT includes
#include "xrt/xrt_bo.h"
#include <experimental/xrt_xclbin.h>
#include "xrt/xrt_device.h"
#include "xrt/xrt_kernel.h"


int main ( int argc , char** argv )
{
/***********************************************************************************/
/************************************ Read data ************************************/
/***********************************************************************************/
	/*********** Get variables ***********/
	std::cout << "Reading variables." << std::endl;

	static float l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f];
	static float l0_conv_biases[l0_conv_f];

	static float l2_conv_weights[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f];
	static float l2_conv_biases[l2_conv_f];

	static float l4_dens_weights[l4_dens_in_size][l4_dens_k];
	static float l4_dens_biases[l4_dens_k];

	static float l5_soft_weights[l5_soft_in_size][l5_soft_k];
	static float l5_soft_biases[l5_soft_k];

	/********** layer 0 **********/
	file_to_3d_array < float , l0_conv_f_h , l0_conv_f_w , l0_conv_f >
		( l0_conv_weights , "data/l0_weights.txt" );
	file_to_1d_array < float , l0_conv_f >
		( l0_conv_biases , "data/l0_biases.txt" );

	/********** layer 2 **********/
	file_to_4d_array < float , l2_conv_f_h , l2_conv_f_w , l2_conv_in_c , l2_conv_f >
		( l2_conv_weights , "data/l2_weights.txt" );
	file_to_1d_array < float , l2_conv_f >
		( l2_conv_biases , "data/l2_biases.txt" );

	/********** layer 4 **********/
	file_to_2d_array < float , l4_dens_in_size , l4_dens_k >
		( l4_dens_weights , "data/l4_weights.txt" );
	file_to_1d_array < float , l4_dens_k >
		( l4_dens_biases , "data/l4_biases.txt" );

	/********** layer 5 **********/
	file_to_2d_array < float , l5_soft_in_size , l5_soft_k >
		( l5_soft_weights , "data/l5_weights.txt" );
	file_to_1d_array < float , l5_soft_k >
		( l5_soft_biases , "data/l5_biases.txt" );

	/*********** Get input ***********/
	std::cout << "Reading inputs." << std::endl;

	static float input_data[num_batches][batch_size][input_h][input_w];
	static uint input_labels[num_batches][batch_size];

	std::ifstream file("data/array.txt");
	std::string line;

	for ( uint n = 0 ; n < num_batches ; n++ )
		for ( uint b = 0 ; b < batch_size ; b++ )
			for( int y = 0 ; y < input_h ; y++ )
				for ( int x = 0 ; x < input_w ; x++ )
				{
					file >> line; // stored as array in the file.
					float temp = std::stof( line );
					input_data[n][b][y][x] = temp;
				}
	file.close();

	// TODO: get labels from file
	//	for ( uint n = 0 ; n < num_batches ; n++ )
	//		for ( uint b = 0 ; b < batch_size ; b++ )
	//			input_labels[n][b] = 4;

	input_labels[0][0] = 2;
	input_labels[0][1] = 1;

/***********************************************************************************/
/*********** Load XCLBIN file, create OpenCL context, device and program ***********/
/***********************************************************************************/
	std::cout << "Programming FPGA device." << std::endl;

	auto device = xrt::device( c_device_index );
	auto uuid = device.load_xclbin( binaryFile );

	auto kernel = xrt::kernel( device , uuid , "vadd" );





	/*********** Print Results ***********/
	std::cout << "Saving weights." << std::endl;

	save_array < l0_conv_f_h * l0_conv_f_w * l0_conv_f > ( reinterpret_cast<float*>(l0_conv_weights) , "variables/l0_weights_hls.txt" , 6 );
	save_array < l0_conv_f > ( l0_conv_biases , "variables/l0_biases_hls.txt" , 6 );

	save_array < l2_conv_f_h * l2_conv_f_w * l2_conv_in_c * l2_conv_f > ( reinterpret_cast<float*>(l2_conv_weights) , "variables/l2_weights_hls.txt" , 6 );
	save_array < l2_conv_f > ( l2_conv_biases , "variables/l2_biases_hls.txt" , 6 );

	save_array < l4_dens_in_size * l4_dens_k > ( reinterpret_cast<float*>(l4_dens_weights) ,"variables/l4_weights_hls.txt" , 6 );
	save_array < l4_dens_k > ( l4_dens_biases , "variables/l4_biases_hls.txt" , 6 );

	save_array < l5_soft_in_size * l5_soft_k > ( reinterpret_cast<float*>(l5_soft_weights) ,"variables/l5_weights_hls.txt" , 6 );
	save_array < l5_soft_k > ( l5_soft_biases , "variables/l5_biases_hls.txt" , 6 );
}
