import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # suppress tensorflow warnings

import tensorflow as tf
import numpy as np

def cnn( input ):
	#set initializers
	kernel0_init = tf.keras.initializers.Constant(0.2)
	bias0_init = tf.keras.initializers.Constant(0.5)

	kernel1_init = tf.keras.initializers.Constant(0.1)
	bias1_init = tf.keras.initializers.Constant(0.5)

	kernel3_init = tf.keras.initializers.Constant(0.1)
	bias3_init = tf.keras.initializers.Constant(0.5)

	kernel4_init = tf.keras.initializers.Constant(0.1)
	bias4_init = tf.keras.initializers.Constant(0.5)

	# create model
	model = tf.keras.Sequential([
		tf.keras.layers.Conv2D( filters = 32, kernel_size = ( 3 , 3 ) , padding = 'same', 
			activation = 'relu', input_shape = ( 28 , 28 , 1 ) , kernel_initializer = kernel0_init, bias_initializer = bias0_init ),
		tf.keras.layers.MaxPool2D( pool_size = ( 2 , 2 ) , strides = 2 ),
		tf.keras.layers.Conv2D( filters = 64, kernel_size = ( 3 , 3 ) , padding = 'same', 
			activation = 'relu', kernel_initializer = kernel1_init, bias_initializer = bias1_init ),
		tf.keras.layers.MaxPool2D( pool_size = ( 2 , 2 ) , strides = 2 ),
		tf.keras.layers.Flatten(),
		tf.keras.layers.Dense( 128 , activation=tf.nn.relu , kernel_initializer = kernel3_init , bias_initializer = bias3_init ),
		tf.keras.layers.Dense( 10 , activation=tf.nn.softmax , kernel_initializer=kernel4_init , bias_initializer=bias4_init )
		])

	# change some weights
	np_array = model.trainable_variables[0].numpy()
	np_array[1][1][0][0]=-1
	tensor = tf.convert_to_tensor( np_array )
	model.trainable_variables[0].assign(tensor)

	np_array = model.trainable_variables[2].numpy()
	np_array[1][1][0][0]=-1
	tensor = tf.convert_to_tensor( np_array )
	model.trainable_variables[2].assign(tensor)

	np_array = model.trainable_variables[4].numpy()
	np_array[0][0] = 1
	tensor = tf.convert_to_tensor( np_array )
	model.trainable_variables[4].assign(tensor)

	np_array = model.trainable_variables[6].numpy()
	np_array[0][0] = -1
	tensor = tf.convert_to_tensor( np_array )
	model.trainable_variables[6].assign(tensor)

	# Generate output
	return model( input ).numpy()


def conv2d_32( input ):
	########## Create model ###########
	kernel_init = tf.keras.initializers.Constant(0.2)
	bias_init = tf.keras.initializers.Constant(0.5)

	model = tf.keras.Sequential([ 
		tf.keras.layers.Conv2D( 
			32 , ( 3 , 3 ) ,  padding='same' , activation='relu' , input_shape=( 28 , 28 , 1 ) , 
			kernel_initializer=kernel_init , bias_initializer=bias_init )
		])

	# change a weight
	np_array = model.trainable_variables[0].numpy()
	np_array[1][1][0][0]=-1
	tensor = tf.convert_to_tensor( np_array )
	model.trainable_variables[0].assign(tensor)

	# Generate output
	return model( input ).numpy()

def maxpool2d_32( input ):
	# Create model
	model = tf.keras.Sequential([ tf.keras.layers.MaxPool2D( ( 2 , 2 ) , strides=2 ) ])
	
	# Generate output
	return model( input ).numpy()

def conv2d_64( input ):
	# Create model
	kernel_init = tf.keras.initializers.Constant(0.1)
	bias_init = tf.keras.initializers.Constant(0.5)

	model = tf.keras.Sequential([ 
		tf.keras.layers.Conv2D( 64 ,  ( 3 , 3 ) , padding='same' , activation='relu' , input_shape = (14, 14, 32) , 
			kernel_initializer=kernel_init , bias_initializer=bias_init ) ])

	# change a weight
	np_array = model.trainable_variables[0].numpy()
	np_array[1][1][0][0]=-1
	
	tensor = tf.convert_to_tensor( np_array )
	model.trainable_variables[0].assign(tensor)

	# Generate output
	return model( input ).numpy()

def maxpool2d_64( input ):
	# Create model
	model = tf.keras.Sequential([ tf.keras.layers.MaxPool2D( ( 2 , 2 ) , strides=2 ) ])
	
	# Generate output
	return model( input ).numpy()

def dense_128( input ):
	kernel3_init = tf.keras.initializers.Constant(0.1)
	bias3_init = tf.keras.initializers.Constant(0.5)

	model = tf.keras.Sequential([ 
		tf.keras.layers.Flatten(  input_shape=( 7 , 7 , 64 ) ),
		tf.keras.layers.Dense( 128 , activation='relu' , 
		kernel_initializer=kernel3_init , bias_initializer = bias3_init )
		])

	# Generate output
	return model( input ).numpy()

def dense_softmax_10( input ):
	kernel4_init = tf.keras.initializers.Constant(0.1)
	bias4_init = tf.keras.initializers.Constant(0.5)

	model = tf.keras.Sequential([
		tf.keras.layers.Flatten(  input_shape=( 128 , 1 ) ),
		tf.keras.layers.Dense( 10 , activation=tf.nn.softmax , kernel_initializer=kernel4_init , bias_initializer=bias4_init )
		])

	np_array = model.trainable_variables[0].numpy()
	np_array[0][0] = -1
	tensor = tf.convert_to_tensor( np_array )
	model.trainable_variables[0].assign(tensor)

	return model( input ).numpy()


def print_feature_maps( filename , map , num_features , height , width ):
	file = open( filename , "w" )
	for filter in range( 0 , num_features , 1 ):
		for i in range( 0 , height , 1 ):
			for k in range( 0 , width , 1 ):
				file.write( '{:.1f}\n'.format( map[0][i][k][filter] ) )
				# file.write( 'fmap[{}][{}][{}] = {}\n'.format( filter , i , k , map[0][i][k][filter] ) )

def print_dense_map( filename , map , length ):
	file = open( filename , "w" )
	for i in range( 0 , length , 1 ):
		file.write( '{:.8f}\n'.format( map[0][i] ) )


def main():
	# Create input
	array = np.ones( ( 1 , 28 , 28 ) , dtype=np.uint8)
	for i in range( 0 , 28 , 1 ):
		for k in range( 0 , 28 , 1 ):
			array[0][i][k] = (i+k)/2
	array[0][5][7] = 0
	array[0][9][3] = 0
	array[0][27][27] = 0

	input = tf.constant( array )

	# run complete cnn
	cnn_output = cnn( input )
	print_dense_map( "output/cnn_tf.txt" , cnn_output , 10 )

	# run distinct layers
	conv2d_32_output = conv2d_32( input )
	maxpool2d_32_output =  maxpool2d_32( conv2d_32_output )
	conv2d_64_output = conv2d_64( maxpool2d_32_output )
	maxpool2d_64_output = maxpool2d_64( conv2d_64_output )
	dense_128_output = dense_128( maxpool2d_64_output )
	dense_softmax_10_output = dense_softmax_10( dense_128_output )
	
	# print feature maps
	print_feature_maps( "output/layer0_tf.txt" , conv2d_32_output , 32 , 28 , 28 )
	print_feature_maps( "output/layer1_tf.txt" , maxpool2d_32_output , 32 , 14 , 14 )
	print_feature_maps( "output/layer2_tf.txt" , conv2d_64_output , 64 , 14 , 14 )
	print_feature_maps( "output/layer3_tf.txt" , maxpool2d_64_output , 64 , 7 , 7 )
	print_dense_map( "output/layer4_tf.txt" , dense_128_output , 128 )
	print_dense_map( "output/layer5_tf.txt" , dense_softmax_10_output , 10 )


if __name__ == "__main__":
    main()