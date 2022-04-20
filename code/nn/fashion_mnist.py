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

# Helper libraries
import numpy as np

from models import get_model

model = None
train_dataset = None
test_dataset = None
train_shard = None
train_shard_unshafled = None
num_train_examples = 0
num_test_examples = 0

accuracy_list = []

#######################################################################################################################
# Import and pre-process training data.                                                                               #
#######################################################################################################################
# Sets up test dataset. Use all of the evaluation examples.
def setup_test_data():
	global current_module
	global test_dataset
	global num_test_examples
	# Specs of the pre-processed data. Must be specified to load them.
	preproccesed_dataset_spec = (
		tf.TensorSpec(
			(28,28,1) ,
			dtype=tf.dtypes.float32 ,
			name=None
		) ,
		tf.TensorSpec(
			() ,
			dtype=tf.dtypes.int64 ,
			name=None
		)
	)
	# load pre-processed data
	test_dataset = tf.data.experimental.load("./IO_files/test_dataset" , preproccesed_dataset_spec )
	num_test_examples = tf.data.experimental.cardinality( test_dataset ).numpy() # doesn't work on filtered datasets

	# do dataset transformations
	test_dataset = test_dataset.cache().shuffle( num_test_examples ).batch( current_module.BATCH_SIZE )
	test_dataset = test_dataset.prefetch( tf.data.AUTOTUNE ).repeat()
	#test_dataset = test_dataset.cache().batch( current_module.BATCH_SIZE )

	return num_test_examples

# Sets up train dataset. Distributes train examples based on program arguments (distribution mode and number of clients).
def setup_train_data():
	global current_module
	global train_dataset
	global num_train_examples
	global train_shard
	global train_shard_unshafled

	# Specs of the pre-processed data. Must be specified to load them.
	preproccesed_dataset_spec = (
		tf.TensorSpec(
			(28,28,1) ,
			dtype=tf.dtypes.float32 ,
			name=None
		) ,
		tf.TensorSpec(
			() ,
			dtype=tf.dtypes.int64 ,
			name=None
		)
	)
	# load pre-processed data
	train_dataset = tf.data.experimental.load("./IO_files/train_dataset" , preproccesed_dataset_spec )

	# distibute the data
	# standalone mode, used to test nn with all the data locally.
	if( sys.argv[1] == "standalone" ):
		train_shard_unshafled = train_dataset
	#Federated Learning
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
		#TODO: shard the filtered dataset
	else:
		sys.exit( "Specify mode. standalone/IID/nonIID" )
	print( sys.argv[1] , " mode." )

	num_train_examples = train_shard_unshafled.reduce( 0 , lambda x , _ : x + 1 ).numpy() #slow

	# do datashet transformation
	train_shard_unshafled = train_shard_unshafled.cache()
	train_shard = train_shard_unshafled.shuffle( num_train_examples )
	train_shard = train_shard.batch( current_module.BATCH_SIZE )
	train_shard = train_shard.prefetch( tf.data.AUTOTUNE )
	train_shard = train_shard.repeat()
	
# calls the apropriate functions for setting up data.
def setup_data(): # TODO: input what data is needed and do that instead of looking sys.argv here? Program args already pass to python, propably no difference.Maybe remove that to simplify code.
	global num_train_examples
	global num_test_examples

	# Server and standalone execution evaluate the NN. Need test dataset.
	if( sys.argv[0] == "./server" or sys.argv[1] == "standalone" ):
		setup_test_data()

	# Clients and standalone execution  train the NN. Need train dataset.
	if( sys.argv[0] == "./client" or sys.argv[0] == "nn/fashion_mnist.py" ):
		setup_train_data()

	print( "Number of train examples: " , num_train_examples , "	Number of test examples: " , num_test_examples , "\n" )

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

	print( "data shuffled" )

#######################################################################################################################
# Define model architecture and compile model.                                                                        #
#######################################################################################################################
def compile_nn():
	global current_module
	global model

	# Model definition picked from models.py file
	model = get_model( current_module.MODEL )
	# Pick and set up optimizer
	if ( current_module.OPTIMIZER == "Adam" ) :
		optimizer = tf.keras.optimizers.Adam( learning_rate=float(current_module.LEARNING_RATE_INITIAL) )
		print( "Optimizer: Adam\nLearning rate: " + current_module.LEARNING_RATE_INITIAL)
	elif ( current_module.OPTIMIZER == "SGD" ) :
		optimizer = tf.keras.optimizers.SGD( learning_rate=float(current_module.LEARNING_RATE_INITIAL) , momentum=float(current_module.MOMENTUM) )
		print( "Optimizer: SGD\nLearning rate: " + current_module.LEARNING_RATE_INITIAL + "\nMomentum:" , float(current_module.MOMENTUM) )
		if current_module.LEARNING_RATE_DECAY_FLAG :
			print( "Learning rate decay:" , current_module.LEARNING_RATE_DECAY )
			print( "Learning rate decay period:" , current_module.LEARNING_RATE_DECAY_PERIOD )
	print()

	# compile model
	model.compile( optimizer , loss=tf.keras.losses.SparseCategoricalCrossentropy() , metrics=['accuracy'] )

	# model.summary()
	# print("")
	# print("_________________________________________________________________")
	# print( '%-28s' % "Trainable variables" , '%-25s' % "Shape" , "Param #" )
	# print("=================================================================")
	# for tr_var in model.trainable_variables: 
	# 	print( '%-28s' % tr_var.name , '%-25s' %tr_var.shape , tr_var.numpy().size )
	# print("")

#######################################################################################################################
# Learning Rate Schedulers used to decay learning rate per global epoch / participated epoch.                         #
#######################################################################################################################
# Decayes learning rate based on current global epoch
class lr_scheduler_on_global_epoch( tf.keras.callbacks.Callback ):
	def __init__( self , global_epoch ):
		super( lr_scheduler_on_global_epoch , self ).__init__()
		self.global_epoch_completed = global_epoch - 1 # -1 because start at epoch 0, but callback on train begin
		
	def on_train_begin( self , batch , logs=None ) :
		global current_module

		# decay applies every PERIOD epochs
		decay_steps = self.global_epoch_completed // current_module.LEARNING_RATE_DECAY_PERIOD
		# calculate new learning rate
		decayed_lr = float(current_module.LEARNING_RATE_INITIAL) * ( float(current_module.LEARNING_RATE_DECAY) ** decay_steps )
		# Set the value back to the optimizer
		tf.keras.backend.set_value( self.model.optimizer.lr , decayed_lr )

# Decayes learning rate based on number of participated epochs
class lr_scheduler_on_participated_epoch( tf.keras.callbacks.Callback ):
	def __init__( self ):
		super( lr_scheduler_on_participated_epoch , self ).__init__()
		
	def on_train_end( self , batch , logs=None ): # on_train_end to prepare lr for the next epoch
		global current_module

		if int(self.model.optimizer.iterations) % current_module.LEARNING_RATE_DECAY_PERIOD != 0 :
			return

		# Get the current learning rate from model's optimizer.
		lr = float( tf.keras.backend.get_value( self.model.optimizer.lr ) )
		# calculate new learning rate
		decayed_lr = lr * float(current_module.LEARNING_RATE_DECAY)
		# Set the value back to the optimizer
		tf.keras.backend.set_value( self.model.optimizer.lr , decayed_lr )

# Decayes learning rate based on consuming all data
class lr_scheduler_on_exhausted_data( tf.keras.callbacks.Callback ):
	def __init__( self ):
		super( lr_scheduler_on_exhausted_data , self ).__init__()
		
	def on_train_end( self , batch , logs=None ):
		global current_module

		data_used = current_module.BATCH_SIZE * int(self.model.optimizer.iterations)
		data_per_period = current_module.LEARNING_RATE_DECAY_PERIOD * num_train_examples

		if data_used % data_per_period != 0 : # every 1 Session
			return

		# calculate new learning rate
		communication_rounds = self.model.optimizer.iterations / ( current_module.LOCAL_EPOCHS * current_module.STEPS_PER_EPOCH )

		decayed_lr = float(current_module.LEARNING_RATE_INITIAL) * ( float(current_module.LEARNING_RATE_DECAY) ** communication_rounds )
		# Set the value back to the optimizer
		tf.keras.backend.set_value( self.model.optimizer.lr , decayed_lr )

#######################################################################################################################
# Trains the nn using the input variables as the initial trainable variables.                                         #
# Final trainable variables are saved in and returned through the output_variables.                                   #
# If flags == NO_PRETRAINED_MODEL input variables are disregarded and the values in the model are used instead.       #
#######################################################################################################################
def train_nn( input_variables , output_variables , flags , global_epoch ):
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
		# callback_list.append( lr_scheduler_on_global_epoch( global_epoch ) )
		callback_list.append( lr_scheduler_on_participated_epoch() )
		# callback_list.append( lr_scheduler_on_exhausted_data() )

	print( "Learning Rate:" , float( tf.keras.backend.get_value( model.optimizer.lr ) ) )
	
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
def evaluate_nn( input_variables , global_epoch ):
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
	accuracy_list.append( ( global_epoch , accuracy ) )

#######################################################################################################################
# Prints accuracy history.                                                                                            #
#######################################################################################################################
def print_accuracy_history():
	global accuracy_list

	for keys,values in accuracy_list :
		print( keys//1 , values )

#######################################################################################################################
# Standalone mode. Used to test model locally with all the data.                                                      #
#######################################################################################################################
# decayes lr every X number of batches
class lr_scheduler_on_batch( tf.keras.callbacks.Callback ):
	def __init__( self ):
		super(lr_scheduler_on_batch, self).__init__()
		
	def on_batch_begin( self , batch , logs=None ):
		global model
		global current_module
		if int(self.model.optimizer.iterations) % current_module.LEARNING_RATE_DECAY_PERIOD != 0 : # every XXX batches
			return
		if int(self.model.optimizer.iterations) == 0 :
			return
			
		lr = float( tf.keras.backend.get_value( self.model.optimizer.lr ) )
		decayed_lr = lr * float(current_module.LEARNING_RATE_DECAY)
		tf.keras.backend.set_value( self.model.optimizer.lr , decayed_lr )

try: # argv may be empty in case of only testing/ inference, like when embedded by the server
	if ( sys.argv[1] == "standalone" ):
		current_module.BATCH_SIZE = 20
		current_module.LOCAL_EPOCHS = 1
		current_module.MODEL = "cnn_fedAvg"

		current_module.OPTIMIZER = "SGD"
		current_module.LEARNING_RATE_INITIAL = "1e-2"
		current_module.MOMENTUM = 0.9
		current_module.LEARNING_RATE_DECAY_FLAG = 1
		current_module.LEARNING_RATE_DECAY = "0.999"
		current_module.LEARNING_RATE_DECAY_PERIOD = 15

		setup_data()
		compile_nn()

		callback_list=[]
		if current_module.LEARNING_RATE_DECAY_FLAG:
			callback_list.append( lr_scheduler_on_batch() )

		for x in range(2):
			print( "Epoch:" , x+1 )

			model.fit( train_shard , 
				batch_size=current_module.BATCH_SIZE , 
				steps_per_epoch=num_train_examples/current_module.BATCH_SIZE , 
				epochs=current_module.LOCAL_EPOCHS , 
				callbacks=callback_list
			)
			shuffle_data()

			loss , accuracy = model.evaluate( test_dataset , batch_size=current_module.BATCH_SIZE , steps=num_test_examples/current_module.BATCH_SIZE )
			print( 'Accuracy on test dataset:' , accuracy )
except:
	pass # no-op