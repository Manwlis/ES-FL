import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # suppress tensorflow warnings
import tensorflow as tf
import numpy as np
import tensorflow_datasets as tfds

# import logging
# logging.getLogger('tensorflow').setLevel(logging.ERROR)

from keras.initializers import GlorotUniform


def main():
	# tf.config.set_visible_devices([], 'GPU')
	##### Set up datasets #####
	batch_size = 4

	dataset, metadata = tfds.load('fashion_mnist', as_supervised=True, with_info=True)
	train_dataset, test_dataset = dataset['train'], dataset['test']
	num_train_examples = metadata.splits['train'].num_examples
	num_test_examples = metadata.splits['test'].num_examples

	def normalize( images , labels ):
		images = tf.cast( images , tf.float32 )
		images /= 255
		return images , labels

	train_dataset = train_dataset.map( normalize )
	train_dataset.cache()
	train_dataset = train_dataset.shuffle( num_train_examples )



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
	optimizer = tf.keras.optimizers.SGD( learning_rate=0.01 , momentum=0.9 )
	cnn.compile( optimizer , loss=tf.keras.losses.SparseCategoricalCrossentropy() , metrics=['accuracy'] )

	for batch_size in [ 1,2,3,4,5,6,8,10,12,15,16,20,24,25,30,32,40,48,50,60,75,80,96,100,
						120,125,150,160,200,240,250,300,375,400,480,500,600,625,750,800,1000,
						1200,1250,1500,1875,2000,2400,2500,3000,3750,4000,5000,6000,7500,12000,10000,15000,20000,30000,]:

		train_dataset = train_dataset.batch( batch_size )
		train_dataset = train_dataset.prefetch( tf.data.AUTOTUNE )

		print(batch_size)
		cnn.fit( train_dataset , batch_size=batch_size , verbose=1 )


		# cnn.evaluate( test_dataset , batch_size=batch_size )


if __name__ == "__main__": main()