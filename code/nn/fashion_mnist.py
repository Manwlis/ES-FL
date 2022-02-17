# @file fashion_mnist_cnn.py
# @author Emmanouil Petrakos
# @brief 
# 
# @copyright None

#######################################################################################################################
# Define dependecies and set up environment.                                                                          #
#######################################################################################################################
import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # suppress tensorflow warnings

import sys
current_module = sys.modules[__name__]

import tensorflow as tf
import tensorflow_datasets as tfds

# Helper libraries
import math
import numpy as np

from models import get_model

model = None
train_dataset = None
test_dataset = None
num_train_examples = None
num_test_examples = None

#######################################################################################################################
# Import and pre-process training data .                                                                              #
#######################################################################################################################
def setup_data():
	global current_module
	global model
	global train_dataset
	global test_dataset
	global num_train_examples
	global num_test_examples

	#data import
	dataset , metadata = tfds.load( 'fashion_mnist' , as_supervised=True , with_info=True )
	test_dataset = dataset['test']
	train_dataset = dataset['train']

	# standalone mode, used to test nn with all the data locally.
	if( sys.argv[1] == "standalone" ):
		pass
	#federated learning
	# splits data evenly between clients
	elif( sys.argv[1] == "IID" ):
		train_dataset = train_dataset.shard( num_shards=int(sys.argv[2]) , index=int(sys.argv[3]) ) # shard is deterministic
	# split data by label, extreme case of non IID data. Need Num_clients MOD 5 = 0 to use all data
	elif( sys.argv[1] == "nonIID" ):
		@tf.function
		def predicate( image , label ):
			if( sys.argv[2] == '0' ):
				return label == 0 or label == 1
			elif( sys.argv[2] == '1' ):
				return label == 2 or label == 3
			elif( sys.argv[2] == '2' ):
				return label == 4 or label == 5 
			elif( sys.argv[2] == '3' ):
				return label == 6 or label == 7
			else:
				return label == 8 or label == 9

		train_dataset = train_dataset.filter( predicate )
		#shard the filtered dataset TODO: this
	else:
		sys.exit( "Specify mode. standalone/IID/nonIID" )
	
	print( sys.argv[1] , " mode." )

	num_train_examples = train_dataset.reduce( 0 , lambda x , _ : x + 1 ).numpy() #slow
	num_test_examples = tf.data.experimental.cardinality( test_dataset ).numpy() # doesn't work on filtered datasets

	print( "Number of train examples: " , num_train_examples , "	Number of test examples: " , num_test_examples )

	# pre-process data
	def normalize( images , labels ):
		images = tf.cast( images , tf.float32 )
		images /= 255
		return images, labels

	# The map function applies the normalize function to each element in the train and test datasets
	train_dataset =  train_dataset.map( normalize )
	test_dataset  =  test_dataset.map( normalize )

	# batch, prefetch
	train_dataset = train_dataset.cache().repeat().shuffle( num_train_examples ).batch( current_module.BATCH_SIZE )
	train_dataset = train_dataset.prefetch(1)
	
	test_dataset = train_dataset.cache().repeat().shuffle( num_test_examples ).batch( current_module.BATCH_SIZE )
	test_dataset = train_dataset.prefetch(1)
	#test_dataset = test_dataset.cache().batch( current_module.BATCH_SIZE )


#######################################################################################################################
# Define model architecture and compile model.                                                                        #
#######################################################################################################################
def compile_nn():
	global current_module
	global model

	# model definition.Pick from models.py file
	model = get_model( current_module.MODEL )
	# compile model
	model.compile( tf.keras.optimizers.Adam(learning_rate=1e-3) , loss=tf.keras.losses.SparseCategoricalCrossentropy() , metrics=['accuracy'] )

	# model.summary()
	# print("")
	# print("_________________________________________________________________")
	# print( '%-28s' % "Trainable variables" , '%-25s' % "Shape" , "Param #" )
	# print("=================================================================")
	# for tr_var in model.trainable_variables: 
	# 	print( '%-28s' % tr_var.name , '%-25s' %tr_var.shape , tr_var.numpy().size )
	# print("")


#######################################################################################################################
# Trains the nn using the input variables as the initial trainable variables.                                         #
# Final trainable variables are saved in and returned through the output_variables.                                   #
# If flags == NO_PRETRAINED_MODEL input variables are disregarded and the values in the model are used instead.       #
#######################################################################################################################
def train_nn( input_variables , output_variables , flags ):
	global current_module
	global model

	# get variables
	if flags != current_module.no_pretrained_model_flag:
		pos = 0
		for tr_var in model.trainable_variables:
			temp = tf.convert_to_tensor( np.asarray( input_variables[ pos : pos + tr_var.numpy().size ] ).reshape( tr_var.shape ) , np.float32 )
			tr_var.assign( temp )
			
			pos += tr_var.numpy().size
	else:
		print( "skipped servers variables" )

	# print( "input			" , input_variables[803239] )
	# print( "variable prin fit	" , model.trainable_variables[29].numpy()[9] )
	# train
	model.fit( train_dataset , batch_size=current_module.BATCH_SIZE , epochs=current_module.LOCAL_EPOCHS , steps_per_epoch=current_module.STEPS_PER_EPOCH )

	# print( "variable meta fit	" , model.trainable_variables[29].numpy()[9] )
	# save variables
	pos = 0
	for tr_var in model.trainable_variables:
		output_variables[ pos : pos + tr_var.numpy().size ] = tr_var.numpy().flatten()
		pos += tr_var.numpy().size

	# print( "output			" , output_variables[803239] )
	

#######################################################################################################################
# Evaluates nn from input variables.                                                                                  #
#######################################################################################################################
def evaluate_nn( input_variables , test_loss, test_accuracy ):
	global current_module
	global model
	global test_dataset
	global num_test_examples

	pos = 0
	for tr_var in model.trainable_variables:
		temp = tf.convert_to_tensor( np.asarray( input_variables[ pos : pos + tr_var.numpy().size ] ).reshape( tr_var.shape ) , np.float32 )
		tr_var.assign( temp )
		
		pos += tr_var.numpy().size

	# print( "input			" , input_variables[803239] )
	# print( "variable prin evaluate	" , model.trainable_variables[29].numpy()[9] )

	loss , accuracy = model.evaluate( test_dataset , batch_size=current_module.BATCH_SIZE , steps=current_module.STEPS_PER_EPOCH )
	print( 'Accuracy on test dataset:' , accuracy )


#######################################################################################################################
# Standalone mode. Used to test model locally with all data.                                                          #
#######################################################################################################################
if ( sys.argv[1] == "standalone" ):
	current_module.BATCH_SIZE = 30
	current_module.LOCAL_EPOCHS = 1
	current_module.PY_MODEL = "cnn_model"

	setup_data()
	compile_nn()

	model.fit( train_dataset , batch_size=current_module.BATCH_SIZE , steps_per_epoch=num_train_examples/current_module.BATCH_SIZE , epochs=current_module.LOCAL_EPOCHS )

	loss , accuracy = model.evaluate( test_dataset , batch_size=current_module.BATCH_SIZE )
	print( 'Accuracy on test dataset:' , accuracy )