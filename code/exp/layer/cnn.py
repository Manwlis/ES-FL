import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # suppress tensorflow warnings
import tensorflow as tf
import numpy as np
import tensorflow_datasets as tfds
import math

from keras.initializers import GlorotUniform

#  global variables used to move trained variables from the complete model to the partial ones
g_weights_l0 = np.empty( (3,3,1,32) )
g_weights_l2 = np.empty( (3,3,32,64) )
g_weights_l4 = np.empty( (3136,128))
g_weights_l5 = np.empty( (128,10) )

g_biases_l0 = np.empty( (32) )
g_biases_l2 = np.empty( (64) )
g_biases_l4 = np.empty( (128) )
g_biases_l5 = np.empty( (10) )


def share_trainable_variables( model ):
	###### Layer 0 weights ######
	# get variables
	np_array = model.trainable_variables[0].numpy()

	#copy them to the distint layer
	global g_weights_l0
	g_weights_l0 = np_array.copy()

	# transpose to C++ format
	np_array = np.transpose( np_array , (3,2,0,1) )

	#save to file
	file = open( "temp/l0_weights.txt" , "w" )
	for dim3 in range( 0 , 32 , 1 ):
			for dim2 in range( 0 , 1 , 1 ):
				for dim1 in range( 0 , 3 , 1 ):
					for dim0 in range( 0 , 3 , 1 ):
						file.write( '{}\n'.format( np_array[dim3][dim2][dim1][dim0] ) )

	###### Layer 0 biases ######
	np_array = model.trainable_variables[1].numpy()

	global g_biases_l0
	g_biases_l0 = np_array.copy()

	file = open( "temp/l0_biases.txt" , "w" )
	for dim0 in range( 0 , 32 , 1 ):
		file.write( '{}\n'.format( np_array[dim0] ) )

	###### Layer 2 weights ######
	np_array = model.trainable_variables[2].numpy()

	global g_weights_l2
	g_weights_l2 = np_array.copy()

	np_array = np.transpose( np_array , (3,2,0,1) )

	file = open( "temp/l2_weights.txt" , "w" )
	for dim3 in range( 0 , 64 , 1 ):
			for dim2 in range( 0 , 32 , 1 ):
				for dim1 in range( 0 , 3 , 1 ):
					for dim0 in range( 0 , 3 , 1 ):
						file.write( '{}\n'.format( np_array[dim3][dim2][dim1][dim0] ) )

	###### Layer 2 biases ######
	np_array = model.trainable_variables[3].numpy()

	global g_biases_l2
	g_biases_l2 = np_array.copy()

	file = open( "temp/l2_biases.txt" , "w" )
	for dim0 in range( 0 , 64 , 1 ):
		file.write( '{}\n'.format( np_array[dim0] ) )

	###### Layer 4 weights ######
	np_array = model.trainable_variables[4].numpy()

	global g_weights_l4
	g_weights_l4 = np_array.copy()

	# reshape to fit the shape of the input in the C++ code
	np_array = np.reshape( np_array , ( 7 , 7 , 64 , 128 ) )
	np_array = np.transpose( np_array , ( 2 , 0 , 1 , 3 ) )
	np_array = np.reshape( np_array , (3136, 128) )

	file = open( "temp/l4_weights.txt" , "w" )
	for dim0 in range( 0 , 3136 , 1 ):
		for dim1 in range( 0 , 128 , 1 ):
			file.write( '{}\n'.format( np_array[dim0][dim1] ) )
			
	###### Layer 4 biases ######
	np_array = model.trainable_variables[5].numpy()
	
	global g_biases_l4
	g_biases_l4 = np_array.copy()

	file = open( "temp/l4_biases.txt" , "w" )
	for dim0 in range( 0 , 128 , 1 ):
		file.write( '{}\n'.format( np_array[dim0] ) )

	###### Layer 5 weights ######
	np_array = model.trainable_variables[6].numpy()

	global g_weights_l5
	g_weights_l5 = np_array.copy()

	np_array = np.transpose( np_array , (1,0) )

	file = open( "temp/l5_weights.txt" , "w" )
	for dim0 in range( 0 , 10 , 1 ):
		for dim1 in range( 0 , 128 , 1 ):
			file.write( '{}\n'.format( np_array[dim0][dim1] ) )
			
	###### Layer 5 biases ######
	np_array = model.trainable_variables[7].numpy()

	global g_biases_l5
	g_biases_l5 = np_array.copy()

	file = open( "temp/l5_biases.txt" , "w" )
	for dim0 in range( 0 , 10 , 1 ):
		file.write( '{}\n'.format( np_array[dim0] ) )


def make_cnn( train_dataset , num_train_examples ):
	# create model
	model = tf.keras.Sequential([
		tf.keras.layers.Conv2D( 32, ( 3 , 3 ) , padding = 'same', activation = 'relu', input_shape = ( 28 , 28 , 1 ) , 
			kernel_initializer=GlorotUniform( seed=0 ) ),
		tf.keras.layers.MaxPool2D( ( 2 , 2 ) , strides = 2 ),
		tf.keras.layers.Conv2D( 64, ( 3 , 3 ) , padding = 'same', activation = 'relu' , kernel_initializer=GlorotUniform( seed=0 ) ),
		tf.keras.layers.MaxPool2D( ( 2 , 2 ) , strides = 2 ),
		tf.keras.layers.Flatten(),
		tf.keras.layers.Dense( 128 , activation= 'relu' , kernel_initializer=GlorotUniform( seed=0 ) ),
		tf.keras.layers.Dense( 10 , activation='softmax' , kernel_initializer=GlorotUniform( seed=0 ) )
		])

	# compile model
	optimizer = tf.keras.optimizers.Adam( )
	model.compile( optimizer , loss=tf.keras.losses.SparseCategoricalCrossentropy() , metrics=['accuracy'] )

	# train
	BATCH_SIZE = 32
	model.fit(train_dataset , epochs=1 , steps_per_epoch=math.ceil( num_train_examples / BATCH_SIZE ) )

	# share model variables with c++ code and distinct layer
	share_trainable_variables( model )

	# Generate output
	return model

def conv2d_32( input ):
	# Create model 
	model = tf.keras.Sequential([ 
		tf.keras.layers.Conv2D( 32 , ( 3 , 3 ) ,  padding='same' , activation='relu' , input_shape=( 28 , 28 , 1 ) )
		])

	# insert variables from the complete cnn
	global g_weights_l0
	tensor = tf.convert_to_tensor(g_weights_l0 , dtype=np.float32 )
	model.trainable_variables[0].assign(tensor)

	global g_biases_l0
	tensor = tf.convert_to_tensor(g_biases_l0 , dtype=np.float32 )
	model.trainable_variables[1].assign(tensor)

	# Generate output
	return model( input ).numpy()

def maxpool2d_32( input ):
	model = tf.keras.Sequential([ tf.keras.layers.MaxPool2D( ( 2 , 2 ) , strides=2 ) ])
	
	return model( input ).numpy()

def conv2d_64( input ):
	model = tf.keras.Sequential([ 
		tf.keras.layers.Conv2D( 64 ,  ( 3 , 3 ) , padding='same' , activation='relu' , input_shape = (14, 14, 32)  )
			])

	global g_weights_l2
	tensor = tf.convert_to_tensor(g_weights_l2 , dtype=np.float32 )
	model.trainable_variables[0].assign(tensor)

	global g_biases_l2
	tensor = tf.convert_to_tensor(g_biases_l2 , dtype=np.float32 )
	model.trainable_variables[1].assign(tensor)

	return model( input ).numpy()

def maxpool2d_64( input ):
	model = tf.keras.Sequential([ tf.keras.layers.MaxPool2D( ( 2 , 2 ) , strides=2 ) ])
	
	return model( input ).numpy()

def dense_128( input ):
	model = tf.keras.Sequential([ 
		tf.keras.layers.Flatten(  input_shape=( 7 , 7 , 64 ) ),
		tf.keras.layers.Dense( 128 , activation='relu' )
		])

	global g_weights_l4
	tensor = tf.convert_to_tensor(g_weights_l4 , dtype=np.float32 )
	model.trainable_variables[0].assign(tensor)
	
	global g_biases_l4
	tensor = tf.convert_to_tensor(g_biases_l4 , dtype=np.float32 )
	model.trainable_variables[1].assign(tensor)

	return model( input ).numpy()

def dense_softmax_10( input ):
	model = tf.keras.Sequential([
		tf.keras.layers.Flatten(  input_shape=( 128 , 1 ) ),
		tf.keras.layers.Dense( 10 , activation='softmax' )
		])

	global g_weights_l5
	tensor = tf.convert_to_tensor(g_weights_l5 , dtype=np.float32 )
	model.trainable_variables[0].assign(tensor)

	global g_biases_l5
	tensor = tf.convert_to_tensor(g_biases_l5 , dtype=np.float32 )
	model.trainable_variables[1].assign(tensor)

	return model( input ).numpy()


def print_feature_maps( filename , map , num_features , height , width ):
	file = open( filename , "w" )
	for filter in range( 0 , num_features , 1 ):
		for i in range( 0 , height , 1 ):
			for k in range( 0 , width , 1 ):
				file.write( '{:.18f}\n'.format( map[0][i][k][filter] ) )
				# file.write( 'fmap[{}][{}][{}] = {}\n'.format( filter , i , k , map[0][i][k][filter] ) )

def print_dense_map( filename , map , length ):
	file = open( filename , "w" )
	for i in range( 0 , length , 1 ):
		file.write( '{:.18f}\n'.format( map[0][i] ) )


def main():
	# set up training dataset and test input
	dataset, metadata = tfds.load('fashion_mnist', as_supervised=True, with_info=True)
	train_dataset, test_dataset = dataset['train'], dataset['test']
	num_train_examples = metadata.splits['train'].num_examples

	def normalize(images, labels):
		images = tf.cast(images, tf.float32)
		images /= 255
		return images, labels

	train_dataset =  train_dataset.map(normalize)
	test_dataset  =  test_dataset.map(normalize)

	BATCH_SIZE = 32
	train_dataset = train_dataset.cache().repeat().shuffle(num_train_examples).batch(BATCH_SIZE)

	for image , label in test_dataset.take(1):
		break
	image_out = image.numpy().reshape((28,28))
	np.savetxt( 'temp/array.txt' , image_out , fmt='%1.18f' )

	# create & train model
	cnn = make_cnn( train_dataset , num_train_examples )

	# evaluate and test model
	test_image = np.array([image])
	test_label = np.array([label])

	evaluation = cnn.evaluate( test_image , test_label )
	print( "\nTF entropy:  {:.6f}".format(evaluation[0]) )

	cnn_output = cnn( test_image ).numpy()
	print_dense_map( "output/cnn_tf.txt" , cnn_output , 10 )


	# run distinct layers
	conv2d_32_output 		= conv2d_32( test_image )
	maxpool2d_32_output 	= maxpool2d_32( conv2d_32_output )
	conv2d_64_output 		= conv2d_64( maxpool2d_32_output )
	maxpool2d_64_output 	= maxpool2d_64( conv2d_64_output )
	dense_128_output 		= dense_128( maxpool2d_64_output )
	dense_softmax_10_output = dense_softmax_10( dense_128_output )
	
	# print feature maps
	print_feature_maps( "output/l0_conv32_tf.txt"  , conv2d_32_output        , 32 , 28 , 28 )
	print_feature_maps( "output/l1_maxp32_tf.txt"  , maxpool2d_32_output     , 32 , 14 , 14 )
	print_feature_maps( "output/l2_conv64_tf.txt"  , conv2d_64_output        , 64 , 14 , 14 )
	print_feature_maps( "output/l3_maxp64_tf.txt"  , maxpool2d_64_output     , 64 ,  7 ,  7 )
	print_dense_map(    "output/l4_dense_tf.txt"   , dense_128_output        , 128 )
	print_dense_map(    "output/l5_softmax_tf.txt" , dense_softmax_10_output , 10 )


if __name__ == "__main__":
    main()