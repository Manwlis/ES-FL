import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # suppress tensorflow warnings

import sys
current_module = sys.modules[__name__]

import tensorflow_datasets as tfds
import tensorflow as tf
physical_devices = tf.config.list_physical_devices('GPU')
tf.config.set_visible_devices(physical_devices[1:], 'GPU')

logical_devices = tf.config.list_logical_devices('GPU')
print("Num GPUs:", len(logical_devices) )

# Helper libraries
import numpy as np


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
train_shard_unshafled = train_dataset.shard( num_shards=3 , index=1 ) # change these parameters to get different shards

train_shard_unshafled = train_shard_unshafled.cache()
train_shard = train_shard_unshafled.shuffle( 20000 )
train_shard = train_shard.batch( 10 )
train_shard = train_shard.prefetch( tf.data.AUTOTUNE )
# train_shard = train_shard.repeat()

train_shard = train_shard.unbatch()

x_numpy = np.asarray(list(map(lambda x: x[0], tfds.as_numpy(train_shard))))
y_numpy = np.asarray(list(map(lambda x: x[1], tfds.as_numpy(train_shard))))


output_file = open('file', 'wb')
x_numpy.tofile( output_file )
output_file.close()

# input_file = open('file', 'rb')
# input = np.fromfile( input_file , dtype=np.float32 )

# input = np.reshape( input , X_numpy.shape )

# print( input.shape )
# print ( np.array_equal( X_numpy , input ) )