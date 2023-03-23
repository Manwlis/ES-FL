import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # suppress tensorflow warnings
import tensorflow as tf
import numpy as np
import tensorflow_datasets as tfds

# import logging
# logging.getLogger('tensorflow').setLevel(logging.ERROR)

from keras.initializers import GlorotUniform


def main():
	##### Set up datasets #####
	batch_size = 32

	dataset, metadata = tfds.load('fashion_mnist', as_supervised=True, with_info=True)
	train_dataset, test_dataset = dataset['train'], dataset['test']
	num_train_examples = metadata.splits['train'].num_examples
	num_test_examples = metadata.splits['test'].num_examples

	def normalize( images , labels ):
		images = tf.cast( images , tf.float32 )
		images /= 255
		return images , labels

	train_dataset = train_dataset.map( normalize )
	test_dataset  = test_dataset.map( normalize )

	train_dataset.cache()
	train_dataset = train_dataset.shuffle( num_train_examples )
	train_dataset = train_dataset.batch( batch_size )
	train_dataset = train_dataset.prefetch( tf.data.AUTOTUNE )


	test_dataset.cache()
	test_dataset = test_dataset.shuffle( num_test_examples )
	test_dataset = test_dataset.batch( batch_size )
	test_dataset = test_dataset.prefetch( tf.data.AUTOTUNE )


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
	
	for epoch in range ( 0 , 20 ):
		print(epoch)
		cnn.fit( train_dataset , batch_size=batch_size , verbose=0 )
		cnn.evaluate( test_dataset , batch_size=batch_size )


if __name__ == "__main__": main()