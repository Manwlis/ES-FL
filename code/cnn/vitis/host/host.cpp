#include "host.hpp"

// XRT includes
#include <experimental/xrt_xclbin.h>	// xrt XCLBIN API
#include <xrt/xrt_device.h>				// xrt device API
#include <xrt/xrt_kernel.h>				// xrt kernel API
#include <xrt/xrt_bo.h>					// xrt buffer API

const std::string timed_messages[] = {
	"Opening FPGA device.                                    " ,
	"Loading xclbin: binary_container_1.xclbin               " ,
	"Creating kernel.                                        " ,
	"Allocating buffers in Global Memory.                    " ,
	"Preparing the input data.                               " ,
	"Writing the input data in Global Memory.                " ,
	"Synchronizing input buffers to device global memory.    " ,
	"Writing variables in Global Memory.                     " ,
	"Synchronizing variable buffers to device global memory. " ,
	"Executing the kernel.                                   " ,
	"Synchronizing the output buffers from the device.       " ,
	"Reading the output data.                                " };

int main ( )
{
/***********************************************************************************/
/* Load XCLBIN file, create OpenCL context, device and program.                    */
/***********************************************************************************/
	std::cout << timed_messages[0];
	Timer timer;
	auto device = xrt::device( c_device_index );
	std::cout << timer.since() << " ms" << std::endl;

    std::cout << timed_messages[1];
	timer.rewind();
	auto xclbin_uuid = device.load_xclbin( c_binary_file_name );
	std::cout << timer.since() << " ms" << std::endl;

    std::cout << timed_messages[2];
	timer.rewind();
	auto kernel = xrt::kernel( device , xclbin_uuid , c_kernel_name );
	std::cout << timer.since() << " ms" << std::endl;

/***********************************************************************************/
/* Prepare Global Memory.                                                          */
/***********************************************************************************/
	std::cout << timed_messages[3];
	timer.rewind();
	auto buf_input_data_fp   = xrt::bo( device ,       c_num_batches * batch_size * input_h * input_w * sizeof(t_data) , kernel.group_id( 1 ) );
	auto buf_input_data_cg   = xrt::bo( device ,       c_num_batches * batch_size * input_h * input_w * sizeof(t_data) , kernel.group_id( 2 ) );
	auto buf_labels          = xrt::bo( device ,       c_num_batches * batch_size                     * sizeof(t_label) , kernel.group_id( 3 ) );
	auto buf_l0_conv_weights = xrt::bo( device ,                l0_conv_f_h * l0_conv_f_w * l0_conv_f * sizeof(float) , kernel.group_id( 4 ) );
	auto buf_l0_conv_biases  = xrt::bo( device ,                                            l0_conv_f * sizeof(float) , kernel.group_id( 5 ) );
	auto buf_l2_conv_weights = xrt::bo( device , l2_conv_f_h * l2_conv_f_w * l2_conv_in_c * l2_conv_f * sizeof(float) , kernel.group_id( 6 ) );
	auto buf_l2_conv_biases  = xrt::bo( device ,                                            l2_conv_f * sizeof(float) , kernel.group_id( 7 ) );
	auto buf_l4_dens_weights = xrt::bo( device ,                          l4_dens_in_size * l4_dens_k * sizeof(float) , kernel.group_id( 8 ) );
	auto buf_l4_dens_biases  = xrt::bo( device ,                                            l4_dens_k * sizeof(float) , kernel.group_id( 9 ) );
	auto buf_l5_soft_weights = xrt::bo( device ,                          l5_soft_in_size * l5_soft_k * sizeof(float) , kernel.group_id( 10 ) );
	auto buf_l5_soft_biases  = xrt::bo( device ,                                            l5_soft_k * sizeof(float) , kernel.group_id( 11 ) );
	std::cout << timer.since() << " ms" << std::endl;

	std::cout << timed_messages[4];
	timer.rewind();
// TODO: change allocations to be 4k aligned.
	static float input_data[c_num_batches][batch_size][input_h][input_w];
	static t_label input_labels[c_num_batches][batch_size];
	static float l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f];
	static float l0_conv_biases[l0_conv_f];
	static float l2_conv_weights[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f];
	static float l2_conv_biases[l2_conv_f];
	static float l4_dens_weights[l4_dens_in_size][l4_dens_k];
	static float l4_dens_biases[l4_dens_k];
	static float l5_soft_weights[l5_soft_in_size][l5_soft_k];
	static float l5_soft_biases[l5_soft_k];

//	auto mapped_buf_input_data_fp = buf_input_data_fp.map<t_data*>();
//	auto mapped_buf_input_data_cg = buf_input_data_cg.map<t_data*>();

//	t_data temp;
//	std::ifstream file( "data/images.bin" , std::ios::binary );
//	for ( uint i = 0 ; i < c_num_batches * batch_size * input_h * input_w ; i++ )
//	{
//		file.read( reinterpret_cast<char*>(&temp) , sizeof(t_data) );
//		mapped_buf_input_data_fp[i] = temp;
//		mapped_buf_input_data_cg[i] = temp;
//	}
//
//


	/******** Get inputs *********/
	file_to_4d_array < float , c_num_batches , batch_size , input_h , input_w > ( input_data , "data/images.bin" );
	file_to_2d_array < t_label , c_num_batches , batch_size > ( input_labels , "data/labels.bin" );

	/*********** Get variables ***********/
	/********** layer 0 **********/
	file_to_3d_array < float , l0_conv_f_h , l0_conv_f_w , l0_conv_f > ( l0_conv_weights , "data/l0_weights.bin" );
	file_to_1d_array < float , l0_conv_f > ( l0_conv_biases , "data/l0_biases.bin" );

	/********** layer 2 **********/
	file_to_4d_array < float , l2_conv_f_h , l2_conv_f_w , l2_conv_in_c , l2_conv_f > ( l2_conv_weights , "data/l2_weights.bin" );
	file_to_1d_array < float , l2_conv_f > ( l2_conv_biases , "data/l2_biases.bin" );

	/********** layer 4 **********/
	file_to_2d_array < float , l4_dens_in_size , l4_dens_k > ( l4_dens_weights , "data/l4_weights.bin" );
	file_to_1d_array < float , l4_dens_k > ( l4_dens_biases , "data/l4_biases.bin" );

	/********** layer 5 **********/
	file_to_2d_array < float , l5_soft_in_size , l5_soft_k > ( l5_soft_weights , "data/l5_weights.bin" );
	file_to_1d_array < float , l5_soft_k > ( l5_soft_biases , "data/l5_biases.bin" );
	std::cout << timer.since() << " ms" << std::endl;

	std::cout << timed_messages[5];
	timer.rewind();
	buf_input_data_fp.write( input_data );
	buf_input_data_cg.write( input_data );
	buf_labels.write( input_labels );
	std::cout << timer.since() << " ms" << std::endl;

	std::cout << timed_messages[6];
	timer.rewind();
	buf_input_data_fp.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_input_data_cg.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_labels.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	std::cout << timer.since() << " ms" << std::endl;

	std::cout << timed_messages[7];
	timer.rewind();
	buf_l0_conv_weights.write( l0_conv_weights );
	buf_l0_conv_biases.write( l0_conv_biases );
	buf_l2_conv_weights.write( l2_conv_weights );
	buf_l2_conv_biases.write( l2_conv_biases );
	buf_l4_dens_weights.write( l4_dens_weights );
	buf_l4_dens_biases.write( l4_dens_biases );
	buf_l5_soft_weights.write( l5_soft_weights );
	buf_l5_soft_biases.write( l5_soft_biases );
	std::cout << timer.since() << " ms" << std::endl;

	std::cout << timed_messages[8];
	timer.rewind();
	buf_l0_conv_weights.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l0_conv_biases.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l2_conv_weights.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l2_conv_biases.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l4_dens_weights.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l4_dens_biases.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l5_soft_weights.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l5_soft_biases.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	std::cout << timer.since() << " ms" << std::endl;

/***********************************************************************************/
/* Execute the kernel.                                                             */
/***********************************************************************************/
	float learning_rate = c_learning_rate / float(batch_size);

	std::cout << timed_messages[9];
	timer.rewind();
	auto run = kernel (	learning_rate ,
						buf_input_data_fp , buf_input_data_cg , buf_labels ,
						buf_l0_conv_weights , buf_l0_conv_biases ,
						buf_l2_conv_weights , buf_l2_conv_biases ,
						buf_l4_dens_weights , buf_l4_dens_biases ,
						buf_l5_soft_weights , buf_l5_soft_biases );
	run.wait();
	std::cout << timer.since() << " ms" << std::endl;

/***********************************************************************************/
/* Get output.                                                                     */
/***********************************************************************************/
	std::cout << timed_messages[10];
	timer.rewind();
	buf_l0_conv_weights.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l0_conv_biases.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l2_conv_weights.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l2_conv_biases.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l4_dens_weights.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l4_dens_biases.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l5_soft_weights.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l5_soft_biases.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	std::cout << timer.since() << " ms" << std::endl;

    std::cout << timed_messages[11];
	timer.rewind();
	buf_l0_conv_weights.read( l0_conv_weights );
	buf_l0_conv_biases.read( l0_conv_biases );
	buf_l2_conv_weights.read( l2_conv_weights );
	buf_l2_conv_biases.read( l2_conv_biases );
	buf_l4_dens_weights.read( l4_dens_weights );
	buf_l4_dens_biases.read( l4_dens_biases );
	buf_l5_soft_weights.read( l5_soft_weights );
	buf_l5_soft_biases.read( l5_soft_biases );
	std::cout << timer.since() << " ms" << std::endl;

	std::cout << "Saving variables." << std::endl;
	save_array < l0_conv_f_h * l0_conv_f_w * l0_conv_f > ( reinterpret_cast<float*>(l0_conv_weights) , "data/l0_weights_vitis.txt" , 6 );
	save_array < l0_conv_f > ( l0_conv_biases , "data/l0_biases_vitis.txt" , 6 );

	save_array < l2_conv_f_h * l2_conv_f_w * l2_conv_in_c * l2_conv_f > ( reinterpret_cast<float*>(l2_conv_weights) , "data/l2_weights_vitis.txt" , 6 );
	save_array < l2_conv_f > ( l2_conv_biases , "data/l2_biases_vitis.txt" , 6 );

	save_array < l4_dens_in_size * l4_dens_k > ( reinterpret_cast<float*>(l4_dens_weights) ,"data/l4_weights_vitis.txt" , 6 );
	save_array < l4_dens_k > ( l4_dens_biases , "data/l4_biases_vitis.txt" , 6 );

	save_array < l5_soft_in_size * l5_soft_k > ( reinterpret_cast<float*>(l5_soft_weights) ,"data/l5_weights_vitis.txt" , 6 );
	save_array < l5_soft_k > ( l5_soft_biases , "data/l5_biases_vitis.txt" , 6 );

   std::ofstream file( "data/model.bin" , std::ios::out | std::ios::binary );

   file.write( (char*) &l0_conv_weights[0][0][0] , l0_conv_f_h * l0_conv_f_w * l0_conv_f * sizeof(float) );
   file.write( (char*) &l0_conv_biases[0] , l0_conv_f * sizeof(float) );
   file.write( (char*) &l2_conv_weights[0][0][0][0] , l2_conv_f_h * l2_conv_f_w * l2_conv_in_c * l2_conv_f * sizeof(float) );
   file.write( (char*) &l2_conv_biases[0] , l2_conv_f * sizeof(float) );
   file.write( (char*) &l4_dens_weights[0][0] , l4_dens_in_size * l4_dens_k * sizeof(float) );
   file.write( (char*) &l4_dens_biases[0] , l4_dens_k * sizeof(float) );
   file.write( (char*) &l5_soft_weights[0][0] , l5_soft_in_size * l5_soft_k * sizeof(float) );
   file.write( (char*) &l4_dens_biases[0] , l5_soft_k * sizeof(float) );

   file.close();

	std::cout << "Exiting." << std::endl;
}
