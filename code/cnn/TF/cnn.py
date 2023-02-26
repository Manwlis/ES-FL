import os
from telnetlib import NOP
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # suppress tensorflow warnings
import tensorflow as tf
import numpy as np
import tensorflow_datasets as tfds

import logging
logging.getLogger('tensorflow').setLevel(logging.ERROR)

from keras.initializers import GlorotUniform

# exposes the initialized variables to the C++ code by writing them to temp files.
def share_trainable_variables( model ):
	###### Layer 0 weights ######
	# get variables
	np_array = model.trainable_variables[0].numpy()
	#save to file
	file = open( "temp/l0_weights.bin" , "wb" )
	np_array.tofile( file )
	file.close()

	###### Layer 0 biases ######
	np_array = model.trainable_variables[1].numpy()
	file = open( "temp/l0_biases.bin" , "wb" )
	np_array.tofile( file )
	file.close()

	###### Layer 2 weights ######
	np_array = model.trainable_variables[2].numpy()
	file = open( "temp/l2_weights.bin" , "wb" )
	np_array.tofile( file )
	file.close()

	###### Layer 2 biases ######
	np_array = model.trainable_variables[3].numpy()
	file = open( "temp/l2_biases.bin" , "wb" )
	np_array.tofile( file )
	file.close()

	###### Layer 4 weights ######
	np_array = model.trainable_variables[4].numpy()
	file = open( "temp/l4_weights.bin" , "wb" )
	np_array.tofile( file )
	file.close()
			
	###### Layer 4 biases ######
	np_array = model.trainable_variables[5].numpy()
	file = open( "temp/l4_biases.bin" , "wb" )
	np_array.tofile( file )
	file.close()

	###### Layer 5 weights ######
	np_array = model.trainable_variables[6].numpy()
	file = open( "temp/l5_weights.bin" , "wb" )
	np_array.tofile( file )
	file.close()
			
	###### Layer 5 biases ######
	np_array = model.trainable_variables[7].numpy()
	file = open( "temp/l5_biases.bin" , "wb" )
	np_array.tofile( file )
	file.close()

def save_activations( activations ):
	###### Layer 0 activations ######
	np_array = np.copy( activations[0] )
	file = open( "activations/l0_conv16_tf.txt" , "w" )
	for i in range( 0 , 28 , 1 ):
		for k in range( 0 , 28 , 1 ):
			for filter in range( 0 , 16 , 1 ):
				file.write( '{:.4f}\n'.format( np_array[0][i][k][filter] ) )

	###### Layer 1 activations ######
	np_array = np.copy( activations[1] )
	file = open( "activations/l1_maxp16_tf.txt" , "w" )
	for i in range( 0 , 14 , 1 ):
		for k in range( 0 , 14 , 1 ):
			for filter in range( 0 , 16 , 1 ):
				file.write( '{:.4f}\n'.format( np_array[0][i][k][filter] ) )

	###### Layer 2 activations ######
	np_array = np.copy( activations[2] )
	file = open( "activations/l2_conv32_tf.txt" , "w" )
	for i in range( 0 , 14 , 1 ):
		for k in range( 0 , 14 , 1 ):
			for filter in range( 0 , 16 , 1 ):
				file.write( '{:.4f}\n'.format( np_array[0][i][k][filter] ) )

	###### Layer 3 activations ######
	np_array = np.copy( activations[3] )
	file = open( "activations/l3_maxp32_tf.txt" , "w" )
	for i in range( 0 , 7 , 1 ):
		for k in range( 0 , 7 , 1 ):
			for filter in range( 0 , 16 , 1 ):
				file.write( '{:.4f}\n'.format( np_array[0][i][k][filter] ) )

	###### Layer 4 activations ######
	np_array = np.copy( activations[5] )
	file = open( "activations/l4_dense_tf.txt" , "w" )
	for i in range( 0 , 64 , 1 ):
		file.write( '{:.4f}\n'.format( np_array[0][i] ) )

	###### Layer 5 activations ######
	np_array = np.copy( activations[6] )
	file = open( "activations/l5_softmax_tf.txt" , "w" )
	for i in range( 0 , 10 , 1 ):
		file.write( '{:.4f}\n'.format( np_array[0][i] ) )

def save_output_gradients( output_gradients ):
	###### Layer 0 output gradients ######
	np_array = np.copy( output_gradients[0] )
	file = open( "output_gradients/l0_conv16_tf.txt" , "w" )
	for i in range( 0 , 28 , 1 ):
		for k in range( 0 , 28 , 1 ):
			for filter in range( 0 , 16 , 1 ):
				file.write( '{:.4f}\n'.format( np_array[0][i][k][filter] ) )
	
	###### Layer 1 output gradients ######
	np_array = np.copy( output_gradients[1] )
	file = open( "output_gradients/l1_maxp16_tf.txt" , "w" )
	for i in range( 0 , 14 , 1 ):
		for k in range( 0 , 14 , 1 ):
			for filter in range( 0 , 16 , 1 ):
				file.write( '{:.4f}\n'.format( np_array[0][i][k][filter] ) )

	###### Layer 2 output gradients ######
	np_array = np.copy( output_gradients[2] )
	file = open( "output_gradients/l2_conv32_tf.txt" , "w" )
	for i in range( 0 , 14 , 1 ):
		for k in range( 0 , 14 , 1 ):
			for filter in range( 0 , 16 , 1 ):
				file.write( '{:.4f}\n'.format( np_array[0][i][k][filter] ) )

	###### Layer 3 output gradients ######
	np_array = np.copy( output_gradients[4] )
	file = open( "output_gradients/l3_maxp32_tf.txt" , "w" )
	for filter in range( 0 , 784 , 1 ):
		file.write( '{:.4f}\n'.format( np_array[0][filter] ) )

	###### Layer 4 output gradients ######
	np_array = np.copy( output_gradients[5] )
	file = open( "output_gradients/l4_dense_tf.txt" , "w" )
	for i in range( 0 , 64 , 1 ):
		file.write( '{:.4f}\n'.format( np_array[0][i] ) )
	# layer 5 has no output gradients

def save_variable_gradients( gradients ):
	###### Layer 0 weights ######
	np_array = np.copy( gradients[0] )
	file = open( "variable_gradients/l0_weights_tf.txt" , "w" )
	for dim3 in range( 0 , 3 , 1 ):
			for dim2 in range( 0 , 3 , 1 ):
				for dim1 in range( 0 , 1 , 1 ):
					for dim0 in range( 0 , 16 , 1 ):
						file.write( '{:.4f}\n'.format( np_array[dim3][dim2][dim1][dim0] ) )

	###### Layer 0 biases ######
	np_array = np.copy( gradients[1] )
	file = open( "variable_gradients/l0_biases_tf.txt" , "w" )
	for dim0 in range( 0 , 16 , 1 ):
		file.write( '{:.4f}\n'.format( np_array[dim0] ) )

	###### Layer 2 weights ######
	np_array = np.copy( gradients[2] )
	file = open( "variable_gradients/l2_weights_tf.txt" , "w" )
	for dim3 in range( 0 , 3 , 1 ):
		for dim2 in range( 0 , 3 , 1 ):
			for dim1 in range( 0 , 16 , 1 ):
				for dim0 in range( 0 , 16 , 1 ):
						file.write( '{:.4f}\n'.format( np_array[dim3][dim2][dim1][dim0] ) )

	###### Layer 2 biases ######
	np_array = np.copy( gradients[3] )
	file = open( "variable_gradients/l2_biases_tf.txt" , "w" )
	for dim0 in range( 0 , 16 , 1 ):
		file.write( '{:.4f}\n'.format( np_array[dim0] ) )

	###### Layer 4 weights ######
	np_array = np.copy( gradients[4] )
	file = open( "variable_gradients/l4_weights_tf.txt" , "w" )
	for dim1 in range( 0 , 784 , 1 ):
		for dim0 in range( 0 , 64 , 1 ):
			file.write( '{:.4f}\n'.format( np_array[dim1][dim0] ) )
			
	###### Layer 4 biases ######
	np_array = np.copy( gradients[5] )
	file = open( "variable_gradients/l4_biases_tf.txt" , "w" )
	for dim0 in range( 0 , 64 , 1 ):
		file.write( '{:.4f}\n'.format( np_array[dim0] ) )

	###### Layer 5 weights ######
	np_array = np.copy( gradients[6] )
	file = open( "variable_gradients/l5_weights_tf.txt" , "w" )
	for dim1 in range( 0 , 64 , 1 ):
		for dim0 in range( 0 , 10 , 1 ):
			file.write( '{:.4f}\n'.format( np_array[dim1][dim0] ) )

	###### Layer 5 biases ######
	np_array = np.copy( gradients[7] )
	file = open( "variable_gradients/l5_biases_tf.txt" , "w" )
	for dim0 in range( 0 , 10 , 1 ):
		file.write( '{:.4f}\n'.format( np_array[dim0] ) )
	
def save_trained_variables( variables ):
	###### Layer 0 weights ######
	np_array = np.copy( variables[0] )
	file = open( "variables/l0_weights_tf.txt" , "w" )
	for dim3 in range( 0 , 3 , 1 ):
			for dim2 in range( 0 , 3 , 1 ):
				for dim1 in range( 0 , 1 , 1 ):
					for dim0 in range( 0 , 16 , 1 ):
						file.write( '{:.6f}\n'.format( np_array[dim3][dim2][dim1][dim0] ) )

	###### Layer 0 biases ######
	np_array = np.copy( variables[1] )
	file = open( "variables/l0_biases_tf.txt" , "w" )
	for dim0 in range( 0 , 16 , 1 ):
		file.write( '{:.6f}\n'.format( np_array[dim0] ) )

	###### Layer 2 weights ######
	np_array = np.copy( variables[2] )
	file = open( "variables/l2_weights_tf.txt" , "w" )
	for dim3 in range( 0 , 3 , 1 ):
		for dim2 in range( 0 , 3 , 1 ):
			for dim1 in range( 0 , 16 , 1 ):
				for dim0 in range( 0 , 16 , 1 ):
						file.write( '{:.6f}\n'.format( np_array[dim3][dim2][dim1][dim0] ) )

	###### Layer 2 biases ######
	np_array = np.copy( variables[3] )
	file = open( "variables/l2_biases_tf.txt" , "w" )
	for dim0 in range( 0 , 16 , 1 ):
		file.write( '{:.6f}\n'.format( np_array[dim0] ) )

	###### Layer 4 weights ######
	np_array = np.copy( variables[4] )
	file = open( "variables/l4_weights_tf.txt" , "w" )
	for dim1 in range( 0 , 784 , 1 ):
		for dim0 in range( 0 , 64 , 1 ):
			file.write( '{:.6f}\n'.format( np_array[dim1][dim0] ) )
			
	###### Layer 4 biases ######
	np_array = np.copy( variables[5] )
	file = open( "variables/l4_biases_tf.txt" , "w" )
	for dim0 in range( 0 , 64 , 1 ):
		file.write( '{:.6f}\n'.format( np_array[dim0] ) )

	###### Layer 5 weights ######
	np_array = np.copy( variables[6] )
	file = open( "variables/l5_weights_tf.txt" , "w" )
	for dim1 in range( 0 , 64 , 1 ):
		for dim0 in range( 0 , 10 , 1 ):
			file.write( '{:.6f}\n'.format( np_array[dim1][dim0] ) )

	###### Layer 5 biases ######
	np_array = np.copy( variables[7] )
	file = open( "variables/l5_biases_tf.txt" , "w" )
	for dim0 in range( 0 , 10 , 1 ):
		file.write( '{:.6f}\n'.format( np_array[dim0] ) )


def main():
	num_batches = 2
	batch_size = 2
	##### Set up datasets #####
	# set up training dataset
	dataset, metadata = tfds.load('fashion_mnist', as_supervised=True, with_info=True)
	train_dataset, test_dataset = dataset['train'], dataset['test']
	num_train_examples = metadata.splits['train'].num_examples

	def normalize( images , labels ):
		images = tf.cast( images , tf.float32 )
		images /= 255
		return images , labels

	train_dataset = train_dataset.map( normalize )
	test_dataset  = test_dataset.map( normalize )

	image_list = []
	label_list = []
	
	with open( "temp/array.txt" , "w" ) as f:
		for image , label in train_dataset.take( num_batches * batch_size ):
			image_list.append( [image] )
			label_list.append( [label] )

	image_batch = []
	label_batch = []

	for i in range( 0 , num_batches ):
		image_batch.append( np.concatenate( image_list[ i * batch_size : i * batch_size + batch_size ] ) )
		label_batch.append( np.concatenate( label_list[ i * batch_size : i * batch_size + batch_size ] ) )

	##### create & train model #####
	# create model
	cnn = tf.keras.Sequential([
		tf.keras.layers.Conv2D( 16, ( 3 , 3 ) , padding = 'same', activation = 'relu', input_shape = ( 28 , 28 , 1 ) , kernel_initializer=GlorotUniform( seed = 0 ) ),
		tf.keras.layers.MaxPool2D( ( 2 , 2 ) , strides = 2 ),
		tf.keras.layers.Conv2D( 16, ( 3 , 3 ) , padding = 'same', activation = 'relu' , kernel_initializer = GlorotUniform( seed = 0 ) ),
		tf.keras.layers.MaxPool2D( ( 2 , 2 ) , strides = 2 ),
		tf.keras.layers.Flatten(),
		tf.keras.layers.Dense( 64 , activation = 'relu' , kernel_initializer = GlorotUniform( seed = 0 ) ),
		tf.keras.layers.Dense( 10 , activation ='softmax' , kernel_initializer = GlorotUniform( seed = 0 ) )
		])

	# compile model
	optimizer = tf.keras.optimizers.SGD( learning_rate=0.01 )
	cnn.compile( optimizer , loss=tf.keras.losses.SparseCategoricalCrossentropy() , metrics=['accuracy'] )

	# share model variables with c++ code and distinct layer
	share_trainable_variables( cnn )

	##### evaluate model and save outputs #####
	# keep tracks of the outputs of all layers
	heatmap_model = tf.keras.Model( cnn.inputs , [layer.output for layer in cnn.layers] )

	for i in range( 0 , num_batches ):
		# pass an image through forward, back prop and variable update
		with tf.GradientTape( persistent=True ) as g:
			# forward prop
			features = heatmap_model( image_batch[i] )

			# get total error
			loss = cnn.loss( y_true = label_batch[i] , y_pred = features[-1] )

		# back prop
		output_gradients = g.gradient( loss , features )
		variable_gradients = g.gradient( loss , cnn.trainable_variables )

		# apply gradients
		optimizer.apply_gradients( zip( variable_gradients , cnn.trainable_variables ) )
	
		print( "TF entropy: {:.8f}".format( loss ) )

	##### Print stuff #####
	save_activations( features )
	save_output_gradients( output_gradients )
	save_variable_gradients( variable_gradients )
	save_trained_variables( cnn.trainable_variables )


if __name__ == "__main__": main()