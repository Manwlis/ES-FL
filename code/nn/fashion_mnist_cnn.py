# @file fashion_mnist_cnn.py
# @author Emmanouil Petrakos
# @brief 
# 
# @copyright None

#
BATCH_SIZE = 10
STEPS_PER_EPOCH = 3
LOCAL_EPOCHS = 1

# trains the nn using the input variables as the initial trainable variables.
# final trainable variables are saved in and returned through the output_variables.
# If flags == 1 input variables are disregarded and the values in the model are used instead.
def train_nn( input_variables , output_variables , flags ):
	# get variables
	if flags != 1:
		pos = 0
		for tr_var in model.trainable_variables:
			temp = tf.convert_to_tensor( np.asarray( input_variables[ pos : pos + tr_var.numpy().size ] ).reshape( tr_var.shape ) , np.float32 )
			tr_var.assign( temp )
			
			pos += tr_var.numpy().size
	else:
		print( "skipped servers variables" )

	#print( "input			" , input_variables[0] )
	#print( "variable prin fit	" , model.trainable_variables[0].numpy()[0][0] )
	# train
	model.fit( train_dataset , epochs=LOCAL_EPOCHS , steps_per_epoch=STEPS_PER_EPOCH )

	#print( "variable meta fit	" , model.trainable_variables[0].numpy()[0][0] )
	# save variables
	pos = 0
	for tr_var in model.trainable_variables:
		output_variables[ pos : pos + tr_var.numpy().size ] = tr_var.numpy().flatten()
		pos += tr_var.numpy().size

	#print( "output			" , output_variables[0] )
	


def evaluate_nn( input_variables , test_loss, test_accuracy ):
	a, b = model.evaluate( test_dataset , steps=math.ceil( num_test_examples / BATCH_SIZE ) )
	print('Accuracy on test dataset:', b )


# dependecies

import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # suppress tensorflow warnings
import sys

import tensorflow as tf

# Import TensorFlow Datasets
import tensorflow_datasets as tfds

# Helper libraries
import math
import numpy as np


# pre-process data

dataset , metadata = tfds.load( 'fashion_mnist' , as_supervised=True , with_info=True )
test_dataset = dataset['test']

if( len(sys.argv) == 1 ):
	train_dataset = dataset['train']
	print("Standalone mode.")
else:
	split = tfds.even_splits( 'train' , int( sys.argv[1] ) )
	train_dataset = tfds.load( 'fashion_mnist' , as_supervised=True , split=split[ int( sys.argv[2] ) ] )

# print(len(train_dataset))
class_names = metadata.features['label'].names

num_train_examples = tf.data.experimental.cardinality( train_dataset ).numpy()
num_test_examples = tf.data.experimental.cardinality( test_dataset ).numpy()

def normalize( images , labels ):
	images = tf.cast( images , tf.float32 )
	images /= 255
	return images, labels

# The map function applies the normalize function to each element in the train and test datasets
train_dataset =  train_dataset.map( normalize )
test_dataset  =  test_dataset.map( normalize )

train_dataset =  train_dataset.cache()
test_dataset  =  test_dataset.cache()

train_dataset = train_dataset.cache().repeat().shuffle( num_train_examples ).batch( BATCH_SIZE )
test_dataset = test_dataset.cache().batch( BATCH_SIZE )

num_batches = math.ceil( num_train_examples / BATCH_SIZE )


# create model

model = tf.keras.Sequential([
    tf.keras.layers.Conv2D( 32, ( 3 , 3 ) , padding='same', activation=tf.nn.relu, input_shape=( 28 , 28 , 1 ) ),
    tf.keras.layers.MaxPooling2D( ( 2 , 2 ) , strides=2 ),
    tf.keras.layers.Conv2D( 64 , ( 3 , 3 ) , padding='same' , activation=tf.nn.relu ),
    tf.keras.layers.MaxPooling2D( ( 2 , 2 ) , strides=2 ),
    tf.keras.layers.Flatten(),
    tf.keras.layers.Dense( 128 , activation=tf.nn.relu ),
    tf.keras.layers.Dense( 10 , activation=tf.nn.softmax )
])

model.compile( optimizer='adam' , loss=tf.keras.losses.SparseCategoricalCrossentropy() , metrics=['accuracy'] )

if ( len(sys.argv) == 1 ):
	for i in range( 1 ):
		model.fit( train_dataset , epochs=3 , steps_per_epoch=num_batches )
		a, b = model.evaluate( test_dataset , steps=math.ceil( num_test_examples / BATCH_SIZE ) )
		print('Accuracy on test dataset:', b )



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