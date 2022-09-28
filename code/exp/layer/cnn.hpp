#include <iostream>
#include <iomanip> 
#include <fstream>
#include <queue>
#include <cstring>
#include <limits>
#include <cmath>

// 28x28 image
#define image_maps    1
#define image_height 28
#define image_width  28

// passes through 32 3x3 filters
#define conv2d_32_filter_height 3
#define conv2d_32_filter_width  3
#define conv2d_32_num_filters  32

#define conv2d_32_output_maps	conv2d_32_num_filters	// 32
#define conv2d_32_output_height	image_height			// 28
#define conv2d_32_output_width	image_width				// 28

// max pooling 1x2x2 with (1,2,2) stride
#define maxpool2d_32_filter_height	2
#define maxpool2d_32_filter_width	2
#define maxpool2d_32_filter_stride	2

#define maxpool2d_32_input_maps		conv2d_32_output_maps	// 32
#define maxpool2d_32_input_height	conv2d_32_output_height	// 28
#define maxpool2d_32_input_width	conv2d_32_output_width	// 28

#define maxpool2d_32_output_maps	maxpool2d_32_input_maps	// 32
#define maxpool2d_32_output_height	maxpool2d_32_input_height / maxpool2d_32_filter_stride	// 14
#define maxpool2d_32_output_width	maxpool2d_32_input_width  / maxpool2d_32_filter_stride	// 14

// 64 3x3 filters
#define conv2d_64_filter_height 3
#define conv2d_64_filter_width  3
#define conv2d_64_num_filters  64

#define conv2d_64_input_maps	maxpool2d_32_output_maps	// 32
#define conv2d_64_input_height	maxpool2d_32_output_height	// 14
#define conv2d_64_input_width	maxpool2d_32_output_width	// 14

#define conv2d_64_output_maps	conv2d_64_num_filters		// 64
#define conv2d_64_output_height	maxpool2d_32_output_height	// 14
#define conv2d_64_output_width	maxpool2d_32_output_width	// 14

// max pooling 1x2x2 with (1,2,2) stride
#define maxpool2d_64_filter_height 2
#define maxpool2d_64_filter_width  2
#define maxpool2d_64_filter_stride 2

#define maxpool2d_64_input_maps		conv2d_64_output_maps	// 64
#define maxpool2d_64_input_height	conv2d_64_output_height	// 14
#define maxpool2d_64_input_width	conv2d_64_output_width	// 14

#define maxpool2d_64_output_maps	maxpool2d_64_input_maps	// 64
#define maxpool2d_64_output_height	maxpool2d_64_input_height / maxpool2d_64_filter_stride	// 7
#define maxpool2d_64_output_width	maxpool2d_64_input_width  / maxpool2d_64_filter_stride	// 7

// fully connected layer
#define dense_num_kernels	128
#define dense_num_inputs	maxpool2d_64_output_maps * maxpool2d_64_output_height * maxpool2d_64_output_width	// 3136
#define dense_num_outputs	dense_num_kernels	// 128

// softmax classification layer
#define softmax_num_kernels 10
#define softmax_num_inputs	dense_num_outputs	// 128
#define softmax_num_outputs	softmax_num_kernels	//  10

#define learning_rate_const 0.01f

/******************************************/
/**************** Load Data ***************/
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
	float layer5_weights[l5_num_inputs][l5_num_kernels] , float layer5_biases[l5_num_kernels] );

/******************************************/
/*********** Forward Propagation **********/
/******************************************/
template < 
	typename input_type ,
	int input_num_maps , int input_height , int input_width ,
	int output_maps , int output_height , int output_width ,
	int num_filters , int filter_height , int filter_width
	>
void conv2d (
	input_type input[input_num_maps][input_height][input_width] ,
	float output[output_maps][output_height][output_width] ,
	float weights[num_filters][input_num_maps][filter_height][filter_width] , float bias[ num_filters ] );

template < 
	typename input_type ,
	int input_num_maps , int input_height , int input_width ,
	int output_maps , int output_height , int output_width ,
	int num_filters , int filter_height , int filter_width
	>
void conv2d_window (
	input_type input[input_num_maps][input_height][input_width] ,
	float output[output_maps][output_height][output_width] ,
	float weights[num_filters][input_num_maps][filter_height][filter_width] , float bias[ num_filters ] );

template <
	uint input_num_maps , uint input_height , uint input_width ,
	uint output_maps , uint output_height , uint output_width , 
	uint filter_height , uint filter_width , uint filter_stride >
void maxpool2d(
	float input[input_num_maps][input_height][input_width] ,
	float output[output_maps][output_height][output_width] ,
	short max_indices[ output_maps * output_height * output_width ][3] );

template <
	uint input_num_maps , uint input_height , uint input_width ,
	uint output_maps , uint output_height , uint output_width , 
	uint filter_height , uint filter_width , uint filter_stride >
void maxpool2d_window (
	float input[input_num_maps][input_height][input_width] ,
	float output[output_maps][output_height][output_width] , 
	short max_indices[ output_maps * output_height * output_width ][3] );

template < int num_kernels , int num_inputs >
void dense ( 
	float input[num_inputs] , float output[num_kernels] , bool activations[num_kernels] ,
	float weights[num_inputs][num_kernels] , float bias[num_kernels] );

template < int num_kernels , int num_inputs >
void softmax_clasifier ( 
	float input[num_inputs] , float output[num_kernels] , 
	float weights[num_inputs][num_kernels] , float bias[num_kernels] );

/******************************************/
/************ Back Propagation ************/
/******************************************/
template < int num_kernels >
double sparce_categorical_cross_entropy(
	float prediction[num_kernels] , int label , 
	float softmax_error_vector[num_kernels] );

template < int num_kernels , int num_inputs >
void softmax_error_propagation( 
	float weights[num_inputs][num_kernels] , float output_error[num_kernels] , 
	float input_error[num_inputs] );

template < int num_kernels , int num_inputs >
void dense_error_propagation(
	float weights[num_inputs][num_kernels] , float output_error[num_kernels] , bool activations[num_kernels] , float input_error[num_inputs] );

template < 
	uint input_num_maps , uint input_height , uint input_width ,
	uint output_maps , uint output_height , uint output_width >
void maxpool_error_propagation(
	float output_error[ output_maps * output_height * output_width ] ,
	short max_indices[ output_maps * output_height * output_width ][3] ,
	float input_error[input_num_maps][input_height][input_width]);
	
/******************************************/
/********** Gradient Calculation **********/
/******************************************/
template < int num_kernels , int num_inputs >
void softmax_variables_regression( 
	float layer_inputs[num_inputs] , float softmax_error_vector[num_kernels] ,
	float bias_gradients[num_kernels] ,  float weight_gradients[num_inputs][num_kernels] );

template < int num_kernels , int num_inputs >
void dense_variables_regression(
	float layer_inputs[num_inputs] , bool activations[num_kernels] , float output_error[num_kernels] ,
	float bias_gradients[num_kernels] ,  float weight_gradients[num_inputs][num_kernels] );

/******************************************/
/************ Variable updates ************/
/******************************************/
template < int num_kernels , int num_inputs >
void gradient_descend( float variables[num_inputs][num_kernels] , float gradients[num_inputs][num_kernels] , float learning_rate );

/******************************************/
/**************** Save Data ***************/
/******************************************/
template < int num_maps , int height , int width >
void save_feature_map( float feature_maps[num_maps][height][width] , const char* file_name , int precision );