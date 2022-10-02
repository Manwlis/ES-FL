#include "cnn.hpp"

int main ( int argc , char** argv )
{
	/*********************************/
	/*********** Get input ***********/
	/*********************************/
    std::ifstream input_file("temp/array.txt");
	std::string temp;

	float input[image_maps][image_height][image_width];
	for( int i = 0 ; i < image_height ; i++ )
		for ( int y = 0 ; y < image_width ; y++ )
		{
			input_file >> temp;
			input[0][i][y] = std::stof(temp);
		}
	/*********************************/
	/******** Import variables *******/
	/*********************************/
#pragma region
	static float layer0_weights[conv2d_32_num_filters][image_maps][conv2d_32_filter_height][conv2d_32_filter_width];
	static float layer2_weights[conv2d_64_num_filters][conv2d_64_input_maps][conv2d_64_filter_height][conv2d_64_filter_width];
	static float layer4_weights[dense_num_inputs][dense_num_kernels];
	static float layer5_weights[softmax_num_inputs][softmax_num_kernels];

	static float layer0_biases[conv2d_32_num_filters];
	static float layer2_biases[conv2d_64_num_filters];
	static float layer4_biases[dense_num_kernels];
	static float layer5_biases[softmax_num_kernels];

	set_variables < 
		conv2d_32_num_filters ,           image_maps , conv2d_32_filter_height , conv2d_32_filter_width ,
		conv2d_64_num_filters , conv2d_64_input_maps , conv2d_64_filter_height , conv2d_64_filter_width ,
		    dense_num_kernels ,     dense_num_inputs ,
		  softmax_num_kernels ,   softmax_num_inputs >
		(
		layer0_weights , layer0_biases ,
		layer2_weights , layer2_biases ,
		layer4_weights , layer4_biases ,
		layer5_weights , layer5_biases );
#pragma endregion
	/*********************************/
	/***** Forward Propagation *******/
	/*********************************/
#pragma region
	// layer outputs
	static float conv2d_32_feature_map[conv2d_32_output_maps][conv2d_32_output_height][conv2d_32_output_width];
	static float maxpool2d_32_feature_map[maxpool2d_32_output_maps][maxpool2d_32_output_height][maxpool2d_32_output_width];
	static float conv2d_64_feature_map[conv2d_64_output_maps][conv2d_64_output_height][conv2d_64_output_width];
	static float maxpool2d_64_feature_map[maxpool2d_64_output_maps][maxpool2d_64_output_height][maxpool2d_64_output_width];
	static float dense_map[dense_num_outputs];
	static float softmax_output[softmax_num_outputs];

	static bool conv2d_32_activations[conv2d_32_output_maps][conv2d_32_output_height][conv2d_32_output_width];
	static short maxpool2d_32_max_indices[maxpool2d_32_output_maps * maxpool2d_32_output_height * maxpool2d_32_output_width][3];
	static bool conv2d_64_activations[conv2d_64_output_maps][conv2d_64_output_height][conv2d_64_output_width];
	static short maxpool2d_64_max_indices[maxpool2d_64_output_maps * maxpool2d_64_output_height * maxpool2d_64_output_width][3];
	static bool dense_activations[dense_num_outputs]; // need to remember if relu activated to get its derivative. ReLU > 0 => ReLU' = input, ReLU <= 0 => ReLU' = 0

	// Layer 0
	// conv2d <
	conv2d_window < 
		float , 
		image_maps , image_height , image_width , 
		conv2d_32_output_maps , conv2d_32_output_height , conv2d_32_output_width , 
		conv2d_32_num_filters , conv2d_32_filter_height , conv2d_32_filter_width >
		( input , conv2d_32_feature_map , conv2d_32_activations , layer0_weights , layer0_biases );
	
	// Layer 1
	// maxpool2d <
	maxpool2d_window <
		maxpool2d_32_input_maps , maxpool2d_32_input_height , maxpool2d_32_input_width ,
		maxpool2d_32_output_maps , maxpool2d_32_output_height , maxpool2d_32_output_width , 
		maxpool2d_32_filter_height , maxpool2d_32_filter_width , maxpool2d_32_filter_stride >
		( conv2d_32_feature_map , maxpool2d_32_feature_map , maxpool2d_32_max_indices );

	// Layer 2
	// conv2d <
	conv2d_window <
		float , 
		conv2d_64_input_maps , conv2d_64_input_height , conv2d_64_input_width , 
		conv2d_64_output_maps , conv2d_64_output_height , conv2d_64_output_width , 
		conv2d_64_num_filters , conv2d_64_filter_height , conv2d_64_filter_width >
		( maxpool2d_32_feature_map , conv2d_64_feature_map , conv2d_64_activations , layer2_weights , layer2_biases );

	// Layer 3
	// maxpool2d <
	maxpool2d_window <
		maxpool2d_64_input_maps , maxpool2d_64_input_height , maxpool2d_64_input_width ,
		maxpool2d_64_output_maps , maxpool2d_64_output_height , maxpool2d_64_output_width , 
		maxpool2d_64_filter_height , maxpool2d_64_filter_width , maxpool2d_64_filter_stride >
		( conv2d_64_feature_map , maxpool2d_64_feature_map , maxpool2d_64_max_indices );

	// Layer 4
	dense < dense_num_kernels , dense_num_inputs >
		( reinterpret_cast<float*>(maxpool2d_64_feature_map) , dense_map , dense_activations , layer4_weights , layer4_biases );

	// Layer 5
	softmax_clasifier < softmax_num_kernels , softmax_num_inputs >
		( dense_map , softmax_output , layer5_weights , layer5_biases );

#pragma endregion
	/*********************************/
	/******* Back Propagation ********/
	/*********************************/
#pragma region
	static float softmax_output_error[softmax_num_kernels];
	static float softmax_input_error[softmax_num_inputs];
	static float dense_input_error[dense_num_inputs];
	static float maxpool2d_64_input_error[maxpool2d_64_input_maps][maxpool2d_64_input_height][maxpool2d_64_input_width];

	double entropy = sparce_categorical_cross_entropy < softmax_num_kernels > ( softmax_output , 4 , softmax_output_error );

	softmax_error_propagation < softmax_num_kernels , softmax_num_inputs >
		( layer5_weights , softmax_output_error , softmax_input_error );

	dense_error_propagation < dense_num_kernels , dense_num_inputs >
		( layer4_weights , softmax_input_error , dense_activations , dense_input_error );

	maxpool_error_propagation < 
		maxpool2d_64_input_maps , maxpool2d_64_input_height , maxpool2d_64_input_width ,
		maxpool2d_64_output_maps , maxpool2d_64_output_height , maxpool2d_64_output_width >
		( dense_input_error , maxpool2d_64_max_indices , maxpool2d_64_input_error );

#pragma endregion
	/*********************************/
	/****** Calculate Gradients ******/
	/*********************************/
#pragma region
	static float layer5_weight_gradients[softmax_num_inputs][softmax_num_kernels];
	static float layer4_weight_gradients[dense_num_inputs][dense_num_kernels];
	static float layer2_weight_gradients[conv2d_64_num_filters][conv2d_64_input_maps][conv2d_64_filter_height][conv2d_64_filter_width];

	static float layer5_bias_gradients[softmax_num_kernels];
	static float layer4_bias_gradients[dense_num_kernels];
	static float layer2_bias_gradients[conv2d_64_num_filters];

	// layer 5
	softmax_variables_regression < softmax_num_kernels , softmax_num_inputs >
		( dense_map , softmax_output_error , layer5_bias_gradients , layer5_weight_gradients );

	// layer 4
	dense_variables_regression < dense_num_kernels , dense_num_inputs > (
		reinterpret_cast<float*>(maxpool2d_64_feature_map) , dense_activations ,
		softmax_input_error , // error of activation of dense layer == error of input of softmax layer
		layer4_bias_gradients , layer4_weight_gradients );

	// layer 2
	// conv2d_variables_regression
	conv2d_window_variables_regression <
		float ,
		conv2d_64_input_maps , conv2d_64_input_height , conv2d_64_input_width ,
		conv2d_64_output_maps , conv2d_64_output_height , conv2d_64_output_width ,
		conv2d_64_num_filters , conv2d_64_filter_height , conv2d_64_filter_width > (
		maxpool2d_32_feature_map , maxpool2d_64_input_error , conv2d_64_activations ,
		layer2_weight_gradients , layer2_bias_gradients );

#pragma endregion
	/*********************************/
	/******** Variable updates *******/
	/*********************************/
#pragma region
	// layer 5
	gradient_descend < softmax_num_kernels , softmax_num_inputs >
		( layer5_weights , layer5_weight_gradients , learning_rate_const );

	gradient_descend < softmax_num_kernels , 1 > (
		*reinterpret_cast<float (*)[1][softmax_num_kernels]>(&layer5_biases) , 
		*reinterpret_cast<float (*)[1][softmax_num_kernels]>(&layer5_bias_gradients) , learning_rate_const );

	// layer 4
	gradient_descend < dense_num_kernels , dense_num_inputs >
		( layer4_weights , layer4_weight_gradients , learning_rate_const );

	gradient_descend < dense_num_kernels , 1 > (
		*reinterpret_cast<float (*)[1][dense_num_kernels]>(&layer4_biases) , 
		*reinterpret_cast<float (*)[1][dense_num_kernels]>(&layer4_bias_gradients) , learning_rate_const );

#pragma endregion
	/*********************************/
	/********* Show outputs **********/
	/*********************************/
#pragma region // Forward Propagation
	// layer 0
	save_feature_map < conv2d_32_output_maps , conv2d_32_output_height , conv2d_32_output_width >
		( conv2d_32_feature_map , "activations/l0_conv32_cpp.txt" , 4 );

	// layer 1
	save_feature_map < maxpool2d_32_output_maps , maxpool2d_32_output_height , maxpool2d_32_output_width >
		( maxpool2d_32_feature_map , "activations/l1_maxp32_cpp.txt" , 4 );

	// layer 2
	save_feature_map < conv2d_64_output_maps , conv2d_64_output_height , conv2d_64_output_width >
		( conv2d_64_feature_map , "activations/l2_conv64_cpp.txt" , 4 );

	// layer 3
	save_feature_map < maxpool2d_64_output_maps , maxpool2d_64_output_height , maxpool2d_64_output_width >
		( maxpool2d_64_feature_map , "activations/l3_maxp64_cpp.txt" , 4 );

	// layer 4
	save_feature_map < 1 , 1 , dense_num_kernels >
		( *reinterpret_cast<float (*)[1][1][dense_num_kernels]>(&dense_map) , "activations/l4_dense_cpp.txt" , 4 );

	// layer 5
	save_feature_map < 1 , 1 , softmax_num_kernels >
		( *reinterpret_cast<float (*)[1][1][softmax_num_kernels]>(&softmax_output) , "activations/l5_softmax_cpp.txt" , 4 );
#pragma endregion

#pragma region // back propagation
	save_feature_map < 1 , 1 , softmax_num_inputs >
		( *reinterpret_cast<float (*)[1][1][softmax_num_inputs]>(&softmax_input_error) , "output_gradients/l4_dense_cpp.txt" , 4 );

	save_feature_map < 1 , 1 , dense_num_inputs >
		( *reinterpret_cast<float (*)[1][1][dense_num_inputs]>(&dense_input_error) , "output_gradients/l3_maxp64_cpp.txt" , 4 );

	save_feature_map < maxpool2d_64_input_maps , maxpool2d_64_input_height , maxpool2d_64_input_width >
		( maxpool2d_64_input_error , "output_gradients/l2_conv64_cpp.txt" , 4 );

#pragma endregion

#pragma region // variable gradients
	std::cout << "C++ entropy: " << std::setprecision(8) << entropy << "\n";

	// layer 5
	save_feature_map < 1 , softmax_num_inputs , softmax_num_kernels >
		( *reinterpret_cast<float (*)[1][softmax_num_inputs][softmax_num_kernels]>(&layer5_weight_gradients) , "variable_gradients/l5_weights_cpp.txt" , 4 );

	save_feature_map < 1 , 1 , softmax_num_kernels >
		( *reinterpret_cast<float (*)[1][1][softmax_num_kernels]>(&layer5_bias_gradients) , "variable_gradients/l5_biases_cpp.txt" , 4 );

	// layer 4
	save_feature_map < 1 , dense_num_inputs , dense_num_kernels >
		( *reinterpret_cast<float (*)[1][dense_num_inputs][dense_num_kernels]>(&layer4_weight_gradients) , "variable_gradients/l4_weights_cpp.txt" , 4 );

	save_feature_map < 1 , 1 , dense_num_kernels >
		( *reinterpret_cast<float (*)[1][1][dense_num_kernels]>(&layer4_bias_gradients) , "variable_gradients/l4_biases_cpp.txt" , 4 );

	// layer 2
	save_4d_array < conv2d_64_num_filters , conv2d_64_input_maps , conv2d_64_filter_height , conv2d_64_filter_width >
		( layer2_weight_gradients , "variable_gradients/l2_weights_cpp.txt" , 4 );

	save_feature_map < 1 , 1 , conv2d_64_num_filters >
		( *reinterpret_cast<float (*)[1][1][conv2d_64_num_filters]>(&layer2_bias_gradients) , "variable_gradients/l2_biases_cpp.txt" , 4 );

	// layer 0
	
#pragma endregion

#pragma region // updated variables
	// layer 5
	save_feature_map < 1 , softmax_num_inputs , softmax_num_kernels >
		( *reinterpret_cast<float (*)[1][softmax_num_inputs][softmax_num_kernels]>(&layer5_weights) , "variables/l5_weights_cpp.txt" , 6 );
	
	save_feature_map < 1 , 1 , softmax_num_kernels >
		( *reinterpret_cast<float (*)[1][1][softmax_num_kernels]>(&layer5_biases) , "variables/l5_biases_cpp.txt" , 6 );

	// layer 4
	save_feature_map < 1 , dense_num_inputs , dense_num_kernels >
		( *reinterpret_cast<float (*)[1][dense_num_inputs][dense_num_kernels]>(&layer4_weights) , "variables/l4_weights_cpp.txt" , 6 );
	
	save_feature_map < 1 , 1 , dense_num_kernels >
		( *reinterpret_cast<float (*)[1][1][dense_num_kernels]>(&layer4_biases) , "variables/l4_biases_cpp.txt" , 6 );
#pragma endregion
}

/******************************************/
/**************** Load Data ***************/
/******************************************/
#pragma region
template < 
	int l0_num_kernels , int l0_num_maps , int l0_kernel_height , int l0_kernel_width ,
	int l2_num_kernels , int l2_num_maps , int l2_kernel_height , int l2_kernel_width ,
	int l4_num_kernels , int l4_num_inputs ,
	int l5_num_kernels , int l5_num_inputs >
void set_variables (
	float layer0_weights[l0_num_kernels][l0_num_maps][l0_kernel_height][l0_kernel_width] , float layer0_biases[l0_num_kernels] ,
	float layer2_weights[l2_num_kernels][l2_num_maps][l2_kernel_height][l2_kernel_width] , float layer2_biases[l2_num_kernels] ,
	float layer4_weights[l4_num_inputs][l4_num_kernels] , float layer4_biases[l4_num_kernels] ,
	float layer5_weights[l5_num_inputs][l5_num_kernels] , float layer5_biases[l5_num_kernels] )
{
	std::ifstream file;
	std::string line;

	/********** layer 0 **********/
	file.open("./temp/l0_weights.txt");
	for ( int filter = 0 ; filter < l0_num_kernels ; filter++ )
		for ( int in_map = 0 ; in_map < l0_num_maps ; in_map++ )
			for( int i = 0 ; i < l0_kernel_height ; i++ )
				for ( int y = 0 ; y < l0_kernel_width ; y++ )
				{
					getline( file , line );
					layer0_weights[filter][in_map][i][y] = std::stof(line);
				}
	file.close();

	// for ( int filter = 0 ; filter < l0_num_kernels ; filter++ )
	// {
	// 	for ( int in_map = 0 ; in_map < l0_num_maps ; in_map++ )
	// 		for( int i = 0 ; i < l0_kernel_height ; i++ )
	// 		{
	// 			for ( int y = 0 ; y < l0_kernel_width ; y++ )
	// 			{
	// 				std::cout << std::setw(5) << layer0_weights[filter][in_map][i][y] << " ";
	// 			}
	// 			std::cout << "\n";
	// 		}
	// 	std::cout << "\n";
	// }	

	file.open("./temp/l0_biases.txt");
	for( int k = 0 ; k < l0_num_kernels ; k++ )
	{
		getline( file , line );
		layer0_biases[k] = std::stof(line);
	}
	file.close();

	/********** layer 2 **********/
	file.open("./temp/l2_weights.txt");
	for ( int filter = 0 ; filter < l2_num_kernels ; filter++ )
		for ( int in_map = 0 ; in_map < l2_num_maps ; in_map++ )
			for( int i = 0 ; i < l2_kernel_height ; i++ )
				for ( int y = 0 ; y < l2_kernel_width ; y++ )
				{
					getline( file , line );
					layer2_weights[filter][in_map][i][y] = std::stof(line);
				}
	file.close();

	file.open("./temp/l2_biases.txt");
	for( int k = 0 ; k < l2_num_kernels ; k++ )
	{
		getline( file , line );
		layer2_biases[k] = std::stof(line);
	}
	file.close();
	
	/********** layer 4 **********/
	file.open("./temp/l4_weights.txt");
	for ( int i = 0 ; i < l4_num_inputs ; i++ )
		for ( int kernel = 0 ; kernel < l4_num_kernels ; kernel++ )
		{
			getline( file , line );
			layer4_weights[i][kernel] = std::stof(line);
		}
	file.close();

	file.open("./temp/l4_biases.txt");
	for( int k = 0 ; k < l4_num_kernels ; k++ )
	{
		getline( file , line );
		layer4_biases[k] = std::stof(line);
	}
	file.close();

	/********** layer 5 **********/
	file.open("./temp/l5_weights.txt");
	for ( int i = 0 ; i < l5_num_inputs ; i++ )
		for ( int kernel = 0 ; kernel < l5_num_kernels ; kernel++ )
		{
			getline( file , line );
			layer5_weights[i][kernel] = std::stof(line);
		}
	file.close();

	file.open("./temp/l5_biases.txt");
	for( int k = 0 ; k < l5_num_kernels ; k++ )
	{
		getline( file , line );
		layer5_biases[k] = std::stof(line);
	}
}

#pragma endregion
/******************************************/
/*********** Forward Propagation **********/
/******************************************/
#pragma region
template <
	typename input_type ,
	int input_num_maps , int input_height , int input_width ,
	int output_maps , int output_height , int output_width ,
	int num_filters , int filter_height , int filter_width >
void conv2d (
	input_type input[input_num_maps][input_height][input_width] ,
	float output[output_maps][output_height][output_width] ,
	float weights[num_filters][input_num_maps][filter_height][filter_width] , float bias[ num_filters ] )
{
	/*********************************/
	/***** 2-D Convolution Layer *****/
	/*********************************/
	for( int in_column = 0 ; in_column < input_height ; in_column++ )
	{
		for ( int in_row = 0 ; in_row < input_width ; in_row++ )
		{
			for( int filter = 0 ; filter < num_filters ; filter++ )
			{
				float sum = 0;
				// in 2d conv, windows pass through all feature maps, cumulative
				for ( int in_map = 0 ; in_map < input_num_maps ; in_map++ )
				{
					for( int filter_column = 0 ; filter_column < filter_height ; filter_column++ )
					{
						for ( int filter_row = 0 ; filter_row < filter_width ; filter_row++ )
						{
							// get neighboring pixels' coordinates
							input_type padded_pixel;
							int x_offseted = ( in_row + filter_row - ( filter_width / 2 ) );
							int y_offseted = ( in_column + filter_column - ( filter_height / 2 ) );

							// pad with zeros if coordinates out of bounds
							if ( ( y_offseted < 0 ) || ( y_offseted >= input_height ) || ( x_offseted < 0 ) || ( x_offseted >= input_width ) )
								padded_pixel = 0;
							else
								padded_pixel = input[in_map][y_offseted][x_offseted];

							sum += float(padded_pixel) * weights[filter][in_map][filter_column][filter_row];
						}
					}
					// add bias & relu activation
				} // end filter loops
				sum += bias[filter];
				output[filter][in_column][in_row] = ( sum > 0 ) ? sum : 0;
			}
		} // end input loops
	}
}

template < 
	typename input_type ,
	int input_num_maps , int input_height , int input_width ,
	int output_maps , int output_height , int output_width ,
	int num_filters , int filter_height , int filter_width >
void conv2d_window (
	input_type input[input_num_maps][input_height][input_width] ,
	float output[output_maps][output_height][output_width] , bool activations [output_maps][output_height][output_width] ,
	float weights[num_filters][input_num_maps][filter_height][filter_width] , float bias[ num_filters ] )
{
	float* input_1D = reinterpret_cast<float*>(input);
	/*********************************/
	/********** 2-D Window ***********/
	/*********************************/
	struct window { input_type pix[filter_height][filter_width]; };

	// one quee per input map
	std::queue<window> window_fifo[input_num_maps];

	// line buffer and window
	input_type line_buffer[filter_height-1][input_width];
	window temp_window;

	// required iterations to fill buffers
	uint ramp_up = input_width * ( ( filter_width - 1 ) / 2 ) + ( ( filter_height - 1 ) / 2 );
	uint num_pixels = input_width * input_height;

	for ( uint in_map = 0 ; in_map < input_num_maps ; in_map++ )
	{
		// points where in the line buffers the window is going to shift
		uint col_ptr = 0;
		for ( uint i = 0 ; i < num_pixels + ramp_up ; i++ )
		{
			//get new pixel
			input_type new_pixel = ( i < num_pixels ) ? input_1D[ in_map * num_pixels + i ] : 0; // in_map * i + i to get to the other feature maps of the input

			// shift window and add new pixels
			for( int filter_column = 0 ; filter_column < filter_height ; filter_column++ )
			{
				for ( int filter_row = 0 ; filter_row < filter_width - 1 ; filter_row++ )
					temp_window.pix[filter_column][filter_row] = temp_window.pix[filter_column][filter_row+1];
			
				temp_window.pix[filter_column][filter_width - 1] = 
					( filter_column < filter_height - 1 ) ? line_buffer[filter_column][col_ptr] : new_pixel;
			}

			// shift line buffer and add new pixel
			for( int line = 0 ; line < filter_height - 2 ; line++ )
				line_buffer[line][col_ptr] = line_buffer[line+1][col_ptr];
			line_buffer[filter_height - 2][col_ptr] = new_pixel;

			// move window on the line buffers
			if( col_ptr == input_width - 1 )
				col_ptr = 0;
			else
				col_ptr++;

			// dont write until the window fills up with usefull data
			if ( i >= ramp_up )
				window_fifo[in_map].push( temp_window );
		}
	}
	/*********************************/
	/***** 2-D Convolution Layer *****/
	/*********************************/
	for( int in_column = 0 ; in_column < input_height ; in_column++ )
	{
		for ( int in_row = 0 ; in_row < input_width ; in_row++ )
		{
			// pop windows from queues, one per input map
			window temp_window[input_num_maps];
			for ( int in_map = 0 ; in_map < input_num_maps ; in_map++ )
			{
				std::memcpy( &(temp_window[in_map]) , &(window_fifo[in_map].front()) , sizeof(window) );
				window_fifo[in_map].pop();
			}

			for( int filter = 0 ; filter < num_filters ; filter++ )
			{
				float sum = 0;
				// in 2d conv, windows pass through all feature maps, cumulative
				for ( int in_map = 0 ; in_map < input_num_maps ; in_map++ )
				{
					for( int filter_column = 0 ; filter_column < filter_height ; filter_column++ )
					{
						for ( int filter_row = 0 ; filter_row < filter_width ; filter_row++ )
						{
							// get neighboring pixel's coordinates
							input_type padded_pixel;
							int x_offseted = ( in_row + filter_row - ( filter_width / 2 ) );
							int y_offseted = ( in_column + filter_column - ( filter_height / 2 ) );

							// pad with zeros if coordinates out of bounds
							if ( ( y_offseted < 0 ) || ( y_offseted >= input_height ) || ( x_offseted < 0 ) || ( x_offseted >= input_width ) )
								padded_pixel = 0;
							else
								padded_pixel = temp_window[in_map].pix[filter_column][filter_row];

							sum += float(padded_pixel) * weights[filter][in_map][filter_column][filter_row];
						}
					}
				}
				// add bias & activate with relu
				sum += bias[filter];
				output[filter][in_column][in_row] = ( sum > 0 ) ? sum : 0;
				activations[filter][in_column][in_row] = ( sum > 0 );
			}
		}
	}
}

template <
	uint input_num_maps , uint input_height , uint input_width ,
	uint output_maps , uint output_height , uint output_width , 
	uint filter_height , uint filter_width , uint filter_stride >
void maxpool2d (
	float input[input_num_maps][input_height][input_width] ,
	float output[output_maps][output_height][output_width] ,
	short max_indices[ output_maps * output_height * output_width ][3] )
{
	/*********************************/
	/***** 2-D Max pooling Layer *****/
	/*********************************/
	uint processed_windows_counter = 0;
	// input loops, one pixel at a time
	for( uint in_filter = 0 ; in_filter < input_num_maps ; in_filter++ )
	{
		for( uint in_column = 0 ; in_column < input_height ; in_column += filter_stride )
		{
			for ( uint in_row = 0 ; in_row < input_width ; in_row += filter_stride )
			{
				float max = -std::numeric_limits<float>::infinity();

				// filter loops
				for( uint filter_column = 0 ; filter_column < filter_height ; filter_column++ )
				{
					for ( uint filter_row = 0 ; filter_row < filter_width ; filter_row++ )
					{
						if ( input[in_filter][in_column+filter_column][in_row+filter_row] > max )
						{
							max = input[in_filter][in_column+filter_column][in_row+filter_row];

							max_indices[processed_windows_counter][0] = in_filter;
							max_indices[processed_windows_counter][1] = in_column + filter_column;
							max_indices[processed_windows_counter][2] = in_row + filter_row;
						}
						
					}
				}// end filter loops
				output[in_filter][in_column/2][in_row/2] = max;
				processed_windows_counter++;
			}
		}
	}// end input loops
}

template <
	uint input_num_maps , uint input_height , uint input_width ,
	uint output_maps , uint output_height , uint output_width , 
	uint filter_height , uint filter_width , uint filter_stride > // stride is square, same value for height and width
void maxpool2d_window (
	float input[input_num_maps][input_height][input_width] ,
	float output[output_maps][output_height][output_width] ,
	short max_indices[ output_maps * output_height * output_width ][3] ) // remember positions of maxes for backpropagating error
{
	/*********************************/
	/********** 2-D Window ***********/
	/*********************************/
	struct window { float pix[filter_height][filter_width]; } temp_window;
	std::queue<window> window_fifo;

	float* input_1D = reinterpret_cast<float*>(input);
	for( uint line_counter = 0 ; line_counter < input_num_maps * input_height ; line_counter += 2 )
	{
		// simulates that the input comes as vectors. Equals two pops from vector stream
		std::vector<float> in_vector0( input_1D + line_counter * input_width , input_1D + line_counter * input_width + input_width );
		std::vector<float> in_vector1( input_1D + (line_counter+1) * input_width , input_1D + (line_counter+1) * input_width + input_width );

		// create windows from the vectors
		for( uint i = 0 ; i < input_height / filter_stride ; i++ )
		{
			temp_window.pix[0][0] = in_vector0[ i * filter_stride ];
			temp_window.pix[0][1] = in_vector0[ i * filter_stride + 1 ];
			temp_window.pix[1][0] = in_vector1[ i * filter_stride ];
			temp_window.pix[1][1] = in_vector1[ i * filter_stride + 1 ];

			window_fifo.push( temp_window );
		}
	}
	/*********************************/
	/***** 2-D Max pooling Layer *****/
	/*********************************/
	int processed_windows_counter = 0;

	// input loops, one pixel at a time
	for( uint in_filter = 0 ; in_filter < input_num_maps ; in_filter++ )
	{
		for( uint in_column = 0 ; in_column < input_height ; in_column += filter_stride )
		{
			for ( uint in_row = 0 ; in_row < input_width ; in_row += filter_stride )
			{
				// pop window from queue
				window temp_window;
				memcpy( &temp_window , &window_fifo.front() , sizeof(window) );
				window_fifo.pop();

				float max = -std::numeric_limits<float>::infinity();

				// filter loops
				for( uint filter_column = 0 ; filter_column < filter_height ; filter_column++ )
				{
					for ( uint filter_row = 0 ; filter_row < filter_width ; filter_row++ )
					{
						if ( temp_window.pix[filter_column][filter_row] > max )
						{
							max = temp_window.pix[filter_column][filter_row];

							// pisteuw oti allazei eukola se size input an paei to midenisma tou pinaka prin apo to loop kai mpainoun times se gia ola.
							max_indices[processed_windows_counter][0] = in_filter;
							max_indices[processed_windows_counter][1] = in_column + filter_column;
							max_indices[processed_windows_counter][2] = in_row + filter_row;
						}
					}
				}// end filter loops
				output[in_filter][in_column/2][in_row/2] = max;
				processed_windows_counter++;
			}
		}
	}// end input loops
	// print max_indices and input
	// if( input_height == 14 ) {
	// 	for( int i = 0 ; i < output_maps * output_height * output_width ; i++ )
	// 	{
	// 		std::cout << "[" << max_indices[i][0] << "]" << "[" << max_indices[i][1] << "]" << "[" << max_indices[i][2] << "]\n";
	// 	}
	// 	std::ofstream file;
	// 	file.open( "test.txt" );
	// 	file.precision( 4 );
	// 	for( int in_filter = 0 ; in_filter < input_num_maps ; in_filter++ )
	// 	{
	// 		for( int in_column = 0 ; in_column < input_height ; in_column++ )
	// 		{
	// 			for ( int in_row = 0 ; in_row < input_width ; in_row++ )
	// 			{
	// 				file << std::fixed << input[in_filter][in_column][in_row] << " ";
	// 			}
	// 			file << "\n";
	// 		}
	// 		file << "\n";
	// 	}
	// }
}

template < int num_kernels , int num_inputs >
void dense ( 
	float input[num_inputs] , float output[num_kernels] , bool activations[num_kernels] ,
	float weights[num_inputs][num_kernels] , float bias[num_kernels] )
{
	// float sum[num_kernels];
	// for( int kernel = 0 ; kernel < num_kernels ; kernel++ )
	// {
	// 	sum[kernel] = 0;
	// }
	// for ( int i = 0 ; i < num_inputs ; i++ )
	// {
	// 	for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
	// 	{
	// 		sum[kernel] += input[i] * weights[i][kernel];
	// 	}
	// }
	// for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
	// {
	// 	sum[kernel] += bias[kernel];
	// 	output[kernel] = ( sum[kernel] > 0 ) ? sum[kernel] : 0;
	// }

	for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		float sum = 0.f;
		for ( int i = 0 ; i < num_inputs ; i++ )
		{
			sum += input[i] * weights[i][kernel];
		}
		sum += bias[kernel];
		output[kernel] = ( sum > 0.f ) ? sum : 0.f;
		activations[kernel] = ( sum > 0.f );
	}
}

template < int num_kernels , int num_inputs >
void softmax_clasifier ( 
	float input[num_inputs] , float output[num_kernels] , 
	float weights[num_inputs][num_kernels] , float bias[num_kernels] )
{
	// array multiplication
	double sum[num_kernels];
	for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		for ( int i = 0 ; i < num_inputs ; i++ )
			sum[kernel] += input[i] * weights[i][kernel];
		
		sum[kernel] += bias[kernel];
	}

	// softmax
	double softmax_max = -std::numeric_limits<double>::infinity();
	for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
		if ( sum[kernel] > softmax_max )
			softmax_max = sum[kernel];

	double softmax_sum = 0.f;
	for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
		softmax_sum += std::exp( sum[kernel] - softmax_max );

	double constant = softmax_max + std::log( softmax_sum );
	for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
		output[kernel] = std::exp( sum[kernel] - constant );
}
#pragma endregion
/******************************************/
/************ Back Propagation ************/
/******************************************/
#pragma region
template < int num_kernels >
double sparce_categorical_cross_entropy( float prediction[num_kernels] , int label , float softmax_output_error[num_kernels] )
{
	for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
		softmax_output_error[kernel] = - ( ( label == kernel ) - prediction[kernel] ); // -(yi - ai)

	// one-hot distribution. Loss of non-label classes equals to zero. 
	double sum = - std::log( prediction[label] );

	return sum;
}

// calculate the error of the output in respect of the input
template < int num_kernels , int num_inputs >
void softmax_error_propagation( 
	float weights[num_inputs][num_kernels] , float output_error[num_kernels] , float input_error[num_inputs] )
{
	for ( int input = 0 ; input < num_inputs ; input++ )
	{
		float sum = 0.f;
		for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
		{
			sum += weights[input][kernel] * output_error[kernel];
		}
		input_error[input] = sum; // move here. need to see layer_inputs[num_inputs]
	}
}

template < int num_kernels , int num_inputs >
void dense_error_propagation(
	float weights[num_inputs][num_kernels] , float output_error[num_kernels] , bool activations[num_kernels] , float input_error[num_inputs] )
{
	for ( int input = 0 ; input < num_inputs ; input++ )
	{
		float sum = 0.f;
		for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
		{
			if ( activations[kernel] ) // relu was activated => error propagates backward?
				sum += weights[input][kernel] * output_error[kernel];
		}
		input_error[input] = sum;
	}
}

template < 
	uint input_num_maps , uint input_height , uint input_width ,
	uint output_maps , uint output_height , uint output_width >
void maxpool_error_propagation(
	float output_error[ output_maps * output_height * output_width ] ,
	short max_indices[ output_maps * output_height * output_width ][3] ,
	float input_error[input_num_maps][input_height][input_width] )
{
	for( uint input_map = 0 ; input_map < input_num_maps ; input_map++ )
		for( uint in_column = 0 ; in_column < input_height ; in_column++ )
			for ( uint in_row = 0 ; in_row < input_width ; in_row++ )
				input_error[input_map][in_column][in_row] = 0;

	for ( uint i = 0 ; i < output_maps * output_height * output_width ; i++ )
		input_error[max_indices[i][0]][max_indices[i][1]][max_indices[i][2]] = output_error[i];
}


template < 
	uint input_num_maps , uint input_height , uint input_width ,
	uint output_maps , uint output_height , uint output_width >
void conv2d_error_propagation(
	float output_error[output_maps][output_height][output_width] ,
	bool activations[output_maps][output_height][output_width] ,
	float input_error[input_num_maps][input_height][input_width] )
{

}


#pragma endregion
/******************************************/
/********** Gradient Calculation **********/
/******************************************/
#pragma region
// https://www.youtube.com/watch?v=aeM-fmcdkXU
template < int num_kernels , int num_inputs >
void softmax_variables_regression( 
	float layer_inputs[num_inputs] , float softmax_output_error[num_kernels] ,
	float bias_gradients[num_kernels] ,  float weight_gradients[num_inputs][num_kernels] )
{
	for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
		bias_gradients[kernel] = softmax_output_error[kernel]; // -(yi - ai)

	for ( int i = 0 ; i < num_inputs ; i++ )
		for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
			weight_gradients[i][kernel] = softmax_output_error[kernel] * layer_inputs[i]; // -(yi - ai) * xi
}

template < int num_kernels , int num_inputs >
void dense_variables_regression(
	float layer_inputs[num_inputs] , bool activations[num_kernels] , float output_error[num_kernels] ,
	float bias_gradients[num_kernels] , float weight_gradients[num_inputs][num_kernels] )
{
	float kernel_error[num_kernels];
	for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
		kernel_error[kernel] = activations[kernel] ? output_error[kernel] : 0;

	for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
		bias_gradients[kernel] = kernel_error[kernel];

	for ( int input = 0 ; input < num_inputs ; input++ )
		for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
				weight_gradients[input][kernel] = kernel_error[kernel] * layer_inputs[input];
}

template <
	typename input_type ,
	int input_num_maps , int input_height , int input_width ,
	int output_maps , int output_height , int output_width ,
	int num_filters , int filter_height , int filter_width >
void conv2d_variables_regression(
	input_type input[input_num_maps][input_height][input_width] ,
	float output_error[output_maps][output_height][output_width] , bool activations [output_maps][output_height][output_width] ,
	float weight_gradients[num_filters][input_num_maps][filter_height][filter_width] , float bias_gradients[num_filters] )
{
	/*********************************/
	/***** 2-D Convolution Layer *****/
	/*********************************/
	for( int in_column = 0 ; in_column < input_height ; in_column++ )
	{
		for ( int in_row = 0 ; in_row < input_width ; in_row++ )
		{
			for( int filter = 0 ; filter < num_filters ; filter++ )
			{
				float kernel_error = output_error[filter][in_column][in_row];
				if ( activations[filter][in_column][in_row] )
				{
					for ( int in_map = 0 ; in_map < input_num_maps ; in_map++ )
					{
						for( int filter_column = 0 ; filter_column < filter_height ; filter_column++ )
						{
							for ( int filter_row = 0 ; filter_row < filter_width ; filter_row++ )
							{
								// get neighboring pixels' coordinates
								input_type padded_pixel;
								int x_offseted = ( in_row + filter_row - ( filter_width / 2 ) );
								int y_offseted = ( in_column + filter_column - ( filter_height / 2 ) );

								// pad with zeros if coordinates out of bounds
								if ( ( y_offseted < 0 ) || ( y_offseted >= input_height ) || ( x_offseted < 0 ) || ( x_offseted >= input_width ) )
									padded_pixel = 0;
								else
									padded_pixel = input[in_map][y_offseted][x_offseted];

								weight_gradients[filter][in_map][filter_column][filter_row] += float(padded_pixel) * kernel_error;
							}
						}
					}
				}
			}
		}
	}

	for( int filter = 0 ; filter < num_filters ; filter++ )
		for( int out_column = 0 ; out_column < output_height ; out_column++ )
			for( int out_row = 0 ; out_row < output_width ; out_row++ )
				if ( activations[filter][out_column][out_row] )
					bias_gradients[filter] += output_error[filter][out_column][out_row];
}

template <
	typename input_type ,
	int input_num_maps , int input_height , int input_width ,
	int output_maps , int output_height , int output_width ,
	int num_filters , int filter_height , int filter_width >
void conv2d_window_variables_regression(
	input_type input[input_num_maps][input_height][input_width] ,
	float output_error[output_maps][output_height][output_width] , bool activations [output_maps][output_height][output_width] ,
	float weight_gradients[num_filters][input_num_maps][filter_height][filter_width] , float bias_gradients[num_filters] )
{
	float* input_1D = reinterpret_cast<float*>(input);
	/*********************************/
	/********** 2-D Window ***********/
	/*********************************/
	struct window { input_type pix[filter_height][filter_width]; };

	// one quee per input map
	std::queue<window> window_fifo[input_num_maps];

	// line buffer and window
	input_type line_buffer[filter_height-1][input_width];
	window temp_window;

	// required iterations to fill buffers
	uint ramp_up = input_width * ( ( filter_width - 1 ) / 2 ) + ( ( filter_height - 1 ) / 2 );
	uint num_pixels = input_width * input_height;

	for ( uint in_map = 0 ; in_map < input_num_maps ; in_map++ )
	{
		// points where in the line buffers the window is going to shift
		uint col_ptr = 0;
		for ( uint i = 0 ; i < num_pixels + ramp_up ; i++ )
		{
			//get new pixel
			input_type new_pixel = ( i < num_pixels ) ? input_1D[ in_map * num_pixels + i ] : 0; // in_map * i + i to get to the other feature maps of the input

			// shift window and add new pixels
			for( int filter_column = 0 ; filter_column < filter_height ; filter_column++ )
			{
				for ( int filter_row = 0 ; filter_row < filter_width - 1 ; filter_row++ )
					temp_window.pix[filter_column][filter_row] = temp_window.pix[filter_column][filter_row+1];
			
				temp_window.pix[filter_column][filter_width - 1] = 
					( filter_column < filter_height - 1 ) ? line_buffer[filter_column][col_ptr] : new_pixel;
			}

			// shift line buffer and add new pixel
			for( int line = 0 ; line < filter_height - 2 ; line++ )
				line_buffer[line][col_ptr] = line_buffer[line+1][col_ptr];
			line_buffer[filter_height - 2][col_ptr] = new_pixel;

			// move window on the line buffers
			if( col_ptr == input_width - 1 )
				col_ptr = 0;
			else
				col_ptr++;

			// dont write until the window fills up with usefull data
			if ( i >= ramp_up )
				window_fifo[in_map].push( temp_window );
		}
	}

	/*********************************/
	/*** Error per kernel element ****/
	/*********************************/
	float kernel_element_errors[num_filters][output_height][output_width];
	for( int filter = 0 ; filter < num_filters ; filter++ )
	{
		float bias_sum = 0;
		for( int out_column = 0 ; out_column < output_height ; out_column++ )
		{
			for( int out_row = 0 ; out_row < output_width ; out_row++ )
			{
				kernel_element_errors[filter][out_column][out_row] = ( activations[filter][out_column][out_row] ) ? output_error[filter][out_column][out_row] : 0;
				bias_sum += kernel_element_errors[filter][out_column][out_row];
			}
		}
		bias_gradients[filter] = bias_sum;
	}

	/*********************************/
	/******** 2-D Convolution  *******/
	/*********************************/
	for( int in_column = 0 ; in_column < input_height ; in_column++ )
	{
		for ( int in_row = 0 ; in_row < input_width ; in_row++ )
		{
			// pop windows from queues, one per input map
			window temp_window[input_num_maps];
			for ( int in_map = 0 ; in_map < input_num_maps ; in_map++ )
			{
				std::memcpy( &(temp_window[in_map]) , &(window_fifo[in_map].front()) , sizeof(window) );
				window_fifo[in_map].pop();
			}
			for( int filter = 0 ; filter < num_filters ; filter++ )
			{
				float element_error = kernel_element_errors[filter][in_column][in_row];

				for ( int in_map = 0 ; in_map < input_num_maps ; in_map++ )
				{
					for( int filter_column = 0 ; filter_column < filter_height ; filter_column++ )
					{
						for ( int filter_row = 0 ; filter_row < filter_width ; filter_row++ )
						{
							// get neighboring pixels' coordinates
							input_type padded_pixel;
							int x_offseted = ( in_row + filter_row - ( filter_width / 2 ) );
							int y_offseted = ( in_column + filter_column - ( filter_height / 2 ) );

							// pad with zeros if coordinates out of bounds
							if ( ( y_offseted < 0 ) || ( y_offseted >= input_height ) || ( x_offseted < 0 ) || ( x_offseted >= input_width ) )
								padded_pixel = 0;
							else
								padded_pixel = temp_window[in_map].pix[filter_column][filter_row];

							weight_gradients[filter][in_map][filter_column][filter_row] += float(padded_pixel) * element_error;
						}
					}
				}
			}
		}
	}
}

#pragma endregion
/******************************************/
/************ Variable updates ************/
/******************************************/
template < int num_kernels , int num_inputs >
void gradient_descend( float variables[num_inputs][num_kernels] , float gradients[num_inputs][num_kernels] , float learning_rate )
{
	for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
		for ( int input = 0 ; input < num_inputs ; input++ )
			variables[input][kernel] = variables[input][kernel] - learning_rate * gradients[input][kernel];
}

/******************************************/
/**************** Save Data ***************/
/******************************************/
// Helper function to save 3d arrays as vectors, to files.
template < int num_maps , int height , int width >
void save_feature_map( float feature_maps[num_maps][height][width] , const char* file_name , int precision )
{
	std::ofstream file;
	file.open( file_name );
	file.precision( precision );

	for ( int map = 0 ; map < num_maps ; map++ )
		for ( int column = 0 ; column < height ; column++ )
			for ( int row = 0 ; row < width ; row++ )
				file << std::fixed << feature_maps[map][column][row] << "\n";
				// file << "fmap[" << map << "][" << column << "][" << row << "] = " << std::fixed << feature_maps[map][column][row] << "\n";

	file.close();
}

// for convolutional weights
template < uint num_filters , uint num_maps , uint height, uint width >
void save_4d_array( float input[num_filters][num_maps][height][width] , const char* file_name , int precision )
{
	std::ofstream file;
	file.open( file_name );
	file.precision( precision );

	for( uint filter = 0 ; filter < num_filters ; filter++ )
		for ( uint map = 0 ; map < num_maps ; map++ )
			for( uint column = 0 ; column < height ; column++ )
				for ( uint row = 0 ; row < width ; row++ )
					file << std::fixed << input[filter][map][column][row] << "\n";

	file.close();
}
