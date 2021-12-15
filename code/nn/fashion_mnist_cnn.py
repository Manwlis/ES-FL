# @file fashion_mnist_cnn.py
# @author Emmanouil Petrakos
# @brief 
# 
# @copyright None

####################################################################################################
# Define dependecies and set up environment.                                                       #
####################################################################################################
import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # suppress tensorflow warnings
import sys
current_module = sys.modules[__name__]

import tensorflow as tf

# Import TensorFlow Datasets
import tensorflow_datasets as tfds

# Helper libraries
import math
import numpy as np


####################################################################################################
# Define model architecture and import training data.                                              #
####################################################################################################
#model definition
model = tf.keras.Sequential([
	tf.keras.layers.Conv2D( 32, ( 3 , 3 ) , padding='same', activation=tf.nn.relu, input_shape=( 28 , 28 , 1 ) ),
	tf.keras.layers.MaxPooling2D( ( 2 , 2 ) , strides=2 ),
	tf.keras.layers.Conv2D( 64 , ( 3 , 3 ) , padding='same' , activation=tf.nn.relu ),
	tf.keras.layers.MaxPooling2D( ( 2 , 2 ) , strides=2 ),
	tf.keras.layers.Flatten(),
	tf.keras.layers.Dense( 128 , activation=tf.nn.relu ),
	tf.keras.layers.Dense( 10 , activation=tf.nn.softmax )
])

#data import
dataset , metadata = tfds.load( 'fashion_mnist' , as_supervised=True , with_info=True )
test_dataset = dataset['test']

# standalone mode, used to test nn with all the data locally.
if( len(sys.argv) == 1 ):
	train_dataset = dataset['train']
	print("Standalone mode.")

#federated learning
elif( len(sys.argv) == 2 ): # split data by label, extreme case of non IID data
	# if( sys.argv[1] == 0 ):
	# 	labels_to_filter = [ 0 , 1 , 2 , 3 , 4 ]
	# else:
	# 	labels_to_filter = [ 5 , 6 , 7 , 8 , 9 ]

	train_dataset = dataset['train']

	@tf.function
	def predicate( image , label ):
		if( sys.argv[1] == '0' ):
			return label == 0 or label == 1
		elif( sys.argv[1] == '1' ):
			return label == 2 or label == 3
		elif( sys.argv[1] == '2' ):
			return label == 4 or label == 5 
		elif( sys.argv[1] == '3' ):
			return label == 6 or label == 7
		else:
			return label == 8 or label == 9

	train_dataset = train_dataset.filter( predicate )

else: # splits data evenly between clients
	split = tfds.even_splits( 'train' , int( sys.argv[1] ) )
	train_dataset = tfds.load( 'fashion_mnist' , as_supervised=True , split=split[ int( sys.argv[2] ) ] )


# doesn't work on filtered datasets
# num_train_examples = tf.data.experimental.cardinality( train_dataset ).numpy()
num_train_examples = train_dataset.reduce( 0 , lambda x , _ : x + 1 ).numpy() #slow
num_test_examples = tf.data.experimental.cardinality( test_dataset ).numpy()

print( num_train_examples )

for images, labels in train_dataset.take(1):
    numpy_labels = labels.numpy()

print( numpy_labels )
####################################################################################################
# Pre-process data and compile model.                                                              #
####################################################################################################
def compile_nn():
	global model
	global train_dataset
	global test_dataset
	global num_train_examples
	global num_test_examples
	
	# pre-process data
	def normalize( images , labels ):
		images = tf.cast( images , tf.float32 )
		images /= 255
		return images, labels

	# The map function applies the normalize function to each element in the train and test datasets
	train_dataset =  train_dataset.map( normalize )
	test_dataset  =  test_dataset.map( normalize )

	train_dataset =  train_dataset.cache()
	test_dataset  =  test_dataset.cache()

	train_dataset = train_dataset.cache().repeat().shuffle( num_train_examples ).batch( current_module.BATCH_SIZE )
	test_dataset = test_dataset.cache().batch( current_module.BATCH_SIZE )

	num_batches = math.ceil( num_train_examples / current_module.BATCH_SIZE )

	# compile model
	model.compile( tf.keras.optimizers.Adam(learning_rate=1e-3) , loss=tf.keras.losses.SparseCategoricalCrossentropy() , metrics=['accuracy'] )

	# standalone mode
	if ( len(sys.argv) == 1 ):
		for i in range( 1 ):
			model.fit( train_dataset , epochs=1 , steps_per_epoch=num_batches )

			a, b = model.evaluate( test_dataset , steps=math.ceil( num_test_examples / current_module.BATCH_SIZE ) )
			print('Accuracy on test dataset:', b )
				
####################################################################################################
# Trains the nn using the input variables as the initial trainable variables.                      #
# Final trainable variables are saved in and returned through the output_variables.                #
# If flags == 1 input variables are disregarded and the values in the model are used instead.      #
####################################################################################################
def train_nn( input_variables , output_variables , flags ):
	global current_module
	global model

	# get variables
	if flags != 1:
		pos = 0
		for tr_var in model.trainable_variables:
			temp = tf.convert_to_tensor( np.asarray( input_variables[ pos : pos + tr_var.numpy().size ] ).reshape( tr_var.shape ) , np.float32 )
			tr_var.assign( temp )
			
			pos += tr_var.numpy().size
	else:
		print( "skipped servers variables" )

	# print( "input			" , input_variables[421641] )
	# print( "variable prin fit	" , model.trainable_variables[7].numpy()[9] )
	# train
	model.fit( train_dataset , epochs=current_module.LOCAL_EPOCHS , steps_per_epoch=current_module.STEPS_PER_EPOCH )

	# print( "variable meta fit	" , model.trainable_variables[7].numpy()[9] )
	# save variables
	pos = 0
	for tr_var in model.trainable_variables:
		output_variables[ pos : pos + tr_var.numpy().size ] = tr_var.numpy().flatten()
		pos += tr_var.numpy().size

	# print( "output			" , output_variables[421641] )
	

####################################################################################################
# Evaluates nn from input variables.                                                               #
####################################################################################################
def evaluate_nn( input_variables , test_loss, test_accuracy ):
	global model
	global test_dataset
	global num_test_examples
	a, b = model.evaluate( test_dataset , steps=math.ceil( num_test_examples / current_module.BATCH_SIZE ) )
	print('Accuracy on test dataset:', b )


####################################################################################################
# Standalone mode. Used to test model locally.                                                     #
####################################################################################################
if ( len(sys.argv) == 1 ):
	current_module.BATCH_SIZE = 30
	compile_nn()


# train through the train_nn function
# input_variables = np.empty( 421642 )
# output_variables = np.empty( 421642 )

# pos = 0
# for tr_var in model.trainable_variables:
# 	input_variables[ pos : pos + tr_var.numpy().size ] = tr_var.numpy().flatten()
# 	pos += tr_var.numpy().size

# for i in range( 200 ):
# 	print("\n" , i )
# 	train_nn( input_variables , output_variables , i+1 )
# 	np.copyto( input_variables , output_variables )

# # evaluate
# evaluate_nn( 0 , 0 , 0 )


# model.summary()
# print("")
# print("_________________________________________________________________")
# print( '%-28s' % "Trainable variables" , '%-25s' % "Shape" , "Param #" )
# print("=================================================================")
# for tr_var in model.trainable_variables: 
# 	print( '%-28s' % tr_var.name , '%-25s' %tr_var.shape , tr_var.numpy().size )
# print("")