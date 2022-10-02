#include <iostream>
#include <iomanip> 
#include <fstream>
#include <queue>
#include <cstring>
#include <limits>
#include <cmath>
#include <vector>

// 28x28x1 image
#define image_height  28
#define image_width   28
#define image_channels 1

// passes through 32 3x3 filters
#define conv2d_32_filter_height 3
#define conv2d_32_filter_width  3
#define conv2d_32_num_filters  32

#define conv2d_32_in_height   image_height
#define conv2d_32_in_width    image_width
#define conv2d_32_in_channels image_channels

#define conv2d_32_out_height   conv2d_32_in_height   // 28
#define conv2d_32_out_width	   conv2d_32_in_width    // 28
#define conv2d_32_out_channels conv2d_32_num_filters // 32

// max pooling 2x2x1 with (2,2,1) stride
#define maxp2d_32_filter_height 2
#define maxp2d_32_filter_width  2
#define maxp2d_32_filter_stride 2

#define maxp2d_32_in_height   conv2d_32_out_height   // 28
#define maxp2d_32_in_width    conv2d_32_out_width    // 28
#define maxp2d_32_in_channels conv2d_32_out_channels // 32

#define maxp2d_32_out_height   maxp2d_32_in_height / maxp2d_32_filter_stride // 14
#define maxp2d_32_out_width    maxp2d_32_in_width  / maxp2d_32_filter_stride // 14
#define maxp2d_32_out_channels maxp2d_32_in_channels                         // 32

// 64 3x3 filters
#define conv2d_64_filter_height 3
#define conv2d_64_filter_width  3
#define conv2d_64_num_filters  64

#define conv2d_64_in_height   maxp2d_32_out_height   // 14
#define conv2d_64_in_width	  maxp2d_32_out_width    // 14
#define conv2d_64_in_channels maxp2d_32_out_channels // 32

#define conv2d_64_out_height   maxp2d_32_out_height  // 14
#define conv2d_64_out_width    maxp2d_32_out_width   // 14
#define conv2d_64_out_channels conv2d_64_num_filters // 64

// max pooling 2x2x1 with (2,2,1) stride
#define maxp2d_64_filter_height 2
#define maxp2d_64_filter_width  2
#define maxp2d_64_filter_stride 2

#define maxp2d_64_in_height   conv2d_64_out_height   // 14
#define maxp2d_64_in_width    conv2d_64_out_width    // 14
#define maxp2d_64_in_channels conv2d_64_out_channels // 64

#define maxp2d_64_out_height   maxp2d_64_in_height / maxp2d_64_filter_stride // 7
#define maxp2d_64_out_width    maxp2d_64_in_width  / maxp2d_64_filter_stride // 7
#define maxp2d_64_out_channels maxp2d_64_in_channels                         // 64

// fully connected layer
#define dense_num_in      maxp2d_64_out_channels * maxp2d_64_out_height * maxp2d_64_out_width // 3136
#define dense_num_kernels 128
#define dense_num_out     dense_num_kernels	// 128

// softmax classification layer
#define softmax_num_in      dense_num_out       // 128
#define softmax_num_kernels 10
#define softmax_num_out     softmax_num_kernels // 10

#define learning_rate_const 0.01f

/******************************************/
/**************** Load Data ***************/
/******************************************/
template < 
	int l0_kernel_height , int l0_kernel_width , int l0_num_channels , int l0_num_kernels ,
	int l2_kernel_height , int l2_kernel_width , int l2_num_channels , int l2_num_kernels ,
	int l4_num_inputs , int l4_num_kernels ,
	int l5_num_inputs , int l5_num_kernels >
void set_variables (
	float layer0_weights[l0_kernel_height][l0_kernel_width][l0_num_channels][l0_num_kernels] , float layer0_biases[l0_num_kernels] ,
	float layer2_weights[l2_kernel_height][l2_kernel_width][l2_num_channels][l2_num_kernels] , float layer2_biases[l2_num_kernels] ,
	float layer4_weights[l4_num_inputs][l4_num_kernels] , float layer4_biases[l4_num_kernels] ,
	float layer5_weights[l5_num_inputs][l5_num_kernels] , float layer5_biases[l5_num_kernels] );

/******************************************/
/*********** Forward Propagation **********/
/******************************************/
template < typename in_type , uint filter_height , uint filter_width >
struct window { in_type elements[filter_height][filter_width]; };

template < typename in_type ,
	uint in_height     , uint in_width    , uint in_channels ,
	uint filter_height , uint filter_width >
void window_input_conv2d (
	in_type input[in_height][in_width][in_channels] ,
	std::queue< window < in_type , filter_height , filter_width > >& conv2d_window_streams );

template < typename in_type ,
	uint in_height     , uint in_width     , uint in_channels ,
	uint out_height    , uint out_width    , uint out_channels ,
	uint filter_height , uint filter_width , uint num_filters >
void conv2d (
	std::queue< window < in_type , filter_height , filter_width > >& conv2d_window_streams ,
	float weights[filter_height][filter_width][in_channels][num_filters] , float bias[num_filters] ,
	float output[out_height][out_width][out_channels] , bool activations [out_height][out_width][out_channels] );

template < typename in_type ,
	uint in_height     , uint in_width    , uint in_channels ,
	uint filter_height , uint filter_width , uint filter_stride >
void window_input_maxp2d (
	float input[in_height][in_width][in_channels] ,
	std::queue< window < in_type , filter_height , filter_width > >& maxp2d_window_stream );

template < typename in_type ,
	uint in_height     , uint in_width     , uint in_channels ,
	uint out_height    , uint out_width    , uint out_channels ,
	uint filter_height , uint filter_width , uint filter_stride >
void maxp2d (
	std::queue< window < in_type , filter_height , filter_width > >& maxp2d_window_stream , // inputs
	float output[out_height][out_width][out_channels] ,  // outputs
	std::queue< window < bool , filter_height , filter_width > >& maxp2d_activations_window_stream );

template < typename in_type ,
	uint in_height     , uint in_width    , uint in_channels ,
	uint out_height    , uint out_width    , uint out_channels ,
	uint filter_height , uint filter_width ,  uint filter_stride >
void maxp2d_window_integrated (
	float input[in_height][in_width][in_channels] ,
	float output[out_height][out_width][out_channels] ,  // outputs
	std::queue< window < bool , filter_height , filter_width > >& maxp2d_activations_window_stream );


template < int num_kernels , int num_inputs >
void dense ( 
	float input[num_inputs] , float output[num_kernels] , bool activations[num_kernels] ,
	float weights[num_inputs][num_kernels] , float biases[num_kernels] );

template < int num_kernels , int num_inputs >
void softmax_clasifier ( 
	float input[num_inputs] , float output[num_kernels] , 
	float weights[num_inputs][num_kernels] , float biases[num_kernels] );

/******************************************/
/************* Back Propagation ***********/
/******************************************/
template < int num_kernels >
double sparce_categorical_cross_entropy( float prediction[num_kernels] , int label , float softmax_output_error[num_kernels] );

template < int num_kernels , int num_inputs >
void softmax_error_propagation( float output_error[num_kernels] , float weights[num_inputs][num_kernels] , float input_error[num_inputs] );

template < int num_kernels , int num_inputs >
void dense_error_propagation(
	float output_error[num_kernels] ,float weights[num_inputs][num_kernels] ,  bool activations[num_kernels] , float input_error[num_inputs] );

template <
	uint     in_height , uint     in_width , uint   in_channels ,
	uint    out_height , uint    out_width , uint  out_channels ,
	uint filter_height , uint filter_width , uint filter_stride >
void maxpool_error_propagation(
	float output_error[ out_height * out_width * out_channels ] ,
	std::queue< window < bool , filter_height , filter_width > >& maxp2d_activations_window_stream ,
	float input_error[in_height][in_width][in_channels] );
/******************************************/
/**************** Save Data ***************/
/******************************************/
template < uint num_elements > 
void save_array( float array[num_elements] , const char* file_name , uint precision );