import os
# os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # suppress tensorflow warnings
import tensorflow as tf
import numpy as np
import tensorflow_datasets as tfds
import keras

# import logging
# logging.getLogger('tensorflow').setLevel(logging.ERROR)

# tf.config.set_visible_devices([], 'GPU')

from keras.initializers import GlorotUniform

import time
class etimer(keras.callbacks.Callback):
    def __init__ (self): # initialization of the callback
        super(etimer, self).__init__()
    def on_epoch_begin(self,epoch, logs=None):
        self.now= time.time()
    def on_epoch_end(self,epoch, logs=None): 
        later=time.time()
        duration=later-self.now 
        print('	', duration, '	')

def main():
	##### Set up datasets #####
	# batch_size = 30
	dataset, metadata = tfds.load('fashion_mnist', as_supervised=True, with_info=True)
	train_dataset_unbatched , test_dataset = dataset['train'] , dataset['test']

	train_dataset_unbatched = train_dataset_unbatched.shard( num_shards=10 , index=0 )

	num_train_examples = train_dataset_unbatched.reduce( 0 , lambda x , _ : x + 1 ).numpy() #slow
	print( num_train_examples )
	# num_train_examples = metadata.splits['train'].num_examples
	# num_test_examples = metadata.splits['test'].num_examples

	def normalize( images , labels ):
		images = tf.cast( images , tf.float32 )
		images /= 255
		return images , labels

	train_dataset_unbatched = train_dataset_unbatched.map( normalize )
	train_dataset_unbatched.cache()
	train_dataset_unbatched = train_dataset_unbatched.shuffle( num_train_examples )

	# test_dataset  = test_dataset.map( normalize )
	# test_dataset.cache()
	# test_dataset = test_dataset.shuffle( num_test_examples )
	# test_dataset = test_dataset.batch( batch_size )
	# test_dataset = test_dataset.prefetch( tf.data.AUTOTUNE )

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
	# lr_schedule = tf.keras.optimizers.schedules.ExponentialDecay(
	# 	initial_learning_rate=0.01,
	# 	decay_steps=10 ,
	# 	decay_rate=0.998 ,
	# 	staircase=True )
	optimizer = tf.keras.optimizers.SGD( learning_rate=0.01 , momentum=0.9 )
	cnn.compile( optimizer , loss=tf.keras.losses.SparseCategoricalCrossentropy() , metrics=['accuracy'] )

	backup_vars = cnn.get_weights()

	for batch_size in ( 4 , 5 , 6 , 8 , 10 , 12 , 15 , 16 , 20 , 24 , 25 , 30 , 40 , 48 , 50 , 60 , 75 , 100 , 120 , 125 , 150 , 200 ):
		print( batch_size )

		train_dataset = train_dataset_unbatched.batch( batch_size )
		train_dataset = train_dataset.prefetch( tf.data.AUTOTUNE )

		for i in range( 0 , 5 ):
			now= time.time()
			cnn.set_weights( backup_vars )
			cnn.fit( 
				train_dataset , 
				batch_size=batch_size , 
				# callbacks=[etimer()] , 
				# verbose=1 , 
				epochs=1 , 
				steps_per_epoch=num_train_examples/batch_size )
			backup_vars = cnn.get_weights()
			later=time.time()
			duration=later-now 
			print('	', duration, '	')

		time.sleep(10)

		# cnn.evaluate( test_dataset , batch_size=batch_size )


if __name__ == "__main__": main()