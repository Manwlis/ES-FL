def train_nn( input_weights , output_weights ):

	# input array to model variables
	# for var in model.trainable_variables:
	model.trainable_variables[0].assign( np.asarray( input_weights[0] ).reshape((1,1)) )
	model.trainable_variables[1].assign( np.asarray( input_weights[1] ).reshape((1,)) )

	# train
	history = model.fit(celsius_q, fahrenheit_a, epochs=100, verbose=False)

	# print(model.predict([100.0]))
	# print( "These are the layer variables: {}".format(l0.get_weights()) )

	# trained model variables to output array
	output_weights[0] = model.trainable_variables[0].numpy()
	output_weights[1] = model.trainable_variables[1].numpy()

	return 1;


import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' 

import tensorflow as tf
import numpy as np

celsius_q    = np.array([-40, -10,  0,  8, 15, 22,  38],  dtype=float)
fahrenheit_a = np.array([-40,  14, 32, 46, 59, 72, 100],  dtype=float)

l0 = tf.keras.layers.Dense( units=1 , input_shape=[1] )

model = tf.keras.Sequential([l0])

model.compile( loss='mean_squared_error' , optimizer=tf.keras.optimizers.Adam(0.1) )

print("model compiled")