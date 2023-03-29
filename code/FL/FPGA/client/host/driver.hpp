#pragma once

#include <fstream>	/* ifstream , ios::binary */
#include <string>	/* string */

// XRT includes
#include <experimental/xrt_xclbin.h>	// xrt XCLBIN API
#include <xrt/xrt_device.h>				// xrt device API
#include <xrt/xrt_kernel.h>				// xrt kernel API
#include <xrt/xrt_bo.h>					// xrt buffer API

#include "definitions.hpp"
#include "utils.hpp"		/* Logging */

/***********************************************************************************/
/* Driver Class.                                                                   */
/***********************************************************************************/
class Driver
{
private:
	xrt::device device;
	xrt::uuid xclbin_uuid;
	xrt::kernel kernel;

	// buffers of the inputs
	xrt::bo buf_images_fp;
	xrt::bo buf_images_cg;
	xrt::bo buf_labels;

	// buffers of the CNN's variables
	xrt::bo buf_variables;

public:
	Driver( unsigned int device_id , const std::string& xclbin_name , const std::string& device_name ,
			const std::string& images_filename , const std::string& labels_filename );

	void call_accelerator( float* input_variables , float learning_rate , float* output_variables );
};

/***********************************************************************************/
/* Driver Constructor.                                                             */
/***********************************************************************************/
Driver::Driver( unsigned int device_id , const std::string& xclbin_name , const std::string& kernel_name ,
				const std::string& images_filename , const std::string& labels_filename ) :
	device( xrt::device( device_id ) ) ,
	xclbin_uuid( device.load_xclbin( xclbin_name ) ) ,
	kernel( xrt::kernel( device , xclbin_uuid , kernel_name ) ) ,
	buf_images_fp( xrt::bo( device , NUM_INPUTS * INPUT_H * INPUT_W * sizeof(t_data) , kernel.group_id( 1 ) ) ) ,
	buf_images_cg( xrt::bo( device , NUM_INPUTS * INPUT_H * INPUT_W * sizeof(t_data) , kernel.group_id( 2 ) ) ) ,
	buf_labels(    xrt::bo( device ,                    NUM_INPUTS * sizeof(t_label) , kernel.group_id( 3 ) ) ) ,
	buf_variables( xrt::bo( device ,                   VARIABLES_NUM * sizeof(float) , kernel.group_id( 4 ) ) )
{
	// Map the buffers to host-side pointers
	t_data* mapped_buf_images_fp = buf_images_fp.map<t_data*>();
	t_data* mapped_buf_images_cg = buf_images_cg.map<t_data*>();
	t_label* mapped_buf_labels = buf_labels.map<t_label*>();

	// Write the buffers
	std::ifstream file( images_filename , std::ios::binary );
	for ( uint i = 0 ; i < NUM_INPUTS * INPUT_H * INPUT_W ; i++ )
	{
		t_data temp;
		file.read( reinterpret_cast<char*>(&temp) , sizeof(t_data) );
		mapped_buf_images_fp[i] = temp;
		mapped_buf_images_cg[i] = temp;
	}
	file.close();

	file.open( labels_filename , std::ios::binary );
	file.read( reinterpret_cast<char*>(mapped_buf_labels) , NUM_INPUTS * sizeof(float) );
	file.close();

	// Sync the buffers
	buf_images_fp.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_images_cg.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_labels.sync( XCL_BO_SYNC_BO_TO_DEVICE );
}

/***********************************************************************************/
/* Driver functions.                                                               */
/***********************************************************************************/
void Driver::call_accelerator( float* input_variables , float learning_rate , float* output_variables )
{
	// Set inputs
	LOGGING( Logger::Level::warning , "Writing variables to Gmem." );
	buf_variables.write( input_variables );
	LOGGING( Logger::Level::warning , "Syncing variables to Gmem." );
	buf_variables.sync( XCL_BO_SYNC_BO_TO_DEVICE );

	// Call kernel
	LOGGING( Logger::Level::warning , "Calling kernel." );
	auto run = kernel (	learning_rate , buf_images_fp , buf_images_cg , buf_labels , buf_variables );
	run.wait();

	// Get outputs
	LOGGING( Logger::Level::warning , "Syncing variables from Gmem." );
	buf_variables.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	LOGGING( Logger::Level::warning , "Reading variables from Gmem." );
	buf_variables.read( output_variables );
}
