#include "cnn2.hpp"

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
	static float layer0_weights[conv2d_32_filter_height][conv2d_32_filter_width][conv2d_32_in_channels][conv2d_32_num_filters];
	static float layer2_weights[conv2d_64_filter_height][conv2d_64_filter_width][conv2d_64_in_channels][conv2d_64_num_filters];
	static float layer4_weights[dense_num_in][dense_num_kernels];
	static float layer5_weights[softmax_num_in][softmax_num_kernels];

	static float layer0_biases[conv2d_32_num_filters];
	static float layer2_biases[conv2d_64_num_filters];
	static float layer4_biases[dense_num_kernels];
	static float layer5_biases[softmax_num_kernels];

	set_variables < 
		conv2d_32_filter_height , conv2d_32_filter_width , conv2d_32_in_channels , conv2d_32_num_filters ,
		conv2d_64_filter_height , conv2d_64_filter_width , conv2d_64_in_channels , conv2d_64_num_filters ,
		  dense_num_in ,   dense_num_kernels ,     
		softmax_num_in , softmax_num_kernels >
		(
		layer0_weights , layer0_biases ,
		layer2_weights , layer2_biases ,
		layer4_weights , layer4_biases ,
		layer5_weights , layer5_biases );
#pragma endregion
	/*********************************/
	/****** Forward Propagation ******/
	/*********************************/
#pragma region
	// layer outputs
	static float conv2d_32_feature_map[conv2d_32_out_height][conv2d_32_out_width][conv2d_32_out_channels];
	static float maxp2d_32_feature_map[maxp2d_32_out_height][maxp2d_32_out_width][maxp2d_32_out_channels];
	static float conv2d_64_feature_map[conv2d_64_out_height][conv2d_64_out_width][conv2d_64_out_channels];
	static float maxp2d_64_feature_map[maxp2d_64_out_height][maxp2d_64_out_width][maxp2d_64_out_channels];
	static float dense_map[dense_num_out];
	static float softmax_output[softmax_num_out];

	static bool conv2d_32_activations[conv2d_32_out_height][conv2d_32_out_width][conv2d_32_out_channels];
	std::queue < window < bool , maxp2d_32_filter_height , maxp2d_32_filter_width > > maxp2d_32_activations_window_stream;
	static bool conv2d_64_activations[conv2d_64_out_height][conv2d_64_out_width][conv2d_64_out_channels];
	std::queue < window < bool , maxp2d_64_filter_height , maxp2d_64_filter_width > > maxp2d_64_activations_window_stream;
	static bool dense_activations[dense_num_out]; // need to remember if relu activated to get its derivative. ReLU > 0 => ReLU' = input, ReLU <= 0 => ReLU' = 0

	/***** layer 0, 28x28x1 -> conv 32 filters of 3x3, padded, stride 1 -> 28x28x32 *****/
	// queue of windows, one for each channels
	std::queue < window < float , conv2d_32_filter_height , conv2d_32_filter_width > > conv2d_32_window_stream;

	// create windows
	window_input_conv2d < float , conv2d_32_in_height , conv2d_32_in_width , conv2d_32_in_channels , conv2d_32_filter_height , conv2d_32_filter_width >
		( input , conv2d_32_window_stream );

	// full convolution
	conv2d < float , 
		conv2d_32_in_height ,     conv2d_32_in_width ,     conv2d_32_in_channels , 
		conv2d_32_out_height ,    conv2d_32_out_width ,    conv2d_32_out_channels ,
		conv2d_32_filter_height , conv2d_32_filter_width , conv2d_32_num_filters >
		( conv2d_32_window_stream , layer0_weights , layer0_biases , conv2d_32_feature_map , conv2d_32_activations );

	/***** layer 1, 28x28x32 -> maxpool 2x2, stride 2,2 -> 14x14x32 *****/
	// std::queue < window < float , maxp2d_32_filter_height , maxp2d_32_filter_width > > maxp2d_32_window_stream;
	// window_input_maxp2d < float , 
	// 	maxp2d_32_in_height ,     maxp2d_32_in_width ,     maxp2d_32_in_channels ,
	// 	maxp2d_32_filter_height , maxp2d_32_filter_width , maxp2d_32_filter_stride >
	// 	( conv2d_32_feature_map , maxp2d_32_window_stream );
	// maxp2d < float , 
	// 	maxp2d_32_in_height ,     maxp2d_32_in_width ,     maxp2d_32_in_channels ,
	// 	maxp2d_32_out_height ,    maxp2d_32_out_width ,    maxp2d_32_out_channels ,
	// 	maxp2d_32_filter_height , maxp2d_32_filter_width , maxp2d_32_filter_stride >
	// 	( maxp2d_32_window_stream , maxp2d_32_feature_map , maxp2d_32_activations_window_stream );
	maxp2d_window_integrated < float , 
		maxp2d_32_in_height ,     maxp2d_32_in_width ,     maxp2d_32_in_channels ,
		maxp2d_32_out_height ,    maxp2d_32_out_width ,    maxp2d_32_out_channels ,
		maxp2d_32_filter_height , maxp2d_32_filter_width , maxp2d_32_filter_stride >
		( conv2d_32_feature_map , maxp2d_32_feature_map , maxp2d_32_activations_window_stream );

	/***** layer 2, 28x28x32 -> conv 64 filters of 3x3, padded, stride 1 -> 28x28x64 *****/
	std::queue < window < float , conv2d_64_filter_height , conv2d_64_filter_width > > conv2d_64_window_stream;
	window_input_conv2d < float , conv2d_64_in_height , conv2d_64_in_width , conv2d_64_in_channels , conv2d_64_filter_height , conv2d_64_filter_width >
		( maxp2d_32_feature_map , conv2d_64_window_stream );
	
	conv2d < float , 
		conv2d_64_in_height , conv2d_64_in_width , conv2d_64_in_channels , 
		conv2d_64_out_height , conv2d_64_out_width , conv2d_64_out_channels ,
		conv2d_64_filter_height , conv2d_64_filter_width , conv2d_64_num_filters >
		( conv2d_64_window_stream , layer2_weights , layer2_biases , conv2d_64_feature_map , conv2d_64_activations );

	/***** layer 3, 14x14x64 -> maxpool 2x2, stride 2,2 -> 7x7x64 *****/
	// std::queue < window < float , maxp2d_64_filter_height , maxp2d_64_filter_width > > maxp2d_64_window_stream;
	// window_input_maxp2d < float , 
	// 	maxp2d_64_in_height ,     maxp2d_64_in_width ,     maxp2d_64_in_channels , 
	// 	maxp2d_64_filter_height , maxp2d_64_filter_width , maxp2d_64_filter_stride >
	// 	( conv2d_64_feature_map , maxp2d_64_window_stream );
	// maxp2d < float , 
	// 	maxp2d_64_in_height ,     maxp2d_64_in_width ,     maxp2d_64_in_channels ,
	// 	maxp2d_64_out_height ,    maxp2d_64_out_width ,    maxp2d_64_out_channels ,
	// 	maxp2d_64_filter_height , maxp2d_64_filter_width , maxp2d_64_filter_stride >
	// 	( maxp2d_64_window_stream , maxp2d_64_feature_map , maxp2d_64_activations_window_stream );
	maxp2d_window_integrated < float , 
		maxp2d_64_in_height ,     maxp2d_64_in_width ,     maxp2d_64_in_channels ,
		maxp2d_64_out_height ,    maxp2d_64_out_width ,    maxp2d_64_out_channels ,
		maxp2d_64_filter_height , maxp2d_64_filter_width , maxp2d_64_filter_stride >
		( conv2d_64_feature_map , maxp2d_64_feature_map , maxp2d_64_activations_window_stream );

	/***** layer 4, 7x7x64 = 3136 -> fully connected 128 -> 128 *****/
	dense < dense_num_kernels , dense_num_in >
		( *reinterpret_cast<float (*)[dense_num_kernels]>(&maxp2d_64_feature_map) , dense_map , dense_activations , layer4_weights , layer4_biases );

	/***** layer 5, 128 -> fully connected softmax 10 -> 10 normalized *****/
	softmax_clasifier < softmax_num_kernels , softmax_num_in > ( dense_map , softmax_output , layer5_weights , layer5_biases );
#pragma endregion
	/*********************************/
	/******* Back Propagation ********/
	/*********************************/
#pragma region
	static float softmax_out_error[softmax_num_out];
	static float softmax_in_error[softmax_num_in];
	static float dense_in_error[dense_num_in];
	static float maxp2d_64_in_error[maxp2d_64_in_height][maxp2d_64_in_width][maxp2d_64_in_channels];

	double entropy = sparce_categorical_cross_entropy < softmax_num_kernels > ( softmax_output , 4 , softmax_out_error );

	softmax_error_propagation < softmax_num_kernels , softmax_num_in > ( softmax_out_error , layer5_weights , softmax_in_error );

	dense_error_propagation < dense_num_kernels , dense_num_in > ( softmax_in_error , layer4_weights , dense_activations , dense_in_error );

	maxpool_error_propagation <
		maxp2d_64_in_height ,     maxp2d_64_in_width ,     maxp2d_64_in_channels ,
		maxp2d_64_out_height ,    maxp2d_64_out_width ,    maxp2d_64_out_channels , 
		maxp2d_64_filter_height , maxp2d_64_filter_width , maxp2d_64_filter_stride >
		( dense_in_error , maxp2d_64_activations_window_stream , maxp2d_64_in_error );

#pragma endregion
	/*********************************/
	/********* Show outputs **********/
	/*********************************/
#pragma region // activations
	save_array < conv2d_32_out_height * conv2d_32_out_width * conv2d_32_out_channels >
		( reinterpret_cast<float*>(conv2d_32_feature_map) , "activations/l0_conv32_cpp.txt" , 4 );

	save_array < maxp2d_32_out_height * maxp2d_32_out_width * maxp2d_32_out_channels >
		( reinterpret_cast<float*>(maxp2d_32_feature_map) , "activations/l1_maxp32_cpp.txt" , 4 );

	save_array < conv2d_64_out_height * conv2d_64_out_width * conv2d_64_out_channels >
		( reinterpret_cast<float*>(conv2d_64_feature_map) , "activations/l2_conv64_cpp.txt" , 4 );

	save_array < maxp2d_64_out_height * maxp2d_64_out_width * maxp2d_64_out_channels >
		( reinterpret_cast<float*>(maxp2d_64_feature_map) , "activations/l3_maxp64_cpp.txt" , 4 );

	save_array < dense_num_out > ( dense_map , "activations/l4_dense_cpp.txt" , 4 );

	save_array < softmax_num_out > ( softmax_output , "activations/l5_softmax_cpp.txt" , 4 );
#pragma endregion
#pragma region // output gradients
	std::cout << "C++ entropy: " << std::setprecision(8) << entropy << "\n";

	save_array < softmax_num_in > ( softmax_in_error , "output_gradients/l4_dense_cpp.txt" , 4 );

	save_array < dense_num_in > ( dense_in_error , "output_gradients/l3_maxp64_cpp.txt" , 4 );

	save_array < maxp2d_64_in_height * maxp2d_64_in_width * maxp2d_64_in_channels > (
		reinterpret_cast<float*>(maxp2d_64_in_error) , "output_gradients/l2_conv64_cpp.txt" , 4 );

#pragma endregion
}

/***********************************************************************************/
/************************************ Load Data ************************************/
/***********************************************************************************/
#pragma region
template < 
	int l0_kernel_height , int l0_kernel_width , int l0_num_channels , int l0_num_kernels ,
	int l2_kernel_height , int l2_kernel_width , int l2_num_channels , int l2_num_kernels ,
	int l4_num_inputs , int l4_num_kernels ,
	int l5_num_inputs , int l5_num_kernels >
void set_variables (
	float layer0_weights[l0_kernel_height][l0_kernel_width][l0_num_channels][l0_num_kernels] , float layer0_biases[l0_num_kernels] ,
	float layer2_weights[l2_kernel_height][l2_kernel_width][l2_num_channels][l2_num_kernels] , float layer2_biases[l2_num_kernels] ,
	float layer4_weights[l4_num_inputs][l4_num_kernels] , float layer4_biases[l4_num_kernels] ,
	float layer5_weights[l5_num_inputs][l5_num_kernels] , float layer5_biases[l5_num_kernels] )
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
					layer0_weights[y][x][channel][kernel] = std::stof(line);
				}
	file.close();

	file.open("./temp/l0_biases.txt");
	for( int kernel = 0 ; kernel < l0_num_kernels ; kernel++ )
	{
		getline( file , line );
		layer0_biases[kernel] = std::stof(line);
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
					layer2_weights[y][x][channel][kernel] = std::stof(line);
				}
	file.close();

	file.open("./temp/l2_biases.txt");
	for( int kernel = 0 ; kernel < l2_num_kernels ; kernel++ )
	{
		getline( file , line );
		layer2_biases[kernel] = std::stof(line);
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
void window_input_conv2d (
	in_type input[in_height][in_width][in_channels] , 
	std::queue< window < in_type , filter_height , filter_width > >& conv2d_window_stream )
{
	in_type* input_1D = reinterpret_cast<in_type*>(input);

	// line and window buffer
	in_type line_buffer[filter_height-1][in_width][in_channels];
	window < in_type , filter_height , filter_width > temp_window[in_channels]; // one temp window per channel

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
				new_pixel[channel] = 0;

		// shift window and add new pixels
		for( uint filter_y = 0 ; filter_y < filter_height ; filter_y++ )
		{
			// all columns except last
			for ( uint filter_x = 0 ; filter_x < filter_width - 1 ; filter_x++ )
				for( uint channel = 0 ; channel < in_channels ; channel++ )
					temp_window[channel].elements[filter_y][filter_x] = temp_window[channel].elements[filter_y][filter_x+1];
		
			// last column
			for( uint channel = 0 ; channel < in_channels ; channel++ )
				if ( filter_y < filter_height - 1 )
					temp_window[channel].elements[filter_y][filter_width-1] = line_buffer[filter_y][col_ptr][channel];
				else
					temp_window[channel].elements[filter_y][filter_width-1] = new_pixel[channel];
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
				conv2d_window_stream.push( temp_window[channel] );
	}
}

template < 
	typename in_type ,
	uint in_height     , uint in_width     , uint in_channels ,
	uint out_height    , uint out_width    , uint out_channels ,
	uint filter_height , uint filter_width , uint num_filters >
void conv2d (
	std::queue< window < in_type , filter_height , filter_width > >& conv2d_window_stream, // inputs
	float weights[filter_height][filter_width][in_channels][num_filters] , float bias[num_filters] , // variables
	float output[out_height][out_width][out_channels] , bool activations [out_height][out_width][out_channels] ) // outputs
{
	// input / output dimensions loops, in_x/y == out_x/y
	for( uint in_y = 0 ; in_y < in_height ; in_y++ )
	{
		for ( uint in_x = 0 ; in_x < in_width ; in_x++ )
		{
			// pop windows from queues, one per input channel
			window < in_type , filter_height , filter_width > temp_window[in_channels];
			for ( uint channel = 0 ; channel < in_channels ; channel++ )
			{
				std::memcpy( &(temp_window[channel]) , &(conv2d_window_stream.front()) , sizeof( temp_window[channel] ) );
				conv2d_window_stream.pop();
			}
			// one sum per filter. The outputs of a filter are indepentent of the outputs of the the other filters, 
			// can be parallelized indefinetly.
			float sum[num_filters];
			for( uint filter = 0 ; filter < num_filters ; filter++ )
				sum[filter] = 0;

			// filter dimensions loops, filter_y/x == window_y/x
			for( uint filter_y = 0 ; filter_y < filter_height ; filter_y++ )
			{
				for ( uint filter_x = 0 ; filter_x < filter_width ; filter_x++ )
				{
					// get neighboring pixel's coordinates
					int y_offseted = ( int(in_y) + int(filter_y) - ( int(filter_height) / 2 ) );
					int x_offseted = ( int(in_x) + int(filter_x) - ( int(filter_width) / 2 ) );

					// in 2d conv, windows pass through all feature maps, cumulative
					for ( uint channel = 0 ; channel < in_channels ; channel++ )
					{
						// pad with zeros if coordinates of neighboring pixelout of bounds
						in_type padded_pixel;
						if ( ( y_offseted < 0 ) || ( y_offseted >= int(in_height) ) || ( x_offseted < 0 ) || ( x_offseted >= int(in_width) ) )
							padded_pixel = 0;
						else
							padded_pixel = temp_window[channel].elements[filter_y][filter_x];

						// num_filters == out_channels
						for( uint filter = 0 ; filter < num_filters ; filter++ )
						{
							sum[filter] += float(padded_pixel) * weights[filter_y][filter_x][channel][filter];
						}
					}
				}
			}
			// add bias & activate with relu
			for( uint filter = 0 ; filter < num_filters ; filter++ )
			{
				sum[filter] += bias[filter];
				output[in_y][in_x][filter] = ( sum[filter] > 0 ) ? sum[filter] : 0;
				activations[in_y][in_x][filter] = ( sum[filter] > 0 );
			}
		}
	}
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
	window < in_type , filter_height , filter_width > temp_window[in_channels];

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
					if( col_insert_ptr == filter_height - 1 && row_insert_ptr % filter_width == 1 ) // this if can go before the filter loops if needed
					{
						temp_window[channel].elements[filter_y][filter_x] =
							line_buffer[ col_insert_ptr - 1 + filter_y ][ row_insert_ptr - 1 + filter_x ][channel]; // TODO: maybe find max here, the other function uselless
						// final pixel in, write in stream
						if( filter_y == filter_height - 1 && filter_x == filter_width - 1 )
							maxp2d_window_stream.push( temp_window[channel] );
					}

		// keep track of where we are in the line buffers
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
			window < in_type , filter_height , filter_width > temp_window[in_channels];
			for ( uint channel = 0 ; channel < in_channels ; channel++ )
			{
				std::memcpy( &(temp_window[channel]) , &(maxp2d_window_stream.front()) , sizeof( temp_window[channel] ) );
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
						if ( temp_window[channel].elements[filter_y][filter_x] > max[channel] )
						{
							max[channel] = temp_window[channel].elements[filter_y][filter_x];

							// remember the position of last max
							max_pos[channel][0] = filter_y;
							max_pos[channel][1] = filter_x;
						}
						// all elements in the window have been processed
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

	uint num_pixels = in_width * in_height;
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
template < int num_kernels , int num_inputs >
void dense ( 
	float input[num_inputs] , float output[num_kernels] , bool activations[num_kernels] ,
	float weights[num_inputs][num_kernels] , float biases[num_kernels] )
{
	float sum[num_kernels];
	// initialize the sum of each kernel with its bias
	for( int kernel = 0 ; kernel < num_kernels ; kernel++ )
		sum[kernel] = biases[kernel];

	// pull one input and use it with all the kernels
	for ( int i = 0 ; i < num_inputs ; i++ )
		for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
			sum[kernel] += input[i] * weights[i][kernel];

	// relu activation for all kernels
	for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		bool activation = ( sum[kernel] > 0 );
		output[kernel] = activation ? sum[kernel] : 0;
		activations[kernel] = activation;
	}
}
	/*********************************/
	/********* Softmax Layer *********/
	/*********************************/
template < int num_kernels , int num_inputs >
void softmax_clasifier ( 
	float input[num_inputs] , float output[num_kernels] , 
	float weights[num_inputs][num_kernels] , float biases[num_kernels] )
{
	// array multiplication
	double sum[num_kernels];
	for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
	{
		for ( int i = 0 ; i < num_inputs ; i++ )
			sum[kernel] += input[i] * weights[i][kernel];
		
		sum[kernel] += biases[kernel];
	}
	// softmax, normalized inputs by the largest value
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
/***********************************************************************************/
/******************************** Back Propagation *********************************/
/***********************************************************************************/
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

template < int num_kernels , int num_inputs >
void softmax_error_propagation( float output_error[num_kernels] , float weights[num_inputs][num_kernels] , float input_error[num_inputs] )
{
	for ( int input = 0 ; input < num_inputs ; input++ )
	{
		float sum = 0.f;
		for ( int kernel = 0 ; kernel < num_kernels ; kernel++ )
		{
			sum += weights[input][kernel] * output_error[kernel];
		}
		input_error[input] = sum;
	}
}

template < int num_kernels , int num_inputs >
void dense_error_propagation(
	float output_error[num_kernels] ,float weights[num_inputs][num_kernels] ,  bool activations[num_kernels] , float input_error[num_inputs] )
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
	uint     in_height , uint     in_width , uint   in_channels ,
	uint    out_height , uint    out_width , uint  out_channels ,
	uint filter_height , uint filter_width , uint filter_stride >
void maxpool_error_propagation(
	float output_error[ out_height * out_width * out_channels ] ,
	std::queue< window < bool , filter_height , filter_width > >& maxp2d_activations_window_stream ,
	float input_error[in_height][in_width][in_channels] ) // outputs
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

			// pop window of activations
			window < bool , filter_height , filter_width > activations_temp_window[in_channels];
			for (uint channel = 0 ; channel < out_channels ; channel++ )
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
							line_buffers[filter_y][in_x+filter_x][channel] = 0;
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
