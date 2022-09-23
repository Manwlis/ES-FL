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
	/******** Create variables *******/
	/*********************************/
	static float layer0_weights[conv2d_32_num_filters][image_maps][conv2d_32_filter_height][conv2d_32_filter_width];
	static float layer2_weights[conv2d_64_num_filters][conv2d_64_input_maps][conv2d_64_filter_height][conv2d_64_filter_width];
	static float layer4_weights[dense_num_inputs][dense_num_kernels];
	static float layer5_weights[softmax_num_kernels][softmax_num_inputs];

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

	/*********************************/
	/***** Pass through layers *******/
	/*********************************/
	// layer outputs
	static float conv2d_32_feature_map[conv2d_32_output_maps][conv2d_32_output_height][conv2d_32_output_width];
	static float maxpool2d_32_feature_map[maxpool2d_32_output_maps][maxpool2d_32_output_height][maxpool2d_32_output_width];
	static float conv2d_64_feature_map[conv2d_64_output_maps][conv2d_64_output_height][conv2d_64_output_width];
	static float maxpool2d_64_feature_map[maxpool2d_64_output_maps][maxpool2d_64_output_height][maxpool2d_64_output_width];
	static float dense_map[dense_num_outputs];
	static float softmax_output[softmax_num_outputs];

	// Layer 0
	conv2d <
	// conv2d_window < 
		float , 
		image_maps , image_height , image_width , 
		conv2d_32_output_maps , conv2d_32_output_height , conv2d_32_output_width , 
		conv2d_32_num_filters , conv2d_32_filter_height , conv2d_32_filter_width >
		( input , conv2d_32_feature_map , layer0_weights , layer0_biases );
	
	// Layer 1
	maxpool2d <
	// maxpool2d_window <
		maxpool2d_32_input_maps , maxpool2d_32_input_height , maxpool2d_32_input_width ,
		maxpool2d_32_output_maps , maxpool2d_32_output_height , maxpool2d_32_output_width , 
		maxpool2d_32_filter_height , maxpool2d_32_filter_width , maxpool2d_32_filter_stride >
		( conv2d_32_feature_map , maxpool2d_32_feature_map );

	// Layer 2
	conv2d <
	// conv2d_window <
		float , 
		conv2d_64_input_maps , conv2d_64_input_height , conv2d_64_input_width , 
		conv2d_64_output_maps , conv2d_64_output_height , conv2d_64_output_width , 
		conv2d_64_num_filters , conv2d_64_filter_height , conv2d_64_filter_width >
		( maxpool2d_32_feature_map , conv2d_64_feature_map , layer2_weights , layer2_biases );

	// Layer 3
	maxpool2d <
	// maxpool2d_window <
		maxpool2d_64_input_maps , maxpool2d_64_input_height , maxpool2d_64_input_width ,
		maxpool2d_64_output_maps , maxpool2d_64_output_height , maxpool2d_64_output_width , 
		maxpool2d_64_filter_height , maxpool2d_64_filter_width , maxpool2d_64_filter_stride >
		( conv2d_64_feature_map , maxpool2d_64_feature_map );

	// Layer 4
	dense < dense_num_kernels , dense_num_inputs >
		( reinterpret_cast<float*>(maxpool2d_64_feature_map) , dense_map , layer4_weights , layer4_biases );

	// Layer 5
	softmax_clasifier < softmax_num_kernels , softmax_num_inputs >
		( dense_map , softmax_output , layer5_weights , layer5_biases );

	double entropy = sparce_categorical_cross_entropy < softmax_num_kernels >
		( softmax_output , 4 );
		
	/*********************************/
	/********* Show outputs **********/
	/*********************************/
	save_feature_map < conv2d_32_output_maps , conv2d_32_output_height , conv2d_32_output_width >
		( conv2d_32_feature_map , "output/l0_conv32_cpp.txt" , 4 );

	save_feature_map < maxpool2d_32_output_maps , maxpool2d_32_output_height , maxpool2d_32_output_width >
		( maxpool2d_32_feature_map , "output/l1_maxp32_cpp.txt" , 4 );

	save_feature_map < conv2d_64_output_maps , conv2d_64_output_height , conv2d_64_output_width >
		( conv2d_64_feature_map , "output/l2_conv64_cpp.txt" , 4 );

	save_feature_map < maxpool2d_64_output_maps , maxpool2d_64_output_height , maxpool2d_64_output_width >
		( maxpool2d_64_feature_map , "output/l3_maxp64_cpp.txt" , 4 );

	save_feature_map < 1 , 1 , dense_num_kernels >
		( *reinterpret_cast<float (*)[1][1][128]>(&dense_map) , "output/l4_dense_cpp.txt" , 4 );

	save_feature_map < 1 , 1 , softmax_num_kernels >
		( *reinterpret_cast<float (*)[1][1][10]>(&softmax_output) , "output/l5_softmax_cpp.txt" , 4 );

	std::cout << "C++ entropy: " << std::setprecision(6) << entropy << "\n";
}

/******************************************/
/**************** Prepatory ***************/
/******************************************/
template < 
	int l0_num_kernels , int l0_num_maps , int l0_kernel_height , int l0_kernel_width ,
	int l2_num_kernels , int l2_num_maps , int l2_kernel_height , int l2_kernel_width ,
	int l4_num_kernels , int l4_num_inputs ,
	int l5_num_kernels , int l5_num_inputs >
void set_variables (
	float layer0_weights[l0_num_kernels][l0_num_maps][l0_kernel_height][l0_kernel_width] , float layer0_biases[l0_num_kernels] ,
	float layer2_weights[l2_num_kernels][l2_num_maps][l2_kernel_height][l2_kernel_width] , float layer2_biases[l2_num_kernels] ,
	float layer4_weights[l4_num_inputs][l4_num_kernels] , float layer4_biases[l4_num_kernels] ,
	float layer5_weights[l5_num_kernels][l5_num_inputs] , float layer5_biases[l5_num_kernels] )
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
	for ( int kernel = 0 ; kernel < l5_num_kernels ; kernel++ )
		for ( int i = 0 ; i < l5_num_inputs ; i++ )
		{
			getline( file , line );
			layer5_weights[kernel][i] = std::stof(line);
		}
	file.close();

	file.open("./temp/l5_biases.txt");
	for( int k = 0 ; k < l5_num_kernels ; k++ )
	{
		getline( file , line );
		layer5_biases[k] = std::stof(line);
	}
}

/******************************************/
/***************** Layers *****************/
/******************************************/
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
	float output[output_maps][output_height][output_width] ,
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
			}
		}
	}
}

template <
	int input_num_maps , int input_height , int input_width ,
	int output_maps , int output_height , int output_width , 
	int filter_height , int filter_width , int filter_stride >
void maxpool2d (
	float input[input_num_maps][input_height][input_width] ,
	float output[output_maps][output_height][output_width] )
{
	/*********************************/
	/***** 2-D Max pooling Layer *****/
	/*********************************/
	// input loops, one pixel at a time
	for( int in_filter = 0 ; in_filter < input_num_maps ; in_filter++ )
	{
		for( int in_column = 0 ; in_column < input_height ; in_column += filter_stride )
		{
			for ( int in_row = 0 ; in_row < input_width ; in_row += filter_stride )
			{
				float max = -std::numeric_limits<float>::infinity();

				// filter loops
				for( int filter_column = 0 ; filter_column < filter_height ; filter_column++ )
				{
					for ( int filter_row = 0 ; filter_row < filter_width ; filter_row++ )
					{
						if ( input[in_filter][in_column+filter_column][in_row+filter_row] > max )
							max = input[in_filter][in_column+filter_column][in_row+filter_row];
						
					}
				}// end filter loops
				output[in_filter][in_column/2][in_row/2] = max;
			}
		}
	}// end input loops
}

template <
	int input_num_maps , int input_height , int input_width ,
	int output_maps , int output_height , int output_width , 
	int filter_height , int filter_width , int filter_stride >
void maxpool2d_window (
	float input[input_num_maps][input_height][input_width] ,
	float output[output_maps][output_height][output_width] )
{
	/*********************************/
	/********** 2-D Window ***********/
	/*********************************/
	struct window { float pix[filter_height][filter_width]; } temp_window;
	std::queue<window> window_fifo;

	// pointer on the input array
	uint pos_filter = 0;
	uint pos_height = 0;
	uint pos_width = 0;
	
	uint num_windows = input_num_maps * input_height * input_width / ( filter_height * filter_width );
	for ( uint i = 0 ; i < num_windows; i++ )
	{
		// fill window
		temp_window.pix[0][0] = input[pos_filter][pos_height][pos_width];
		temp_window.pix[0][1] = input[pos_filter][pos_height][pos_width+1];
		temp_window.pix[1][0] = input[pos_filter][pos_height+1][pos_width];
		temp_window.pix[1][1] = input[pos_filter][pos_height+1][pos_width+1];

		// move to next window, stride = ( 1 , 2 , 2 )
		pos_width += 2;
		if( pos_width == input_width )
		{
			pos_width = 0;
			pos_height += 2;
		}
		if( pos_height == input_height )
		{
			pos_height = 0;
			pos_filter++;
		}

		// put it in the stream
		window_fifo.push( temp_window );
	}
	/*********************************/
	/***** 2-D Max pooling Layer *****/
	/*********************************/
	// input loops, one pixel at a time
	for( int in_filter = 0 ; in_filter < input_num_maps ; in_filter++ )
	{
		for( int in_column = 0 ; in_column < input_height ; in_column += filter_stride )
		{
			for ( int in_row = 0 ; in_row < input_width ; in_row += filter_stride )
			{
				// pop window from queue
				window temp_window;
				memcpy( &temp_window , &window_fifo.front() , sizeof(window) );
				window_fifo.pop();

				float max = -std::numeric_limits<float>::infinity();

				// filter loops
				for( int filter_column = 0 ; filter_column < filter_height ; filter_column++ )
				{
					for ( int filter_row = 0 ; filter_row < filter_width ; filter_row++ )
					{
						if ( temp_window.pix[filter_column][filter_row] > max )
							max = temp_window.pix[filter_column][filter_row];
					}
				}// end filter loops
				output[in_filter][in_column/2][in_row/2] = max;
			}
		}
	}// end input loops
}

template < int num_kernels , int num_inputs >
void dense ( 
	float input[num_inputs] , float output[num_kernels] , 
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
	}
}

template < int num_kernels , int num_inputs >
void softmax_clasifier ( 
	float input[num_inputs] , float output[num_kernels] , 
	float weights[num_kernels][num_inputs] , float bias[num_kernels] )
{
	// array multiplication
	double sum[num_kernels];
	for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		for ( int i = 0 ; i < num_inputs ; i++ )
			sum[kernel] += input[i] * weights[kernel][i];
		
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

template < int num_inputs >
double sparce_categorical_cross_entropy( float prediction[num_inputs] , int label )
{
	// double sum = 0.d;
	// for ( int i = 0 ; i < num_inputs ; i++ )
	// {
	// 	sum += (label == i) * std::log( prediction[i] ) + (1 - (label == i) ) * std::log( 1.0d - prediction[i] );
	// }
	// sum = - sum / num_inputs;

	double sum = - std::log( prediction[label] );

	return sum;
}


/******************************************/
/***************** Closing ****************/
/******************************************/
template < int num_maps , int height , int width >
void save_feature_map( float feature_maps[num_maps][height][width] ,  const char* file_name , int precision )
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
