#include "host.hpp"

Driver::Driver( unsigned int device_id , const std::string& xclbin_name , const std::string& kernel_name , const std::string& images_filename , const std::string& labels_filename ) :
	device( xrt::device( device_id ) ) ,
	xclbin_uuid( device.load_xclbin( xclbin_name ) ) ,
	kernel( xrt::kernel( device , xclbin_uuid , kernel_name ) ) ,
	buf_images_fp( xrt::bo( device , NUM_INPUTS * input_h * input_w * sizeof(t_data) , kernel.group_id( 1 ) ) ) ,
	buf_images_cg( xrt::bo( device , NUM_INPUTS * input_h * input_w * sizeof(t_data) , kernel.group_id( 2 ) ) ) ,
	buf_labels(    xrt::bo( device ,                    NUM_INPUTS * sizeof(t_label) , kernel.group_id( 3 ) ) ) ,
	buf_variables( xrt::bo( device ,                   NUM_VARIABLES * sizeof(float) , kernel.group_id( 4 ) ) )
{
	// Map the buffers to host-side pointers
	t_data* mapped_buf_images_fp = buf_images_fp.map<t_data*>();
	t_data* mapped_buf_images_cg = buf_images_cg.map<t_data*>();
	t_label* mapped_buf_labels = buf_labels.map<t_label*>();

	// Write the buffers
	std::ifstream file( images_filename , std::ios::binary );
	for ( uint i = 0 ; i < NUM_INPUTS * input_h * input_w ; i++ )
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

void Driver::call_accelerator( float* trainable_variables , float learning_rate )
{
	// Set inputs
	buf_variables.write( trainable_variables );
	buf_variables.sync( XCL_BO_SYNC_BO_TO_DEVICE );

	// Call kernel
	auto run = kernel (	learning_rate , buf_images_fp , buf_images_cg , buf_labels , buf_variables );
	run.wait();

	// Get outputs
	buf_variables.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_variables.read( trainable_variables );
}

int main ( )
{
	std::cout << "Call constructor	";
	Timer timer;
	Driver driver = Driver( DEVICE_INDEX , BIN_FILENAME , KERNEL_NAME , "data/images.bin" , "data/labels.bin" );
	std::cout << timer.since() << " ms" << std::endl;

	std::cout << "Reading Inputs	";
	timer.rewind();
	static float trainable_variables[NUM_VARIABLES];

	std::ifstream file( "data/init_model.bin" , std::ios::binary );
	file.read( reinterpret_cast<char*>(trainable_variables) , NUM_VARIABLES * sizeof(float) );
	file.close();
	std::cout << timer.since() << " ms" << std::endl;

	float learning_rate = INITIAL_LR / float(BATCH_SIZE);
	for ( uint num_epoch = 0 ; num_epoch < GLOBAL_EPOCHS ; num_epoch++ )
	{
		std::cout << "Calling Accel	";
		timer.rewind();

		driver.call_accelerator( trainable_variables , learning_rate );
		std::cout << timer.since() << " ms" << std::endl;

		std::cout << "Saving Output	";
		timer.rewind();
		save_array_txt < NUM_VARIABLES > ( trainable_variables , "data/variables_vitis.txt" , 6 );

		std::string filename = "data/model_" + std::to_string(num_epoch) + ".bin";
		std::ofstream output_file( filename , std::ios::out | std::ios::binary ); // TODO: char * -> std::byte*
		output_file.write( reinterpret_cast<char*>(trainable_variables) , NUM_VARIABLES * sizeof(float) );
		output_file.close();
		std::cout << timer.since() << " ms" << std::endl;

		learning_rate *= LR_DECAY;
	}
	std::cout << "Exiting." << std::endl;
}
