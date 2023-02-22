import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # suppress tensorflow warnings

import sys
current_module = sys.modules[__name__]

import tensorflow_datasets as tfds
import tensorflow as tf

import numpy as np


preproccesed_dataset_spec = (
	tf.TensorSpec (
		( 28 , 28 , 1 ) ,
		dtype = tf.dtypes.float32 ,
		name = None
	) ,
	tf.TensorSpec (
		() ,
		dtype = tf.dtypes.int64 ,
		name = None
	)
)
# load pre-processed data
train_dataset = tf.data.experimental.load( "../IO_files/train_dataset" , preproccesed_dataset_spec )
train_shard = train_dataset.shard( num_shards = 1 , index = 0 ) # change these parameters to get different shards

train_shard = train_shard.cache()

x_numpy = np.asarray( list( map( lambda x : x[0] , tfds.as_numpy( train_shard ) ) ) )
y_numpy = np.asarray( list( map( lambda x : x[1] , tfds.as_numpy( train_shard ) ) ) )

print (x_numpy.shape)

x_output_file = open( 'images.bin' , 'wb' )
x_numpy.tofile( x_output_file )
x_output_file.close()

y_output_file = open( 'labels.bin' , 'wb' )
y_numpy.tofile( y_output_file )
y_output_file.close()