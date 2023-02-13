#include "host.hpp"

// XRT includes
#include <experimental/xrt_xclbin.h>	// xrt XCLBIN API
#include <xrt/xrt_device.h>				// xrt device API
#include <xrt/xrt_kernel.h>				// xrt kernel API
#include <xrt/xrt_bo.h>					// xrt buffer API
#include <experimental/xrt_error.h>		// xrt error API


int main ( int argc , char** argv )
{
/***********************************************************************************/
/*********** Load XCLBIN file, create OpenCL context, device and program ***********/
/***********************************************************************************/
	std::cout << "Opening FPGA device." << std::endl;
	auto device = xrt::device( c_device_index );

    std::cout << "Loading xclbin: " << c_binary_file_name << std::endl;
	auto xclbin_uuid = device.load_xclbin( c_binary_file_name );

	std::cout << "Creating kernel." << std::endl;
	auto kernel = xrt::kernel( device , xclbin_uuid , c_kernel_name );

/***********************************************************************************/
/****************************** Prepare Global Memory ******************************/
/***********************************************************************************/
	std::cout << "Allocating buffers in Global Memory." << std::endl;
	auto buf_input_data_fp   = xrt::bo( device ,         num_batches * batch_size * input_h * input_w * sizeof(float) , kernel.group_id( 1 ) );
	auto buf_input_data_cg   = xrt::bo( device ,         num_batches * batch_size * input_h * input_w * sizeof(float) , kernel.group_id( 2 ) );
	auto buf_labels          = xrt::bo( device ,         num_batches * batch_size                     * sizeof(uint) ,  kernel.group_id( 3 ) );
	auto buf_l0_conv_weights = xrt::bo( device ,                l0_conv_f_h * l0_conv_f_w * l0_conv_f * sizeof(float) , kernel.group_id( 4 ) );
	auto buf_l0_conv_biases  = xrt::bo( device ,                                            l0_conv_f * sizeof(float) , kernel.group_id( 5 ) );
	auto buf_l2_conv_weights = xrt::bo( device , l2_conv_f_h * l2_conv_f_w * l2_conv_in_c * l2_conv_f * sizeof(float) , kernel.group_id( 6 ) );
	auto buf_l2_conv_biases  = xrt::bo( device ,                                            l2_conv_f * sizeof(float) , kernel.group_id( 7 ) );
	auto buf_l4_dens_weights = xrt::bo( device ,                          l4_dens_in_size * l4_dens_k * sizeof(float) , kernel.group_id( 8 ) );
	auto buf_l4_dens_biases  = xrt::bo( device ,                                            l4_dens_k * sizeof(float) , kernel.group_id( 9 ) );
	auto buf_l5_soft_weights = xrt::bo( device ,                          l5_soft_in_size * l5_soft_k * sizeof(float) , kernel.group_id( 10 ) );
	auto buf_l5_soft_biases  = xrt::bo( device ,                                            l5_soft_k * sizeof(float) , kernel.group_id( 11 ) );

	std::cout << "Preparing the input data." << std::endl;
// TODO: change allocations to be 4k aligned.
	static float input_data[num_batches][batch_size][input_h * input_w];
	static uint input_labels[num_batches][batch_size];
	static float l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f];
	static float l0_conv_biases[l0_conv_f];
	static float l2_conv_weights[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f];
	static float l2_conv_biases[l2_conv_f];
	static float l4_dens_weights[l4_dens_in_size][l4_dens_k];
	static float l4_dens_biases[l4_dens_k];
	static float l5_soft_weights[l5_soft_in_size][l5_soft_k];
	static float l5_soft_biases[l5_soft_k];

	/******** Get inputs *********/
	read_input_data < float , num_batches , batch_size , input_h * input_w > ( input_data , "/run/media/mmcblk0p1/data/array.txt" );

	input_labels[0][0] = 2;
	input_labels[0][1] = 1;
	// TODO: get labels from file: file_to_2d_array < uint , num_batches * batch_size > ( input_labels , "data/labels.txt" );

	/*********** Get variables ***********/
	/********** layer 0 **********/
	file_to_3d_array < float , l0_conv_f_h , l0_conv_f_w , l0_conv_f > ( l0_conv_weights , "data/l0_weights.txt" );
	file_to_1d_array < float , l0_conv_f > ( l0_conv_biases , "data/l0_biases.txt" );

	/********** layer 2 **********/
	file_to_4d_array < float , l2_conv_f_h , l2_conv_f_w , l2_conv_in_c , l2_conv_f > ( l2_conv_weights , "data/l2_weights.txt" );
	file_to_1d_array < float , l2_conv_f > ( l2_conv_biases , "data/l2_biases.txt" );

	/********** layer 4 **********/
	file_to_2d_array < float , l4_dens_in_size , l4_dens_k > ( l4_dens_weights , "data/l4_weights.txt" );
	file_to_1d_array < float , l4_dens_k > ( l4_dens_biases , "data/l4_biases.txt" );

	/********** layer 5 **********/
	file_to_2d_array < float , l5_soft_in_size , l5_soft_k > ( l5_soft_weights , "data/l5_weights.txt" );
	file_to_1d_array < float , l5_soft_k > ( l5_soft_biases , "data/l5_biases.txt" );

	std::cout << "Writing the input data in Global Memory." << std::endl;
	buf_input_data_fp.write( input_data );
	buf_input_data_cg.write( input_data );
	buf_labels.write( input_labels );
	buf_l0_conv_weights.write( l0_conv_weights );
	buf_l0_conv_biases.write( l0_conv_biases );
	buf_l2_conv_weights.write( l2_conv_weights );
	buf_l2_conv_biases.write( l2_conv_biases );
	buf_l4_dens_weights.write( l4_dens_weights );
	buf_l4_dens_biases.write( l4_dens_biases );
	buf_l5_soft_weights.write( l5_soft_weights );
	buf_l5_soft_biases.write( l5_soft_biases );

	std::cout << "Synchronizing input buffer data to device global memory." << std::endl;
	buf_input_data_fp.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_input_data_cg.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_labels.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l0_conv_weights.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l0_conv_biases.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l2_conv_weights.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l2_conv_biases.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l4_dens_weights.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l4_dens_biases.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l5_soft_weights.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l5_soft_biases.sync( XCL_BO_SYNC_BO_TO_DEVICE );

/***********************************************************************************/
/******************************* Execute the kernel. *******************************/
/***********************************************************************************/
	try{
	std::cout << "Executing the kernel." << std::endl;
	auto run = kernel(	c_learning_rate ,
						buf_input_data_fp , buf_input_data_cg , buf_labels ,
						buf_l0_conv_weights , buf_l0_conv_biases ,
						buf_l2_conv_weights , buf_l2_conv_biases ,
						buf_l4_dens_weights , buf_l4_dens_biases ,
						buf_l5_soft_weights , buf_l5_soft_biases );
	run.wait();
	} catch ( const std::system_error& ex )
	{
		if ( ex.code().value() == ETIME )
		{
			xrt::error error( device , XRT_ERROR_CLASS_AIE );

			auto errCode = error.get_error_code();
			auto err_str = error.to_string();

			std::cout << errCode << " " << err_str << std::endl;
		}
	}

/***********************************************************************************/
/*********************************** Get output. ***********************************/
/***********************************************************************************/
	std::cout << "Synchronizing the output buffer data from the device." << std::endl;
	buf_l0_conv_weights.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l0_conv_biases.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l2_conv_weights.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l2_conv_biases.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l4_dens_weights.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l4_dens_biases.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l5_soft_weights.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l5_soft_biases.sync( XCL_BO_SYNC_BO_FROM_DEVICE );

    std::cout << "Reading the output data." << std::endl;
	buf_l0_conv_weights.read( l0_conv_weights );
	buf_l0_conv_biases.read( l0_conv_biases );
	buf_l2_conv_weights.read( l2_conv_weights );
	buf_l2_conv_biases.read( l2_conv_biases );
	buf_l4_dens_weights.read( l4_dens_weights );
	buf_l4_dens_biases.read( l4_dens_biases );
	buf_l5_soft_weights.read( l5_soft_weights );
	buf_l5_soft_biases.read( l5_soft_biases );

	std::cout << "Saving weights." << std::endl;
	save_array < l0_conv_f_h * l0_conv_f_w * l0_conv_f > ( reinterpret_cast<float*>(l0_conv_weights) , "data/l0_weights_vitis.txt" , 6 );
	save_array < l0_conv_f > ( l0_conv_biases , "data/l0_biases_vitis.txt" , 6 );

	save_array < l2_conv_f_h * l2_conv_f_w * l2_conv_in_c * l2_conv_f > ( reinterpret_cast<float*>(l2_conv_weights) , "data/l2_weights_vitis.txt" , 6 );
	save_array < l2_conv_f > ( l2_conv_biases , "data/l2_biases_vitis.txt" , 6 );

	save_array < l4_dens_in_size * l4_dens_k > ( reinterpret_cast<float*>(l4_dens_weights) ,"data/l4_weights_vitis.txt" , 6 );
	save_array < l4_dens_k > ( l4_dens_biases , "data/l4_biases_vitis.txt" , 6 );

	save_array < l5_soft_in_size * l5_soft_k > ( reinterpret_cast<float*>(l5_soft_weights) ,"data/l5_weights_vitis.txt" , 6 );
	save_array < l5_soft_k > ( l5_soft_biases , "data/l5_biases_vitis.txt" , 6 );

	std::cout << "Exiting." << std::endl;
}
