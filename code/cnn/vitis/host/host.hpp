#pragma once

#include <stdio.h>
#include <string.h>

#include <iostream>
#include <iomanip>
#include <fstream>
#include <chrono>

// XRT includes
#include <experimental/xrt_xclbin.h>	// xrt XCLBIN API
#include <xrt/xrt_device.h>				// xrt device API
#include <xrt/xrt_kernel.h>				// xrt kernel API
#include <xrt/xrt_bo.h>					// xrt buffer API

/***********************************************************************************/
/* Info for the host to find and execute the accelerator.                          */
/***********************************************************************************/
#define DEVICE_INDEX	0
#define BIN_FILENAME	"binary_container_1.xclbin"
#define KERNEL_NAME		"cnn_accelerator"

/***********************************************************************************/
/* Size definitions                                                                */
/***********************************************************************************/
#define GLOBAL_EPOCHS	1
#define NUM_BATCHES		1875 // !!! Needs to change in both host.hpp and all_fwp_bp.hpp
#define BATCH_SIZE		32
#define NUM_INPUTS		NUM_BATCHES * BATCH_SIZE
#define INITIAL_LR		0.01f
#define LR_DECAY		0.977331125f
#define NUM_VARIABLES	105866

/***********************************************************************************/
/* Input: 28x28x1 array.                                                           */
/***********************************************************************************/
#define input_h				28
#define input_w				28
#define input_c				 1

/***********************************************************************************/
/* Layer 0: Convolution with 16 3x3 filters.                                       */
/***********************************************************************************/
#define l0_conv_f_h			 3
#define l0_conv_f_w			 3
#define l0_conv_f			16

/***********************************************************************************/
/* Layer 2: Convolution with 16 3x3 filters.                                       */
/***********************************************************************************/
#define l2_conv_f_h			 3
#define l2_conv_f_w			 3
#define l2_conv_f			32
#define l2_conv_in_c		16

/***********************************************************************************/
/* Layer 4: Fully connected ReLU layer with 64 kernels.                            */
/***********************************************************************************/
#define l4_dens_in_size		1568
#define l4_dens_k			64

/***********************************************************************************/
/* Layer 5: Fully connected Softmax layer with 10 kernels.                         */
/***********************************************************************************/
#define l5_soft_in_size		64
#define l5_soft_k			10

/***********************************************************************************/
/* Datatype definitions.                                                           */
/***********************************************************************************/
typedef unsigned int uint;
typedef float t_data;
typedef unsigned int t_label; // change this to ap_uint 4 bits?

/***********************************************************************************/
/* Auxiliary functions.                                                            */
/***********************************************************************************/
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

/***********************************************************************************/
/* Timer class.                                                                    */
/***********************************************************************************/
class Timer
{
private:
	std::chrono::steady_clock::time_point start_time;
public:
	Timer();
	void rewind();
	int64_t since() const;
};

/**
 * @brief Construct a new Timer object. Sets current time as starting time.
 */
Timer::Timer() { this->rewind(); }

/**
 * @brief Zeroes timer
 */
void Timer::rewind()
{
	start_time = std::chrono::steady_clock::now();
}

/**
 * @brief Calculates and returns elapsed time.
 *
 * @return int64_t elapsed time in milliseconds
 */
int64_t Timer::since() const
{
	return std::chrono::duration_cast<std::chrono::milliseconds> ( std::chrono::steady_clock::now() - start_time ).count();
}

/***********************************************************************************/
/* Driver Functions.                                                               */
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
	Driver( unsigned int device_id , const std::string& xclbin_name , const std::string& device_name , const std::string& images_filename , const std::string& labels_filename );

	void call_accelerator( float* input_variables , float learning_rate , float* output_variables );
};
