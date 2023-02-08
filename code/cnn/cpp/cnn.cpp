#include "cnn.hpp"

int main ( int argc , char** argv )
{
	/*********************************/
	/*********** Get input ***********/
	/*********************************/
#pragma region
	std::ifstream input_file("temp/array.txt");
	std::string temp;

	float input[image_height][image_width][image_channels];
	
	for( int y = 0 ; y < image_height ; y++ )
		for ( int x = 0 ; x < image_width ; x++ )
		{
			input_file >> temp;
			input[y][x][0] = std::stof(temp);
		}
#pragma endregion
	/*********************************/
	/******** Import variables *******/
	/*********************************/
#pragma region
	static float l0_conv_weights[l0_conv_filter_height][l0_conv_filter_width][l0_conv_in_channels][l0_conv_num_filters];
	static float l2_conv_weights[l2_conv_filter_height][l2_conv_filter_width][l2_conv_in_channels][l2_conv_num_filters];
	static float dense_weights[l4_dense_num_in][l4_dense_num_kernels];
	static float softmax_weights[l5_softmax_num_in][l5_softmax_num_kernels];

	static float l0_conv_biases[l0_conv_num_filters];
	static float l2_conv_biases[l2_conv_num_filters];
	static float dense_biases[l4_dense_num_kernels];
	static float softmax_biases[l5_softmax_num_kernels];

	set_variables < 
		l0_conv_filter_height , l0_conv_filter_width , l0_conv_in_channels , l0_conv_num_filters ,
		l2_conv_filter_height , l2_conv_filter_width , l2_conv_in_channels , l2_conv_num_filters ,
		l4_dense_num_in , l4_dense_num_kernels , l5_softmax_num_in , l5_softmax_num_kernels >
		(
		l0_conv_weights , l0_conv_biases , l2_conv_weights , l2_conv_biases ,
		dense_weights , dense_biases , softmax_weights , softmax_biases );
#pragma endregion
	/*********************************/
	/****** Forward Propagation ******/
	/*********************************/
#pragma region
	// layer outputs
	static float l0_conv_feature_map[l0_conv_out_height][l0_conv_out_width][l0_conv_out_channels];
	static float l1_maxp_feature_map[l1_maxp_out_height][l1_maxp_out_width][l1_maxp_out_channels];
	static float l2_conv_feature_map[l2_conv_out_height][l2_conv_out_width][l2_conv_out_channels];
	static float l3_maxp_feature_map[l3_maxp_out_height][l3_maxp_out_width][l3_maxp_out_channels];
	static float dense_map[l4_dense_num_out];
	static float softmax_output[l5_softmax_num_out];

	static bool l0_conv_activations[l0_conv_out_height][l0_conv_out_width][l0_conv_out_channels];
	std::queue < window < bool , l1_maxp_filter_height , l1_maxp_filter_width > > l1_maxp_activations_window_stream;
	static bool l2_conv_activations[l2_conv_out_height][l2_conv_out_width][l2_conv_out_channels];
	std::queue < window < bool , l3_maxp_filter_height , l3_maxp_filter_width > > l3_maxp_activations_window_stream;
	static bool dense_activations[l4_dense_num_out]; // need to remember if relu activated to get its derivative. ReLU > 0 => ReLU' = input, ReLU <= 0 => ReLU' = 0

	/***** layer 0, 28x28x1 -> conv 16 filters of 3x3, padded, stride 1 -> 28x28x16 *****/
	// queue of windows
	std::queue < window < float , l0_conv_filter_height , l0_conv_filter_width > > l0_conv_window_stream;

	// create windows
	create_window_stream_conv2d < float , l0_conv_in_height , l0_conv_in_width , l0_conv_in_channels , l0_conv_filter_height , l0_conv_filter_width >
		( input , l0_conv_window_stream );

	// full convolution
	conv2d < float , 
		l0_conv_in_height ,     l0_conv_in_width ,     l0_conv_in_channels , 
		l0_conv_out_height ,    l0_conv_out_width ,    l0_conv_out_channels ,
		l0_conv_filter_height , l0_conv_filter_width , l0_conv_num_filters >
		( l0_conv_window_stream , l0_conv_weights , l0_conv_biases , l0_conv_feature_map , l0_conv_activations );

	/***** layer 1, 28x28x16 -> maxpool 2x2, stride 2,2 -> 14x14x16 *****/
	// std::queue < window < float , l1_maxp_filter_height , l1_maxp_filter_width > > l1_maxp_window_stream;
	// window_input_maxp2d < float , 
	// 	l1_maxp_in_height ,     l1_maxp_in_width ,     l1_maxp_in_channels ,
	// 	l1_maxp_filter_height , l1_maxp_filter_width , l1_maxp_filter_stride >
	// 	( l0_conv_feature_map , l1_maxp_window_stream );
	// maxp2d < float , 
	// 	l1_maxp_in_height ,     l1_maxp_in_width ,     l1_maxp_in_channels ,
	// 	l1_maxp_out_height ,    l1_maxp_out_width ,    l1_maxp_out_channels ,
	// 	l1_maxp_filter_height , l1_maxp_filter_width , l1_maxp_filter_stride >
	// 	( l1_maxp_window_stream , l1_maxp_feature_map , l1_maxp_activations_window_stream );
	maxp2d_window_integrated < float , 
		l1_maxp_in_height ,     l1_maxp_in_width ,     l1_maxp_in_channels ,
		l1_maxp_out_height ,    l1_maxp_out_width ,    l1_maxp_out_channels ,
		l1_maxp_filter_height , l1_maxp_filter_width , l1_maxp_filter_stride >
		( l0_conv_feature_map , l1_maxp_feature_map , l1_maxp_activations_window_stream );

	/***** layer 2, 28x28x16 -> conv 32 filters of 3x3, padded, stride 1 -> 28x28x32 *****/
	std::queue < window < float , l2_conv_filter_height , l2_conv_filter_width > > l2_conv_window_stream;
	create_window_stream_conv2d < float , l2_conv_in_height , l2_conv_in_width , l2_conv_in_channels , l2_conv_filter_height , l2_conv_filter_width >
		( l1_maxp_feature_map , l2_conv_window_stream );
	
	conv2d < float , 
		l2_conv_in_height , l2_conv_in_width , l2_conv_in_channels , 
		l2_conv_out_height , l2_conv_out_width , l2_conv_out_channels ,
		l2_conv_filter_height , l2_conv_filter_width , l2_conv_num_filters >
		( l2_conv_window_stream , l2_conv_weights , l2_conv_biases , l2_conv_feature_map , l2_conv_activations );

	/***** layer 3, 14x14x32 -> maxpool 2x2, stride 2,2 -> 7x7x32 *****/
	// std::queue < window < float , l3_maxp_filter_height , l3_maxp_filter_width > > l3_maxp_window_stream;
	// window_input_maxp2d < float , 
	// 	l3_maxp_in_height ,     l3_maxp_in_width ,     l3_maxp_in_channels , 
	// 	l3_maxp_filter_height , l3_maxp_filter_width , l3_maxp_filter_stride >
	// 	( l2_conv_feature_map , l3_maxp_window_stream );
	// maxp2d < float , 
	// 	l3_maxp_in_height ,     l3_maxp_in_width ,     l3_maxp_in_channels ,
	// 	l3_maxp_out_height ,    l3_maxp_out_width ,    l3_maxp_out_channels ,
	// 	l3_maxp_filter_height , l3_maxp_filter_width , l3_maxp_filter_stride >
	// 	( l3_maxp_window_stream , l3_maxp_feature_map , l3_maxp_activations_window_stream );
	maxp2d_window_integrated < float , 
		l3_maxp_in_height ,     l3_maxp_in_width ,     l3_maxp_in_channels ,
		l3_maxp_out_height ,    l3_maxp_out_width ,    l3_maxp_out_channels ,
		l3_maxp_filter_height , l3_maxp_filter_width , l3_maxp_filter_stride >
		( l2_conv_feature_map , l3_maxp_feature_map , l3_maxp_activations_window_stream );

	/***** layer 4, 7x7x32 = 3136 -> fully connected 128 -> 128 *****/
	dense < l4_dense_num_kernels , l4_dense_num_in >
		( *reinterpret_cast<float (*)[l4_dense_num_kernels]>(&l3_maxp_feature_map) , dense_map , dense_activations , dense_weights , dense_biases );

	/***** layer 5, 128 -> fully connected softmax 10 -> 10 normalized *****/
	softmax_clasifier < l5_softmax_num_kernels , l5_softmax_num_in > ( dense_map , softmax_output , softmax_weights , softmax_biases );
#pragma endregion
	/*********************************/
	/******* Back Propagation ********/
	/*********************************/
#pragma region
	static float softmax_out_error[l5_softmax_num_out];
	static float softmax_in_error[l5_softmax_num_in];
	static float dense_in_error[l4_dense_num_in];
	static float l3_maxp_in_error[l3_maxp_in_height][l3_maxp_in_width][l3_maxp_in_channels];
	static float l2_conv_in_error[l2_conv_in_height][l2_conv_in_width][l2_conv_in_channels];
	static float l1_maxp_in_error[l1_maxp_in_height][l1_maxp_in_width][l1_maxp_in_channels];

	float entropy = sparce_categorical_cross_entropy < l5_softmax_num_kernels > ( softmax_output , 4 , softmax_out_error );

	/* Layer 5, 10 -> dense error propagation, softmax activation -> 128 */
	softmax_error_propagation < l5_softmax_num_kernels , l5_softmax_num_in > ( softmax_out_error , softmax_weights , softmax_in_error );

	/* Layer 4, 128 -> dense error propagation, relu activation -> 3136 */
	dense_error_propagation < l4_dense_num_kernels , l4_dense_num_in > ( softmax_in_error , dense_weights , dense_activations , dense_in_error );

	/* Layer 3, 3136 (7x7x32) -> maxp2d error propagation -> 14x14x32 */
	maxp2d_error_propagation <
		l3_maxp_in_height ,     l3_maxp_in_width ,     l3_maxp_in_channels ,
		l3_maxp_out_height ,    l3_maxp_out_width ,    l3_maxp_out_channels ,
		l3_maxp_filter_height , l3_maxp_filter_width , l3_maxp_filter_stride >
		( dense_in_error , l3_maxp_activations_window_stream , l3_maxp_in_error );

	/* Layer 2, 14x14x32 -> conv2d error propagation, relu activation, 16 input channels -> 14x14x16 */
	std::queue < window < float , l2_conv_filter_height , l2_conv_filter_width > > l2_conv_error_window_stream;
	std::queue < window < bool  , l2_conv_filter_height , l2_conv_filter_width > > l2_conv_activations_window_stream;

	create_window_stream_conv2d < float , 
		l2_conv_out_height , l2_conv_out_width , l2_conv_out_channels , l2_conv_filter_height , l2_conv_filter_width >
		( l3_maxp_in_error , l2_conv_error_window_stream );
		
	create_window_stream_conv2d < bool , 
		l2_conv_out_height , l2_conv_out_width , l2_conv_out_channels , l2_conv_filter_height , l2_conv_filter_width >
		( l2_conv_activations , l2_conv_activations_window_stream );

	conv2d_error_propagation < 
		l2_conv_in_height ,     l2_conv_in_width ,     l2_conv_in_channels ,
		l2_conv_out_height ,    l2_conv_out_width ,    l2_conv_out_channels ,
		l2_conv_filter_height , l2_conv_filter_width , l2_conv_num_filters >
		( l2_conv_error_window_stream , l2_conv_activations_window_stream , l2_conv_weights , l2_conv_in_error );

	/* Layer 1, 14x14x16 -> maxp2d error propagation -> 28x28x16 */
	maxp2d_error_propagation <
		l1_maxp_in_height ,     l1_maxp_in_width ,     l1_maxp_in_channels ,
		l1_maxp_out_height ,    l1_maxp_out_width ,    l1_maxp_out_channels ,
		l1_maxp_filter_height , l1_maxp_filter_width , l1_maxp_filter_stride >
		( reinterpret_cast<float*>(l2_conv_in_error) , l1_maxp_activations_window_stream , l1_maxp_in_error );
#pragma endregion
	/*********************************/
	/***** Gradient Calculation ******/
	/*********************************/
#pragma region
	static float softmax_weight_gradients[l5_softmax_num_in][l5_softmax_num_kernels];
	static float softmax_bias_gradients[l5_softmax_num_kernels];

	static float dense_weight_gradients[l4_dense_num_in][l4_dense_num_kernels];
	static float dense_bias_gradients[l4_dense_num_kernels];

	static float l2_conv_weight_gradients[l2_conv_filter_height][l2_conv_filter_width][l2_conv_in_channels][l2_conv_num_filters];
	static float l2_conv_bias_gradients[l2_conv_num_filters];

	static float l0_conv_weight_gradients[l0_conv_filter_height][l0_conv_filter_width][l0_conv_in_channels][l0_conv_num_filters];
	static float l0_conv_bias_gradients[l0_conv_num_filters];
	/* Layer 5 */
	softmax_regression < l5_softmax_num_in , l5_softmax_num_kernels >
		( dense_map , softmax_out_error , softmax_weight_gradients , softmax_bias_gradients );

	/* Layer 4 */
	dense_regression < l4_dense_num_in , l4_dense_num_kernels >
		( *reinterpret_cast<float (*)[l4_dense_num_kernels]>(&l3_maxp_feature_map) , softmax_in_error , dense_activations , 
		dense_weight_gradients , dense_bias_gradients );

	/* Layer 2 */
	std::queue < window < float , l2_conv_filter_height , l2_conv_filter_width > > l2_conv_window_stream2;
	create_window_stream_conv2d < float ,
		l2_conv_in_height , l2_conv_in_width , l2_conv_in_channels ,
		l2_conv_filter_height , l2_conv_filter_width >
		( l1_maxp_feature_map , l2_conv_window_stream2 );

	conv2d_regression < float ,
		l2_conv_in_height ,     l2_conv_in_width ,     l2_conv_in_channels ,
		l2_conv_out_height ,    l2_conv_out_width ,    l2_conv_out_channels ,
		l2_conv_filter_height , l2_conv_filter_width , l2_conv_num_filters >
		( l2_conv_window_stream2 , l3_maxp_in_error , l2_conv_activations , l2_conv_weight_gradients , l2_conv_bias_gradients );

	/* Layer 0 */
	std::queue < window < float , l0_conv_filter_height , l0_conv_filter_width > > l0_conv_window_stream2;
	create_window_stream_conv2d < float ,
		l0_conv_in_height , l0_conv_in_width , l0_conv_in_channels ,
		l0_conv_filter_height , l0_conv_filter_width >
		( input , l0_conv_window_stream2 );

	conv2d_regression < float ,
		l0_conv_in_height ,     l0_conv_in_width ,     l0_conv_in_channels ,
		l0_conv_out_height ,    l0_conv_out_width ,    l0_conv_out_channels ,
		l0_conv_filter_height , l0_conv_filter_width , l0_conv_num_filters >
		( l0_conv_window_stream2 , l1_maxp_in_error , l0_conv_activations , l0_conv_weight_gradients , l0_conv_bias_gradients );
#pragma endregion
	/*********************************/
	/******* Variable Updates ********/
	/*********************************/	
#pragma region // layers 1 & 3 have no trainable variables
	// layer 0
	gradient_descend < l0_conv_filter_height * l0_conv_filter_width * l0_conv_in_channels * l0_conv_num_filters > 
		( reinterpret_cast<float*>(l0_conv_weights) , reinterpret_cast<float*>(l0_conv_weight_gradients) , learning_rate_const );

	gradient_descend < l0_conv_num_filters > 
		( l0_conv_biases , l0_conv_bias_gradients , learning_rate_const );

	// layer 2
	gradient_descend < l2_conv_filter_height * l2_conv_filter_width * l2_conv_in_channels * l2_conv_num_filters > 
		( reinterpret_cast<float*>(l2_conv_weights) , reinterpret_cast<float*>(l2_conv_weight_gradients) , learning_rate_const );

	gradient_descend < l2_conv_num_filters > 
		( l2_conv_biases , l2_conv_bias_gradients , learning_rate_const );

	// layer 4
	gradient_descend < l4_dense_num_in * l4_dense_num_kernels > 
		( reinterpret_cast<float*>(dense_weights) , reinterpret_cast<float*>(dense_weight_gradients) , learning_rate_const );

	gradient_descend < l4_dense_num_kernels > 
		( dense_biases , dense_bias_gradients , learning_rate_const );

	// layer 5
	gradient_descend < l5_softmax_num_in * l5_softmax_num_kernels > 
		( reinterpret_cast<float*>(softmax_weights) , reinterpret_cast<float*>(softmax_weight_gradients) , learning_rate_const );

	gradient_descend < l5_softmax_num_kernels > 
		( softmax_biases , softmax_bias_gradients , learning_rate_const );
#pragma endregion
	/*********************************/
	/********* Show outputs **********/
	/*********************************/
#pragma region // activations
	save_array < l0_conv_out_height * l0_conv_out_width * l0_conv_out_channels >
		( reinterpret_cast<float*>(l0_conv_feature_map) , "activations/l0_conv16_cpp.txt" , 30 );

	save_array < l1_maxp_out_height * l1_maxp_out_width * l1_maxp_out_channels >
		( reinterpret_cast<float*>(l1_maxp_feature_map) , "activations/l1_maxp16_cpp.txt" , 30 );

	save_array < l2_conv_out_height * l2_conv_out_width * l2_conv_out_channels >
		( reinterpret_cast<float*>(l2_conv_feature_map) , "activations/l2_conv32_cpp.txt" , 30 );

	save_array < l3_maxp_out_height * l3_maxp_out_width * l3_maxp_out_channels >
		( reinterpret_cast<float*>(l3_maxp_feature_map) , "activations/l3_maxp32_cpp.txt" , 30 );

	save_array < l4_dense_num_out > ( dense_map , "activations/l4_dense_cpp.txt" , 30 );

	save_array < l5_softmax_num_out > ( softmax_output , "activations/l5_softmax_cpp.txt" , 30 );
#pragma endregion
#pragma region // output gradients
	std::cout << "C++ entropy: " << std::setprecision(8) << entropy << "\n";

	save_array < l5_softmax_num_in > ( softmax_in_error , "output_gradients/l4_dense_cpp.txt" , 4 );

	save_array < l4_dense_num_in > ( dense_in_error , "output_gradients/l3_maxp32_cpp.txt" , 4 );

	save_array < l3_maxp_in_height * l3_maxp_in_width * l3_maxp_in_channels > (
		reinterpret_cast<float*>(l3_maxp_in_error) , "output_gradients/l2_conv32_cpp.txt" , 30 );

	save_array < l2_conv_in_height * l2_conv_in_width * l2_conv_in_channels > (
		reinterpret_cast<float*>(l2_conv_in_error) , "output_gradients/l1_maxp16_cpp.txt" , 30 );

	save_array < l1_maxp_in_height * l1_maxp_in_width * l1_maxp_in_channels > (
		reinterpret_cast<float*>(l1_maxp_in_error) , "output_gradients/l0_conv16_cpp.txt" , 30 );
#pragma endregion
#pragma region // variable gradients
	save_array < l5_softmax_num_in * l5_softmax_num_kernels > ( 
		reinterpret_cast<float*>(softmax_weight_gradients) , "variable_gradients/l5_weights_cpp.txt" , 4 );

	save_array < l5_softmax_num_kernels > ( softmax_bias_gradients , "variable_gradients/l5_biases_cpp.txt" , 4 );

	save_array < l4_dense_num_in * l4_dense_num_kernels > ( 
		reinterpret_cast<float*>(dense_weight_gradients) , "variable_gradients/l4_weights_cpp.txt" , 4 );

	save_array < l4_dense_num_kernels > ( dense_bias_gradients , "variable_gradients/l4_biases_cpp.txt" , 4 );

	save_array < l2_conv_filter_height * l2_conv_filter_width * l2_conv_in_channels * l2_conv_num_filters > ( 
		reinterpret_cast<float*>(l2_conv_weight_gradients) , "variable_gradients/l2_weights_cpp.txt" , 4 );

	save_array < l2_conv_num_filters > ( l2_conv_bias_gradients , "variable_gradients/l2_biases_cpp.txt" , 4 );

	save_array < l0_conv_filter_height * l0_conv_filter_width * l0_conv_in_channels * l0_conv_num_filters > ( 
		reinterpret_cast<float*>(l0_conv_weight_gradients) , "variable_gradients/l0_weights_cpp.txt" , 4 );

	save_array < l0_conv_num_filters > ( l0_conv_bias_gradients , "variable_gradients/l0_biases_cpp.txt" , 4 );
#pragma endregion
#pragma region // updated variables
	save_array < l0_conv_filter_height * l0_conv_filter_width * l0_conv_in_channels * l0_conv_num_filters > 
		( reinterpret_cast<float*>(l0_conv_weights) , "variables/l0_weights_cpp.txt" , 6 );

	save_array < l0_conv_num_filters > ( l0_conv_biases , "variables/l0_biases_cpp.txt" , 6 );

	save_array < l2_conv_filter_height * l2_conv_filter_width * l2_conv_in_channels * l2_conv_num_filters > 
		( reinterpret_cast<float*>(l2_conv_weights) , "variables/l2_weights_cpp.txt" , 6 );

	save_array < l2_conv_num_filters > ( l2_conv_biases , "variables/l2_biases_cpp.txt" , 6 );

	save_array < l4_dense_num_in * l4_dense_num_kernels > ( reinterpret_cast<float*>(dense_weights) , "variables/l4_weights_cpp.txt" , 6 );

	save_array < l4_dense_num_kernels > ( dense_biases , "variables/l4_biases_cpp.txt" , 6 );

	save_array < l5_softmax_num_in * l5_softmax_num_kernels > ( reinterpret_cast<float*>(softmax_weights) , "variables/l5_weights_cpp.txt" , 6 );

	save_array < l5_softmax_num_kernels > ( softmax_biases , "variables/l5_biases_cpp.txt" , 6 );
#pragma endregion
}

/***********************************************************************************/
/************************************ Load Data ************************************/
/***********************************************************************************/
#pragma region
template < 
	int l0_kernel_height , int l0_kernel_width , int l0_num_channels , int l0_num_kernels ,
	int l2_kernel_height , int l2_kernel_width , int l2_num_channels , int l2_num_kernels ,
	int l4_num_inputs , int l4_num_kernels , int l5_num_inputs , int l5_num_kernels >
void set_variables (
	float l0_conv_weights[l0_kernel_height][l0_kernel_width][l0_num_channels][l0_num_kernels] , float l0_conv_biases[l0_num_kernels] ,
	float l2_conv_weights[l2_kernel_height][l2_kernel_width][l2_num_channels][l2_num_kernels] , float l2_conv_biases[l2_num_kernels] ,
	float dense_weights[l4_num_inputs][l4_num_kernels] , float dense_biases[l4_num_kernels] ,
	float softmax_weights[l5_num_inputs][l5_num_kernels] , float softmax_biases[l5_num_kernels] )
{
	std::ifstream file;
	std::string line;

	/********** layer 0 **********/
	file.open("./temp/l0_weights.txt");
	for( int y = 0 ; y < l0_kernel_height ; y++ )
		for ( int x = 0 ; x < l0_kernel_width ; x++ )
			for ( int channel = 0 ; channel < l0_num_channels ; channel++ )
				for ( int kernel = 0 ; kernel < l0_num_kernels ; kernel++ )
				{
					getline( file , line );
					l0_conv_weights[y][x][channel][kernel] = std::stof(line);
				}
	file.close();

	file.open("./temp/l0_biases.txt");
	for( int kernel = 0 ; kernel < l0_num_kernels ; kernel++ )
	{
		getline( file , line );
		l0_conv_biases[kernel] = std::stof(line);
	}
	file.close();

	/********** layer 2 **********/
	file.open("./temp/l2_weights.txt");
	for( int y = 0 ; y < l2_kernel_height ; y++ )
		for ( int x = 0 ; x < l2_kernel_width ; x++ )
			for ( int channel = 0 ; channel < l2_num_channels ; channel++ )
				for ( int kernel = 0 ; kernel < l2_num_kernels ; kernel++ )
				{
					getline( file , line );
					l2_conv_weights[y][x][channel][kernel] = std::stof(line);
				}
	file.close();

	file.open("./temp/l2_biases.txt");
	for( int kernel = 0 ; kernel < l2_num_kernels ; kernel++ )
	{
		getline( file , line );
		l2_conv_biases[kernel] = std::stof(line);
	}
	file.close();

	/********** layer 4 **********/
	file.open("./temp/l4_weights.txt");
	for ( int i = 0 ; i < l4_num_inputs ; i++ )
		for ( int kernel = 0 ; kernel < l4_num_kernels ; kernel++ )
		{
			getline( file , line );
			dense_weights[i][kernel] = std::stof(line);
		}
	file.close();

	file.open("./temp/l4_biases.txt");
	for( int k = 0 ; k < l4_num_kernels ; k++ )
	{
		getline( file , line );
		dense_biases[k] = std::stof(line);
	}
	file.close();

	/********** layer 5 **********/
	file.open("./temp/l5_weights.txt");
	for ( int i = 0 ; i < l5_num_inputs ; i++ )
		for ( int kernel = 0 ; kernel < l5_num_kernels ; kernel++ )
		{
			getline( file , line );
			softmax_weights[i][kernel] = std::stof(line);
		}
	file.close();

	file.open("./temp/l5_biases.txt");
	for( int k = 0 ; k < l5_num_kernels ; k++ )
	{
		getline( file , line );
		softmax_biases[k] = std::stof(line);
	}
}
#pragma endregion
/***********************************************************************************/
/******************************* Forward Propagation *******************************/
/***********************************************************************************/
#pragma region
	/*********************************/
	/***** 2-D Convolution Layer *****/
	/*********************************/
// Generates a stream of windows, sized as the convolutional filter, from the input.
template < typename in_type ,
	uint in_height     , uint in_width    , uint in_channels ,
	uint filter_height , uint filter_width >
void create_window_stream_conv2d (
	in_type input[in_height][in_width][in_channels] , 
	std::queue< window < in_type , filter_height , filter_width > >& conv2d_window_stream )
{
	in_type* input_1D = reinterpret_cast<in_type*>(input);

	// line and window buffer
	in_type line_buffer[filter_height-1][in_width][in_channels];
	window < in_type , filter_height , filter_width > temp_windows[in_channels]; // one temp window per channel

	// required iterations to fill buffers
	uint ramp_up = in_width * ( ( filter_width - 1 ) / 2 ) + ( ( filter_height - 1 ) / 2 );
	uint num_pixels = in_width * in_height;

	// points where in the line buffers the window is going to shift
	uint col_ptr = 0;
	for ( uint pixel_counter = 0 ; pixel_counter < num_pixels + ramp_up ; pixel_counter++ )
	{
		//get new pixel, all its channels
		in_type new_pixel[in_channels];
		for ( uint channel = 0 ; channel < in_channels ; channel++ )
			if( pixel_counter < num_pixels )
				new_pixel[channel] = input_1D[ pixel_counter * in_channels + channel ];
			else
				new_pixel[channel] = 0.f;

		// shift window and add new pixels
		for( uint filter_y = 0 ; filter_y < filter_height ; filter_y++ )
		{
			// all columns except last
			for ( uint filter_x = 0 ; filter_x < filter_width - 1 ; filter_x++ )
				for( uint channel = 0 ; channel < in_channels ; channel++ )
					temp_windows[channel].elements[filter_y][filter_x] = temp_windows[channel].elements[filter_y][filter_x+1];
		
			// last column
			for( uint channel = 0 ; channel < in_channels ; channel++ )
				if ( filter_y < filter_height - 1 )
					temp_windows[channel].elements[filter_y][filter_width-1] = line_buffer[filter_y][col_ptr][channel];
				else
					temp_windows[channel].elements[filter_y][filter_width-1] = new_pixel[channel];
		}

		// shift line buffer and add new pixel
		for( uint line = 0 ; line < int(filter_height) - 2 ; line++ )
			for( uint channel = 0 ; channel < in_channels ; channel++ )
				line_buffer[line][col_ptr][channel] = line_buffer[line+1][col_ptr][channel];

		for( uint channel = 0 ; channel < in_channels ; channel++ )
			line_buffer[filter_height-2][col_ptr][channel] = new_pixel[channel];

		// move window on the line buffers
		if( col_ptr == in_width - 1 )
			col_ptr = 0;
		else
			col_ptr++;
		// dont write until the window fills up with usefull data
		if ( pixel_counter >= ramp_up )
			for( uint channel = 0 ; channel < in_channels ; channel++ )
				conv2d_window_stream.push( temp_windows[channel] );
	}
}

template < 
	typename in_type ,
	uint in_height     , uint in_width     , uint in_channels ,
	uint out_height    , uint out_width    , uint out_channels ,
	uint filter_height , uint filter_width , uint num_filters >
void conv2d (
	std::queue< window < in_type , filter_height , filter_width > >& input_window_stream, // inputs
	float weights[filter_height][filter_width][in_channels][num_filters] , float bias[num_filters] , // variables
	float output[out_height][out_width][out_channels] , bool activations [out_height][out_width][out_channels] ) // outputs
{
	// input / output dimensions loops, in_x/y == out_x/y
	for( uint in_y = 0 ; in_y < in_height ; in_y++ )
	{
		for ( uint in_x = 0 ; in_x < in_width ; in_x++ )
		{
			// pop windows from queues, one per input channel
			window < in_type , filter_height , filter_width > temp_windows[in_channels];
			for ( uint channel = 0 ; channel < in_channels ; channel++ )
			{
				std::memcpy( &(temp_windows[channel]) , &(input_window_stream.front()) , sizeof( temp_windows[channel] ) );
				input_window_stream.pop();
			}
			// one sum per filter. The outputs of a filter are indepentent of the outputs of the the other filters, 
			// can be parallelized indefinetly.
			float sum[num_filters];
			for( uint filter = 0 ; filter < num_filters ; filter++ )
				sum[filter] = 0.f;

			// filter dimensions loops, filter_y/x == window_y/x
			for( uint filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			{
				for ( uint filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				{
					// get neighboring pixel's coordinates
					int y_offseted = static_cast<int>( in_y + filter_y - filter_height / 2 );
					int x_offseted = static_cast<int>( in_x + filter_x - filter_width / 2 );

					// in 2d conv, windows pass through all feature maps, cumulative
					for ( uint channel = 0 ; channel < in_channels ; channel++ )
					{
						// pad with zeros if coordinates of neighboring pixelout of bounds
						in_type padded_pixel;
						if ( ( y_offseted < 0 ) || ( y_offseted >= int(in_height) ) || ( x_offseted < 0 ) || ( x_offseted >= int(in_width) ) )
							padded_pixel = 0.f;
						else
							padded_pixel = temp_windows[channel].elements[filter_y][filter_x];

						// num_filters == out_channels
						for( uint filter = 0 ; filter < num_filters ; filter++ )
							sum[filter] += float(padded_pixel) * weights[filter_y][filter_x][channel][filter];
					}
				}
			} // end filter dimensions loops
			// add bias & activate with relu
			for( uint filter = 0 ; filter < num_filters ; filter++ )
			{
				sum[filter] += bias[filter];
				bool activation = sum[filter] > 0.f;
				output[in_y][in_x][filter] = activation ? sum[filter] : 0.f;
				activations[in_y][in_x][filter] = activation;
			}
		}
	} // end input / output dimensions loops
}
	/*********************************/
	/******* 2-D Maxpool Layer *******/
	/*********************************/
template < typename in_type ,
	uint in_height     , uint in_width    , uint in_channels ,
	uint filter_height , uint filter_width , uint filter_stride >
void window_input_maxp2d (
	float input[in_height][in_width][in_channels] ,
	std::queue< window < in_type , filter_height , filter_width > >& maxp2d_window_stream )
{
	float* input_1D = reinterpret_cast<in_type*>(input);

	in_type line_buffer[filter_height][in_width][in_channels];
	window < in_type , filter_height , filter_width > temp_windows[in_channels];

	uint num_pixels = in_width * in_height;
	uint col_insert_ptr = 0;
	uint row_insert_ptr = 0;

	for( uint pixel = 0 ; pixel < num_pixels ; pixel++ )
	{
		// get new pixel, all channels
		in_type new_pixel[in_channels];
		for ( uint channel = 0 ; channel < in_channels ; channel++ )
			new_pixel[channel] = input_1D[ pixel * in_channels + channel ];

		// add it in line buffer
		for ( uint channel = 0 ; channel < in_channels ; channel++ )
			line_buffer[col_insert_ptr][row_insert_ptr][channel] = new_pixel[channel];

		// fill window
		for ( uint filter_y = 0 ; filter_y < filter_height ; filter_y++ ) // filter loops
			for ( uint filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				for ( uint channel = 0 ; channel < in_channels ; channel++ ) // channel loop
					// check if enough data to fill window, y axis && x axis
					if ( col_insert_ptr == filter_height - 1 && row_insert_ptr % filter_width == 1 ) // this if can go before the filter loops if needed
					{
						temp_windows[channel].elements[filter_y][filter_x] =
							line_buffer[ col_insert_ptr - 1 + filter_y ][ row_insert_ptr - 1 + filter_x ][channel];
						// final pixel in, write in stream
						if( filter_y == filter_height - 1 && filter_x == filter_width - 1 )
							maxp2d_window_stream.push( temp_windows[channel] );
					}

		// keep track of where we are in the line buffers
		row_insert_ptr++;
		if (row_insert_ptr == in_width )
		{
			row_insert_ptr = 0;
			col_insert_ptr++;
			if ( col_insert_ptr == filter_height )
				col_insert_ptr = 0;
		}
	}
}

template < typename in_type ,
	uint in_height     , uint in_width     , uint in_channels ,
	uint out_height    , uint out_width    , uint out_channels ,
	uint filter_height , uint filter_width , uint filter_stride >
void maxp2d (
	std::queue< window < in_type , filter_height , filter_width > >& maxp2d_window_stream , // inputs
	float output[out_height][out_width][out_channels] ,  // outputs
	std::queue< window < bool , filter_height , filter_width > >& maxp2d_activations_window_stream )
{
	// output dimension loops. out_y/x == in_x/y / stride maybe united when output is stream
	for ( uint out_y = 0 ; out_y < out_height ; out_y++ )
	{
		for( uint out_x = 0 ; out_x < out_width ; out_x++ )
		{
			// pop window, one per channel
			window < in_type , filter_height , filter_width > temp_windows[in_channels];
			for ( uint channel = 0 ; channel < in_channels ; channel++ )
			{
				std::memcpy( &(temp_windows[channel]) , &(maxp2d_window_stream.front()) , sizeof( temp_windows[channel] ) );
				maxp2d_window_stream.pop();
			}
			// init temp variables
			float max[in_channels];
			for( uint channel = 0 ; channel < in_channels ; channel++ )
				max[channel] = -std::numeric_limits<float>::infinity();

			uint max_pos[out_channels][2]; // filter dimensions == 2
			window < bool , filter_height , filter_width > temp_activation_window[in_channels];

			// filter dimension loops. filter_x/y == window_x/y
			for( uint filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			{
				for ( uint filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				{
					// channel loop. in_channels == out_channels
					for ( uint channel = 0 ; channel < in_channels ; channel++ )
					{
						// clean up data from previous iterations
						temp_activation_window[channel].elements[filter_y][filter_x] = false;

						// check if max
						if ( temp_windows[channel].elements[filter_y][filter_x] > max[channel] )
						{
							max[channel] = temp_windows[channel].elements[filter_y][filter_x];

							// remember the position of last max
							max_pos[channel][0] = filter_y;
							max_pos[channel][1] = filter_x;
						}
						// all elements in the window have been processed, push it
						if( filter_y == filter_height - 1 && filter_x == filter_width - 1 )
						{
							output[out_y][out_x][channel] = max[channel];
							temp_activation_window[channel].elements[ max_pos[channel][0] ][ max_pos[channel][1] ] = true;

							maxp2d_activations_window_stream.push( temp_activation_window[channel] );
						}
					}
				}	
			}
		}
	}
}

	/*********************************/
	/******* 2-D Maxpool Layer *******/
/* Max imediately on buffers, no windows */
	/*********************************/
template < typename in_type ,
	uint in_height     , uint in_width    , uint in_channels ,
	uint out_height    , uint out_width    , uint out_channels ,
	uint filter_height , uint filter_width , uint filter_stride >
void maxp2d_window_integrated (
	float input[in_height][in_width][in_channels] ,
	float output[out_height][out_width][out_channels] ,  // outputs
	std::queue< window < bool , filter_height , filter_width > >& maxp2d_activations_window_stream )
{
	// this will be replaced by streams
	float* input_1D = reinterpret_cast<in_type*>(input);
	float* output_1D = reinterpret_cast<in_type*>(output);
	uint output_1D_counter = 0;

	in_type line_buffer[filter_height][in_width][in_channels];
	window < bool , filter_height , filter_width > activation_window[in_channels];

	const uint num_pixels = in_width * in_height; // TODO: check const
	uint col_insert_ptr = 0;
	uint row_insert_ptr = 0;

	for( uint pixel = 0 ; pixel < num_pixels ; pixel++ )
	{
		// get new pixel, all channels, and insert it in the line buffer
		for ( uint channel = 0 ; channel < in_channels ; channel++ )
			line_buffer[col_insert_ptr][row_insert_ptr][channel] = input_1D[ pixel * in_channels + channel ];

		// temps used to find maxes, one for each channel
		in_type max[in_channels];
		for ( uint channel = 0 ; channel < in_channels ; channel++ )
			max[channel] = -std::numeric_limits<in_type>::infinity();
		uint max_pos_y[in_channels];
		uint max_pos_x[in_channels];
		
		// fill window
		for ( uint filter_y = 0 ; filter_y < filter_height ; filter_y++ ) // filter loops
			for ( uint filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				for ( uint channel = 0 ; channel < in_channels ; channel++ ) // channel loop
				{
					activation_window[channel].elements[filter_y][filter_x] = false;

					int y_on_line_buffers = static_cast<int>( col_insert_ptr - filter_stride/2 + filter_y );
					int x_on_line_buffers = static_cast<int>( row_insert_ptr - filter_stride/2 + filter_x );
					// valid position
					if ( y_on_line_buffers >= 0 && x_on_line_buffers >= 0 )
					{
						// greater than max
						if ( line_buffer[y_on_line_buffers][x_on_line_buffers][channel] > max[channel] ) 
						{
							max[channel] = line_buffer[ col_insert_ptr - 1 + filter_y ][ row_insert_ptr - 1 + filter_x ][channel];
							max_pos_y[channel] = filter_y;
							max_pos_x[channel] = filter_x;
						}
					}
					// check if enough data to fill window, y axis && x axis
					if( col_insert_ptr == filter_height - 1 && row_insert_ptr % filter_width == 1 ) // this if can go before the after filter loops if needed
					{
						// final pixel of window in, write in streams
						if( filter_y == filter_height - 1 && filter_x == filter_width - 1 ) // and remove this if but add channel loop
						{
							output_1D[output_1D_counter] = max[channel];
							output_1D_counter++;
							activation_window[channel].elements[ max_pos_y[channel] ][ max_pos_x[channel] ] = true;
							maxp2d_activations_window_stream.push( activation_window[channel] );
						}							
					}
				}
		// keep track of where we insert in the line buffers
		row_insert_ptr++;
		if (row_insert_ptr == in_width )
		{
			row_insert_ptr = 0;
			col_insert_ptr++;
			if( col_insert_ptr == filter_height )
				col_insert_ptr = 0;
		}
	}
}
	/*********************************/
	/********** Dense Layer **********/
	/*********************************/
template < uint num_kernels , uint num_inputs >
void dense ( 
	float input[num_inputs] , float output[num_kernels] , bool activations[num_kernels] ,
	float weights[num_inputs][num_kernels] , float biases[num_kernels] )
{
	float sum[num_kernels];
	// initialize the sum of each kernel with its bias
	for( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
		sum[kernel] = biases[kernel];

	// pull one input and use it with all the kernels
	for ( uint i = 0 ; i < num_inputs ; i++ )
		for ( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
			sum[kernel] += input[i] * weights[i][kernel];

	// relu activation for all kernels
	for ( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		bool activation = ( sum[kernel] > 0 );
		output[kernel] = activation ? sum[kernel] : 0;
		activations[kernel] = activation;
	}
}
	/*********************************/
	/********* Softmax Layer *********/
	/*********************************/
template < uint num_kernels , uint num_inputs >
void softmax_clasifier ( 
	float input[num_inputs] , float output[num_kernels] , 
	float weights[num_inputs][num_kernels] , float biases[num_kernels] )
{
	double sum[num_kernels];
	// initialize the sum of each kernel with its bias
	for( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
		sum[kernel] = biases[kernel];

	// pull one input and use it with all the kernels
	for ( uint i = 0 ; i < num_inputs ; i++ )
		for ( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
			sum[kernel] += input[i] * weights[i][kernel];
			
	// softmax, normalized inputs by the largest value
	double softmax_max = -std::numeric_limits<double>::infinity();
	for ( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
		if ( sum[kernel] > softmax_max )
			softmax_max = sum[kernel];

	double softmax_sum = 0.f;
	for ( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
		softmax_sum += std::exp( sum[kernel] - softmax_max );

	double constant = softmax_max + std::log( softmax_sum );
	for ( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
		output[kernel] = std::exp( sum[kernel] - constant );
}
#pragma endregion
/***********************************************************************************/
/******************************** Back Propagation *********************************/
/***********************************************************************************/
#pragma region
template < uint num_kernels >
float sparce_categorical_cross_entropy ( float prediction[num_kernels] , uint label , float softmax_output_error[num_kernels] )
{
	for ( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
		softmax_output_error[kernel] = - ( ( label == kernel ) - prediction[kernel] ); // -(yi - ai)

	// one-hot distribution. Loss of non-label classes equals to zero. 
	float sum = - std::log( prediction[label] );

	return sum;
}

template < uint num_kernels , uint num_inputs >
void softmax_error_propagation ( float output_error[num_kernels] , float weights[num_inputs][num_kernels] , float input_error[num_inputs] )
{
	for ( uint input = 0 ; input < num_inputs ; input++ )
	{
		float sum = 0.f;
		for ( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
		{
			sum += weights[input][kernel] * output_error[kernel];
		}
		input_error[input] = sum;
	}
}

template < uint num_kernels , uint num_inputs >
void dense_error_propagation (
	float output_error[num_kernels] ,float weights[num_inputs][num_kernels] ,  bool activations[num_kernels] , float input_error[num_inputs] )
{
	for ( uint input = 0 ; input < num_inputs ; input++ )
	{
		float sum = 0.f;
		for ( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
		{
			if ( activations[kernel] ) // relu was activated => error propagates backward?
				sum += weights[input][kernel] * output_error[kernel];
		}
		input_error[input] = sum;
	}
}

template <
	uint     in_height , uint     in_width , uint   in_channels ,
	uint    out_height , uint    out_width , uint  out_channels ,
	uint filter_height , uint filter_width , uint filter_stride >
void maxp2d_error_propagation (
	float output_error[ out_height * out_width * out_channels ] ,
	std::queue< window < bool , filter_height , filter_width > >& maxp2d_activations_window_stream ,
	float input_error[in_height][in_width][in_channels] ) // output
{
	// store two lines before sending them
	float line_buffers[filter_height][in_width][in_channels];
	
	uint out_error_counter = 0;
	// output_error dimension loops. Each pixel of the output_error is processed one by one
	for ( uint out_y = 0 ; out_y < out_height ; out_y++ )
	{
		for ( uint out_x = 0 ; out_x < out_width ; out_x++ )
		{
			uint in_x = out_x * filter_stride;
			// pull a pixel
			float pixel_error[out_channels];
			for (uint channel = 0 ; channel < out_channels ; channel++ )
				pixel_error[channel] = output_error[out_error_counter + channel];
			// update the counter to be ready for the next pixel
			out_error_counter += out_channels;

			// pop windows of activations, one for each channel
			window < bool , filter_height , filter_width > activations_temp_window[in_channels];
			for ( uint channel = 0 ; channel < out_channels ; channel++ )
			{
				std::memcpy( &(activations_temp_window[channel]) , &(maxp2d_activations_window_stream.front()) , sizeof( activations_temp_window[channel] ) );
				maxp2d_activations_window_stream.pop();
			}
			// filter dimension loops
			for ( uint filter_y = 0 ; filter_y < filter_height ; filter_y++ ) 
				for ( uint filter_x = 0 ; filter_x < filter_width ; filter_x++ )
					// channel loop
					for (uint channel = 0 ; channel < out_channels ; channel++ )
					{
						if( activations_temp_window[channel].elements[filter_y][filter_x] )
							line_buffers[filter_y][in_x+filter_x][channel] = pixel_error[channel];
						else // pixel did not activate
							line_buffers[filter_y][in_x+filter_x][channel] = 0.f;
					}
		}
		uint in_y = out_y * filter_stride; // keep track of equivalent input dimensions
		// filter_height lines of input errors are filled in the line buffer, send them forward.
		for ( uint filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			for ( uint in_x = 0 ; in_x < in_width ; in_x++ )
				for (uint channel = 0 ; channel < out_channels ; channel++ )
					input_error[in_y+filter_y][in_x][channel] = line_buffers[filter_y][in_x][channel];
	}
}

template <
	uint     in_height , uint     in_width , uint   in_channels ,
	uint    out_height , uint    out_width , uint  out_channels ,
	uint filter_height , uint filter_width , uint   num_filters >
void conv2d_error_propagation (
	std::queue < window < float , filter_height , filter_width > > out_error_window_stream ,
	std::queue < window < bool  , filter_height , filter_width > > activations_window_stream ,
	float weights[filter_height][filter_width][in_channels][num_filters] , // variables
	float input_error[in_height][in_width][in_channels] ) // output
{
	// input / output dimensions loops, in_x/y == out_x/y
	for( uint out_y = 0 ; out_y < out_height ; out_y++ )
	{
		for ( uint out_x = 0 ; out_x < out_width ; out_x++ )
		{
			// pop windows from queues, one per input channel
			window < float , filter_height , filter_width > temp_windows[out_channels];
			window < bool  , filter_height , filter_width > temp_activations[out_channels];
			for ( uint filter = 0 ; filter < num_filters ; filter++ )
			{
				std::memcpy( &(temp_windows[filter]) , &(out_error_window_stream.front()) , sizeof( temp_windows[filter] ) );
				out_error_window_stream.pop();
				std::memcpy( &(temp_activations[filter]) , &(activations_window_stream.front()) , sizeof( temp_activations[filter] ) );
				activations_window_stream.pop();
			}
			float sum[in_channels];
			for ( uint channel = 0 ; channel < in_channels ; channel++ )
				sum[channel] = 0;

			// filter dimensions loops, filter_y/x == window_y/x
			for( uint filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			{
				for ( uint filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				{
					// get neighboring pixel's coordinates
					int y_offseted = static_cast<int>( out_y + filter_y - filter_height / 2 );
					int x_offseted = static_cast<int>( out_x + filter_x - filter_width / 2 );

					// in 2d conv, windows pass through all feature maps, cumulative
					for ( uint channel = 0 ; channel < in_channels ; channel++ )
					{
						// num_filters == out_channels
						for( uint filter = 0 ; filter < num_filters ; filter++ )
						{
							if ( ! ( ( y_offseted < 0 ) || ( y_offseted >= int(out_height) ) || ( x_offseted < 0 ) || ( x_offseted >= int(out_width) ) ) )
							{
								float padded_pixel = temp_windows[num_filters - 1 - filter].elements[filter_y][filter_x];
								bool activation = temp_activations[num_filters - 1 - filter].elements[filter_y][filter_x];

								sum[in_channels - 1 - channel] += activation ? 
									float(padded_pixel) * weights[filter_height - 1 - filter_y][filter_width - 1 - filter_x][in_channels - 1 - channel][num_filters - 1 - filter] : 0;
							}
						}
					}
				}
			}
			for ( uint channel = 0 ; channel < in_channels ; channel++ )
				input_error[out_y][out_x][channel] = sum[channel];
		}
	}
}
#pragma endregion
/***********************************************************************************/
/****************************** Gradient Calculation *******************************/
/***********************************************************************************/
#pragma region
// https://www.youtube.com/watch?v=aeM-fmcdkXU
template < uint num_inputs , uint num_kernels >
void softmax_regression (
	float inputs[num_inputs] , float output_error[num_kernels] ,
	float weight_gradients[num_inputs][num_kernels] , float bias_gradients[num_kernels] )
{
	for ( uint i = 0 ; i < num_inputs ; i++ )
		for ( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
			weight_gradients[i][kernel] = output_error[kernel] * inputs[i]; // -(yi - ai) * xi

	for ( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
		bias_gradients[kernel] = output_error[kernel]; // -(yi - ai)
}

template < uint num_inputs , uint num_kernels >
void dense_regression (
	float inputs[num_inputs] , float output_error[num_kernels] , bool activations[num_kernels] ,
	float weight_gradients[num_inputs][num_kernels] , float bias_gradients[num_kernels] )
{
	float kernel_error[num_kernels];
	for ( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
		kernel_error[kernel] = activations[kernel] ? output_error[kernel] : 0.f;

	for ( uint input = 0 ; input < num_inputs ; input++ )
		for ( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
				weight_gradients[input][kernel] = kernel_error[kernel] * inputs[input];

	for ( uint kernel = 0 ; kernel < num_kernels ; kernel++ )
		bias_gradients[kernel] = kernel_error[kernel];
}

template < typename in_type ,
	uint     in_height , uint     in_width , uint   in_channels ,
	uint    out_height , uint    out_width , uint  out_channels ,
	uint filter_height , uint filter_width , uint   num_filters >
void conv2d_regression (
	std::queue< window < in_type , filter_height , filter_width > >& input_window_stream ,
	float output_error[out_height][out_width][out_channels] ,
	bool activations[out_height][out_width][out_channels] ,
	float weight_gradients[filter_height][filter_width][in_channels][num_filters] , float bias_gradients[num_filters] )
{
	/******* error per output ********/
	float out_map_error[out_height][out_width][num_filters];

	float bias_sum[num_filters];
	for( uint filter = 0 ; filter < num_filters ; filter++ )
		bias_sum[filter] = 0;

	for( uint out_y = 0 ; out_y < out_height ; out_y++ )
		for( uint out_x = 0 ; out_x < out_width ; out_x++ )
			for( uint filter = 0 ; filter < num_filters ; filter++ )
			{
				out_map_error[out_y][out_x][filter] = activations[out_y][out_x][filter] ? output_error [out_y][out_x][filter] : 0.f;
				bias_sum[filter] += out_map_error[out_y][out_x][filter];
			}
	
	for( uint filter = 0 ; filter < num_filters ; filter++ )
		bias_gradients[filter] = bias_sum[filter];

	/******** 2-D Convolution  *******/
	// input / output dimensions loops, in_x/y == out_x/y
	for( uint in_y = 0 ; in_y < in_height ; in_y++ )
	{
		for( uint in_x = 0 ; in_x < in_width ; in_x++ )
		{
			// pop windows from queues, one per input channel
			window < in_type , filter_height , filter_width > temp_windows[in_channels];
			for ( uint channel = 0 ; channel < in_channels ; channel++ )
			{
				std::memcpy( &(temp_windows[channel]) , &(input_window_stream.front()) , sizeof( temp_windows[channel] ) );
				input_window_stream.pop();
			}
			// one sum per filter. The outputs of a filter are indepentent of the outputs of the the other filters
			float pixel_error[num_filters];
			for( uint filter = 0 ; filter < num_filters ; filter++ )
				pixel_error[filter] = out_map_error[in_y][in_x][filter];

			// filter dimensions loops, filter_y/x == window_y/x
			for( uint filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			{
				for ( uint filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				{
					// get neighboring pixel's coordinates
					int y_offseted = static_cast<int>( in_y + filter_y - filter_height / 2 );
					int x_offseted = static_cast<int>( in_x + filter_x - filter_width / 2 );

					// channel dim loops
					for ( uint channel = 0 ; channel < in_channels ; channel++ )
					{
						// pad with zeros if coordinates of neighboring pixelout of bounds
						in_type padded_pixel;
						if ( ( y_offseted < 0 ) || ( y_offseted >= int(in_height) ) || ( x_offseted < 0 ) || ( x_offseted >= int(in_width) ) )
							padded_pixel = 0.f;
						else
							padded_pixel = temp_windows[channel].elements[filter_y][filter_x];

						// num_filters == out_channels
						for( uint filter = 0 ; filter < num_filters ; filter++ )
							weight_gradients[filter_y][filter_x][channel][filter] += float(padded_pixel) * pixel_error[filter];
					}
				}
			}
		}
	}
}
#pragma endregion
/***********************************************************************************/
/******************************** Variable Updating ********************************/
/***********************************************************************************/
#pragma region
template < uint num_variables >
void gradient_descend ( float variables[num_variables] , float gradients[num_variables] , float learning_rate )
{
	for ( uint i = 0 ; i < num_variables ; i++ )
		variables[i] = variables[i] - learning_rate * gradients[i];
}
#pragma endregion
/***********************************************************************************/
/************************************ Save Data ************************************/
/***********************************************************************************/
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
