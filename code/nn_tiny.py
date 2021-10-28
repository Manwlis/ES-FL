#
def train_nn( input_weights , output_weights ):

	# input array to model variables
	# for var in model.trainable_variables:
	model.trainable_variables[0].assign( np.asarray( input_weights[0] ).reshape( (1,1) ) )
	model.trainable_variables[1].assign( np.asarray( input_weights[1] ).reshape( (1,) ) )

	# train
	history = model.fit( celsius_q , fahrenheit_a , epochs=10 , verbose=False )

	# print(model.predict([100.0]))
	# print( "These are the layer variables: {}".format(l0.get_weights()) )

	# trained model variables to output array
	output_weights[0] = model.trainable_variables[0].numpy()
	output_weights[1] = model.trainable_variables[1].numpy()

	return 1



import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # suppress tensorflow warnings

import tensorflow as tf
import numpy as np
import sys

# create data
celsius_q    = np.empty( 10 , dtype=float )
fahrenheit_a = np.empty( 10 , dtype=float )

offset = int( sys.argv[1] )
start = -40
step = 10

for i in range(10):
	fahrenheit_a[i] = start + i * step + offset
	celsius_q[i] = ( fahrenheit_a[i] - 32 ) / 1.8

print( fahrenheit_a )
print( celsius_q )

# create model
l0 = tf.keras.layers.Dense( units=1 , input_shape=[1] )
model = tf.keras.Sequential( [l0] )
model.compile( loss='mean_squared_error' , optimizer=tf.keras.optimizers.Adam(0.1) )

print("model compiled")