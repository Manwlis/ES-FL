######################################
# Evaluates a model saved in a file. #
######################################
import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # suppress tensorflow warnings
import tensorflow as tf
import numpy as np
import tensorflow_datasets as tfds

import logging
logging.getLogger('tensorflow').setLevel(logging.ERROR)

from keras.initializers import GlorotUniform

physical_devices = tf.config.list_physical_devices('GPU')
print("Num GPUs:", len(physical_devices))

##### Set up constants #####
batch_size = 32
filename = "variables/model_0.bin"

##### Set up model #####
# create model
cnn = tf.keras.Sequential([
	tf.keras.layers.Conv2D( 16 , ( 3 , 3 ) , padding = 'same', activation = 'relu', input_shape = ( 28 , 28 , 1 ) , kernel_initializer=GlorotUniform( seed = 0 ) ),
	tf.keras.layers.MaxPool2D( ( 2 , 2 ) , strides = 2 ),
	tf.keras.layers.Conv2D( 32 , ( 3 , 3 ) , padding = 'same', activation = 'relu' , kernel_initializer = GlorotUniform( seed = 0 ) ),
	tf.keras.layers.MaxPool2D( ( 2 , 2 ) , strides = 2 ),
	tf.keras.layers.Flatten(),
	tf.keras.layers.Dense( 64 , activation = 'relu' , kernel_initializer = GlorotUniform( seed = 0 ) ),
	tf.keras.layers.Dense( 10 , activation ='softmax' , kernel_initializer = GlorotUniform( seed = 0 ) )
	])

# compile model
optimizer = tf.keras.optimizers.SGD( learning_rate=0.01 )
cnn.compile( optimizer , loss=tf.keras.losses.SparseCategoricalCrossentropy() , metrics=['accuracy'] )

##### Set up dataset #####
dataset, metadata = tfds.load('fashion_mnist', as_supervised=True, with_info=True)
test_dataset = dataset['test']
num_test_examples = metadata.splits['test'].num_examples

def normalize( images , labels ):
	images = tf.cast( images , tf.float32 )
	images /= 255
	return images , labels

test_dataset = test_dataset.map( normalize )
test_dataset = test_dataset.cache().shuffle( num_test_examples , seed = 0 ).batch( batch_size )
test_dataset = test_dataset.prefetch( tf.data.AUTOTUNE ).repeat()

##### Evaluate model #####
file = open( filename , "rb" )
cpp_variables = np.zeros( ( 105866 , ) , dtype=np.float32 )
cpp_variables = np.fromfile( file , dtype=np.float32 )

pos = 0
for tr_var in cnn.trainable_variables:
	temp = tf.convert_to_tensor( np.asarray( cpp_variables[ pos : pos + tr_var.numpy().size ] ).reshape( tr_var.shape ) , np.float32 )
	tr_var.assign( temp )
	
	pos += tr_var.numpy().size

loss , accuracy = cnn.evaluate( test_dataset , verbose = 1 , batch_size=batch_size , steps=num_test_examples/batch_size )
print( 'File Accuracy:' , accuracy )
print( 'File Loss:' , loss )