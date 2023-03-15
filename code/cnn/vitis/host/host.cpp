#include "host.hpp"

Driver::Driver( unsigned int device_id , const std::string& xclbin_name , const std::string& kernel_name , const std::string& images_filename , const std::string& labels_filename ) :
	device( xrt::device( device_id ) ) ,
	xclbin_uuid( device.load_xclbin( xclbin_name ) ) ,
	kernel( xrt::kernel( device , xclbin_uuid , kernel_name ) ) ,
	buf_images_fp(       xrt::bo( device ,      c_num_batches * batch_size * input_h * input_w * sizeof(t_data) , kernel.group_id( 1 ) ) ) ,
	buf_images_cg(       xrt::bo( device ,      c_num_batches * batch_size * input_h * input_w * sizeof(t_data) , kernel.group_id( 2 ) ) ) ,
	buf_labels(          xrt::bo( device ,                         c_num_batches * batch_size * sizeof(t_label) , kernel.group_id( 3 ) ) ) ,
	buf_l0_conv_weights( xrt::bo( device ,                l0_conv_f_h * l0_conv_f_w * l0_conv_f * sizeof(float) , kernel.group_id( 4 ) ) ) ,
	buf_l0_conv_biases(  xrt::bo( device ,                                            l0_conv_f * sizeof(float) , kernel.group_id( 5 ) ) ) ,
	buf_l2_conv_weights( xrt::bo( device , l2_conv_f_h * l2_conv_f_w * l2_conv_in_c * l2_conv_f * sizeof(float) , kernel.group_id( 6 ) ) ) ,
	buf_l2_conv_biases(  xrt::bo( device ,                                            l2_conv_f * sizeof(float) , kernel.group_id( 7 ) ) ) ,
	buf_l4_dens_weights( xrt::bo( device ,                          l4_dens_in_size * l4_dens_k * sizeof(float) , kernel.group_id( 8 ) ) ) ,
	buf_l4_dens_biases(  xrt::bo( device ,                                            l4_dens_k * sizeof(float) , kernel.group_id( 9 ) ) ) ,
	buf_l5_soft_weights( xrt::bo( device ,                          l5_soft_in_size * l5_soft_k * sizeof(float) , kernel.group_id( 10 ) ) ),
	buf_l5_soft_biases(  xrt::bo( device ,                                            l5_soft_k * sizeof(float) , kernel.group_id( 11 ) ) )
{
	// Map the buffers to host-side pointers
	t_data* mapped_buf_images_fp = buf_images_fp.map<t_data*>();
	t_data* mapped_buf_images_cg = buf_images_cg.map<t_data*>();
	t_label* mapped_buf_labels = buf_labels.map<t_label*>();

	// Write the buffers
	std::ifstream file( images_filename , std::ios::binary );
	for ( uint i = 0 ; i < c_num_batches * batch_size * input_h * input_w ; i++ )
	{
		t_data temp;
		file.read( reinterpret_cast<char*>(&temp) , sizeof(t_data) );
		mapped_buf_images_fp[i] = temp;
		mapped_buf_images_cg[i] = temp;
	}
	file.close();

	file_to_1d_array < t_label , c_num_batches * batch_size > ( mapped_buf_labels , labels_filename );

	// Sync the buffers
	buf_images_fp.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_images_cg.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_labels.sync( XCL_BO_SYNC_BO_TO_DEVICE );
}

void Driver::call_accelerator(
	float* l0_conv_weights , float* l0_conv_biases , float* l2_conv_weights , float* l2_conv_biases ,
	float* l4_dens_weights , float* l4_dens_biases , float* l5_soft_weights , float* l5_soft_biases )
{
	// Set inputs
	buf_l0_conv_weights.write( l0_conv_weights );
	buf_l0_conv_biases.write( l0_conv_biases );
	buf_l2_conv_weights.write( l2_conv_weights );
	buf_l2_conv_biases.write( l2_conv_biases );
	buf_l4_dens_weights.write( l4_dens_weights );
	buf_l4_dens_biases.write( l4_dens_biases );
	buf_l5_soft_weights.write( l5_soft_weights );
	buf_l5_soft_biases.write( l5_soft_biases );

	buf_l0_conv_weights.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l0_conv_biases.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l2_conv_weights.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l2_conv_biases.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l4_dens_weights.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l4_dens_biases.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l5_soft_weights.sync( XCL_BO_SYNC_BO_TO_DEVICE );
	buf_l5_soft_biases.sync( XCL_BO_SYNC_BO_TO_DEVICE );

	float learning_rate = c_learning_rate / float(batch_size);

	// Call kernel
	auto run = kernel (	learning_rate ,
						buf_images_fp , buf_images_cg , buf_labels ,
						buf_l0_conv_weights , buf_l0_conv_biases ,
						buf_l2_conv_weights , buf_l2_conv_biases ,
						buf_l4_dens_weights , buf_l4_dens_biases ,
						buf_l5_soft_weights , buf_l5_soft_biases );
	run.wait();

	// Get outputs
	buf_l0_conv_weights.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l0_conv_biases.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l2_conv_weights.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l2_conv_biases.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l4_dens_weights.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l4_dens_biases.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l5_soft_weights.sync( XCL_BO_SYNC_BO_FROM_DEVICE );
	buf_l5_soft_biases.sync( XCL_BO_SYNC_BO_FROM_DEVICE );

	buf_l0_conv_weights.read( l0_conv_weights );
	buf_l0_conv_biases.read( l0_conv_biases );
	buf_l2_conv_weights.read( l2_conv_weights );
	buf_l2_conv_biases.read( l2_conv_biases );
	buf_l4_dens_weights.read( l4_dens_weights );
	buf_l4_dens_biases.read( l4_dens_biases );
	buf_l5_soft_weights.read( l5_soft_weights );
	buf_l5_soft_biases.read( l5_soft_biases );
}

int main ( )
{
	std::cout << "Call constructor	";
	Timer timer;
	Driver driver = Driver( c_device_index , c_binary_file_name , c_kernel_name , "data/images.bin" , "data/labels.bin" );
	std::cout << timer.since() << " ms" << std::endl;

	std::cout << "Reading Inputs	";
	timer.rewind();
	static float l0_conv_weights[l0_conv_f_h][l0_conv_f_w][l0_conv_f];
	static float l0_conv_biases[l0_conv_f];
	static float l2_conv_weights[l2_conv_f_h][l2_conv_f_w][l2_conv_in_c][l2_conv_f];
	static float l2_conv_biases[l2_conv_f];
	static float l4_dens_weights[l4_dens_in_size][l4_dens_k];
	static float l4_dens_biases[l4_dens_k];
	static float l5_soft_weights[l5_soft_in_size][l5_soft_k];
	static float l5_soft_biases[l5_soft_k];

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

	for ( uint num_epoch = 0 ; num_epoch < c_num_epochs ; num_epoch++ )
	{
		std::cout << "Calling Accel	";
		timer.rewind();
		driver.call_accelerator(
			reinterpret_cast<float*>(l0_conv_weights) , reinterpret_cast<float*>(l0_conv_biases) ,
			reinterpret_cast<float*>(l2_conv_weights) , reinterpret_cast<float*>(l2_conv_biases) ,
			reinterpret_cast<float*>(l4_dens_weights) , reinterpret_cast<float*>(l4_dens_biases) ,
			reinterpret_cast<float*>(l5_soft_weights) , reinterpret_cast<float*>(l5_soft_biases) );
		std::cout << timer.since() << " ms" << std::endl;

		std::cout << "Saving Output	";
		timer.rewind();
		save_array < l0_conv_f_h * l0_conv_f_w * l0_conv_f > ( reinterpret_cast<float*>(l0_conv_weights) , "data/l0_weights_vitis.txt" , 6 );
		save_array < l0_conv_f > ( l0_conv_biases , "data/l0_biases_vitis.txt" , 6 );
		save_array < l2_conv_f_h * l2_conv_f_w * l2_conv_in_c * l2_conv_f > ( reinterpret_cast<float*>(l2_conv_weights) , "data/l2_weights_vitis.txt" , 6 );
		save_array < l2_conv_f > ( l2_conv_biases , "data/l2_biases_vitis.txt" , 6 );
		save_array < l4_dens_in_size * l4_dens_k > ( reinterpret_cast<float*>(l4_dens_weights) ,"data/l4_weights_vitis.txt" , 6 );
		save_array < l4_dens_k > ( l4_dens_biases , "data/l4_biases_vitis.txt" , 6 );
		save_array < l5_soft_in_size * l5_soft_k > ( reinterpret_cast<float*>(l5_soft_weights) ,"data/l5_weights_vitis.txt" , 6 );
		save_array < l5_soft_k > ( l5_soft_biases , "data/l5_biases_vitis.txt" , 6 );

		std::string filename = "data/model_" + std::to_string(num_epoch) + ".bin";

		std::ofstream output_file( filename , std::ios::out | std::ios::binary ); // TODO: char * -> std::byte*
		output_file.write( reinterpret_cast<char*>(l0_conv_weights) , l0_conv_f_h * l0_conv_f_w * l0_conv_f * sizeof(float) );
		output_file.write( reinterpret_cast<char*>(l0_conv_biases) , l0_conv_f * sizeof(float) );
		output_file.write( reinterpret_cast<char*>(l2_conv_weights) , l2_conv_f_h * l2_conv_f_w * l2_conv_in_c * l2_conv_f * sizeof(float) );
		output_file.write( reinterpret_cast<char*>(l2_conv_biases) , l2_conv_f * sizeof(float) );
		output_file.write( reinterpret_cast<char*>(l4_dens_weights) , l4_dens_in_size * l4_dens_k * sizeof(float) );
		output_file.write( reinterpret_cast<char*>(l4_dens_biases) , l4_dens_k * sizeof(float) );
		output_file.write( reinterpret_cast<char*>(l5_soft_weights) , l5_soft_in_size * l5_soft_k * sizeof(float) );
		output_file.write( reinterpret_cast<char*>(l5_soft_biases) , l5_soft_k * sizeof(float) );
		output_file.close();
		std::cout << timer.since() << " ms" << std::endl;
	}
	std::cout << "Exiting." << std::endl;
}
