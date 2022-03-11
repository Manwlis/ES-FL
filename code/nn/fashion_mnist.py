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
physical_devices = tf.config.list_physical_devices('GPU')
tf.config.set_visible_devices(physical_devices[1:], 'GPU')

logical_devices = tf.config.list_logical_devices('GPU')
print("Num GPUs:", len(logical_devices) )

import tensorflow_datasets as tfds

# Helper libraries
import math
import numpy as np

from models import get_model

model = None
train_dataset = None
test_dataset = None
train_shard = None
train_shard_unshafled = None
num_train_examples = None
num_test_examples = None

accuracy_list = []

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
	global train_shard
	global train_shard_unshafled

	# load tfds to get its element_spec. Needed for loading the saved preprocessed version. Maybe find a better way without loading them?
	dataset , metadata = tfds.load( 'fashion_mnist' , as_supervised=True , with_info=True )
	train_dataset_element_spec = dataset['train'].element_spec
	test_dataset_element_spec = dataset['test'].element_spec

	# change dtype to the preproccessed one. Python tuples are immutable, need to replace the whole tuple. Ugly hack.
	train_dataset_element_spec = (
		tf.TensorSpec(
			train_dataset_element_spec[0].shape ,
			dtype=tf.dtypes.float32 ,
			name=train_dataset_element_spec[0].name
		) ,
		train_dataset_element_spec[1]
	)
	test_dataset_element_spec = (
		tf.TensorSpec(
			test_dataset_element_spec[0].shape ,
			dtype=tf.dtypes.float32 ,
			name=test_dataset_element_spec[0].name
			)
		, test_dataset_element_spec[1] 
	)

	# load pre-processed data
	train_dataset = tf.data.experimental.load("./IO_files/train_dataset" , train_dataset_element_spec )
	test_dataset = tf.data.experimental.load("./IO_files/test_dataset" , test_dataset_element_spec )

	# distibute the data
	# standalone mode, used to test nn with all the data locally.
	if( sys.argv[1] == "standalone" ):
		train_shard_unshafled = train_dataset
	#federated learning
	# splits data evenly between clients
	elif( sys.argv[1] == "IID" ):
		train_shard_unshafled = train_dataset.shard( num_shards=int(sys.argv[2]) , index=int(sys.argv[3]) ) # shard is deterministic
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

	num_train_examples = train_shard_unshafled.reduce( 0 , lambda x , _ : x + 1 ).numpy() #slow
	num_test_examples = tf.data.experimental.cardinality( test_dataset ).numpy() # doesn't work on filtered datasets

	print( "Number of train examples: " , num_train_examples , "	Number of test examples: " , num_test_examples )

	# batch, prefetch
	train_shard_unshafled = train_shard_unshafled.cache()
	train_shard = train_shard_unshafled.shuffle( num_train_examples )
	train_shard = train_shard.batch( current_module.BATCH_SIZE )
	train_shard = train_shard.prefetch( tf.data.AUTOTUNE )
	train_shard = train_shard.repeat()
	
	test_dataset = test_dataset.cache().shuffle( num_test_examples ).batch( current_module.BATCH_SIZE )
	test_dataset = test_dataset.prefetch( tf.data.AUTOTUNE ).repeat()
	#test_dataset = test_dataset.cache().batch( current_module.BATCH_SIZE )

	return num_train_examples

#######################################################################################################################
# Reshafles and rebatches local data.                                                                                 #
#######################################################################################################################
def shuffle_data():
	global num_train_examples
	global train_shard
	global train_shard_unshafled

	train_shard = train_shard_unshafled.shuffle( num_train_examples )
	train_shard = train_shard.batch( current_module.BATCH_SIZE )
	train_shard = train_shard.prefetch( tf.data.AUTOTUNE )
	train_shard = train_shard.repeat()

#######################################################################################################################
# Define model architecture and compile model.                                                                        #
#######################################################################################################################
def compile_nn():
	global current_module
	global model

	# model definition.Pick from models.py file
	model = get_model( current_module.MODEL )
	# compile model
	# optimizer = tf.keras.optimizers.Adam( learning_rate=1e-3 )
	# TODO: try different learning rate, momentum and decay combinations
	optimizer = tf.keras.optimizers.SGD( learning_rate=5*(1e-3) , momentum=0.9 )

	model.compile( optimizer , loss=tf.keras.losses.SparseCategoricalCrossentropy() , metrics=['accuracy'] )

	model.summary()
	print("")
	print("_________________________________________________________________")
	print( '%-28s' % "Trainable variables" , '%-25s' % "Shape" , "Param #" )
	print("=================================================================")
	for tr_var in model.trainable_variables: 
		print( '%-28s' % tr_var.name , '%-25s' %tr_var.shape , tr_var.numpy().size )
	print("")

#######################################################################################################################
# Learning Rate Scheduler used to decay learning rate every round.                                                    #
#######################################################################################################################
class CustomLearningRateScheduler( tf.keras.callbacks.Callback ):
	def __init__( self ):
		super(CustomLearningRateScheduler, self).__init__()
		
	def on_train_end( self , batch , logs=None ):
		global model
		
		if not hasattr( self.model.optimizer, "lr" ):
			raise ValueError('Optimizer must have a "lr" attribute.')

		# Get the current learning rate from model's optimizer.
		lr = float( tf.keras.backend.get_value( self.model.optimizer.lr ) )
		# calculate new learning rate
		decayed_lr = lr * float(current_module.LEARNING_RATE_DECAY)
		# Set the value back to the optimizer
		tf.keras.backend.set_value( self.model.optimizer.lr , decayed_lr )

		# if not hasattr( self.model.optimizer, "momentum" ):
		# 	raise ValueError('Optimizer must have a "momentum" attribute.')
		# # do the same for momentum
		# mm = float( tf.keras.backend.get_value( self.model.optimizer.momentum ) )
		# decayed_mm = mm * float(current_module.LEARNING_RATE_DECAY)
		# tf.keras.backend.set_value( self.model.optimizer.momentum , decayed_mm )
# TODO: decay lr by global epoch and by batch

#######################################################################################################################
# Trains the nn using the input variables as the initial trainable variables.                                         #
# Final trainable variables are saved in and returned through the output_variables.                                   #
# If flags == NO_PRETRAINED_MODEL input variables are disregarded and the values in the model are used instead.       #
#######################################################################################################################
def train_nn( input_variables , output_variables , flags ):
	global current_module
	global model
	global train_shard
	
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
	callback_list=[]
	if ( current_module.LEARNING_RATE_DECAY_FLAG ):
		callback_list.append( CustomLearningRateScheduler() )

	model.fit( train_shard , verbose=1 ,
		batch_size=current_module.BATCH_SIZE ,
		epochs=current_module.LOCAL_EPOCHS ,
		steps_per_epoch=current_module.STEPS_PER_EPOCH ,
		callbacks=callback_list )

	# print( "variable meta fit	" , model.trainable_variables[29].numpy()[9] )
	# save variables
	pos = 0
	for tr_var in model.trainable_variables:
		output_variables[ pos : pos + tr_var.numpy().size ] = tr_var.numpy().flatten()
		pos += tr_var.numpy().size

	# print( "output			" , output_variables[803239] )

	# print( "loss:" , history.history.get("loss")[0] , "	accuracy:" , history.history.get("accuracy")[0]  )

#######################################################################################################################
# Evaluates nn from input variables.                                                                                  #
#######################################################################################################################
def evaluate_nn( input_variables , epoch , test_loss, test_accuracy ):
	global current_module
	global model
	global test_dataset
	global num_test_examples
	global accuracy_list

	pos = 0
	for tr_var in model.trainable_variables:
		temp = tf.convert_to_tensor( np.asarray( input_variables[ pos : pos + tr_var.numpy().size ] ).reshape( tr_var.shape ) , np.float32 )
		tr_var.assign( temp )
		
		pos += tr_var.numpy().size

	# print( "input			" , input_variables[803239] )
	# print( "variable prin evaluate	" , model.trainable_variables[29].numpy()[9] )

	loss , accuracy = model.evaluate( test_dataset , verbose = 1 , batch_size=current_module.BATCH_SIZE , steps=num_test_examples/current_module.BATCH_SIZE )
	print( 'Accuracy on test dataset:' , accuracy )
	accuracy_list.append( ( epoch , accuracy ) )


def print_accuracy_history():
	global accuracy_list

	for keys,values in accuracy_list :
		print( keys , values )


#######################################################################################################################
# Standalone mode. Used to test model locally with all data.                                                          #
#######################################################################################################################
if ( sys.argv[1] == "standalone" ):
	current_module.BATCH_SIZE = 20
	current_module.LOCAL_EPOCHS = 1
	current_module.MODEL = "cnn_fedAvg"

	setup_data()
	compile_nn()

	dataset , metadata = tfds.load( 'fashion_mnist' , as_supervised=True , with_info=True )
	test_dataset = dataset['test']

	def normalize2( images , labels ):
		images = tf.cast( images , tf.float32 )
		images /= 255
		return images, labels
	test_dataset  =  test_dataset.map( normalize2 )
	test_dataset = test_dataset.cache().batch( current_module.BATCH_SIZE )

	num_train_examples = 60000
	num_test_examples = 10000

	for x in range(20):
		model.fit( train_shard , batch_size=current_module.BATCH_SIZE , steps_per_epoch=num_train_examples/current_module.BATCH_SIZE , epochs=current_module.LOCAL_EPOCHS , callbacks=[CustomLearningRateScheduler()] )

		shuffle_data()

		loss , accuracy = model.evaluate( test_dataset , batch_size=current_module.BATCH_SIZE )
		print( 'Accuracy on test dataset:' , accuracy )