import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # suppress tensorflow warnings
import tensorflow as tf
import tensorflow_datasets as tfds

#data import
dataset , metadata = tfds.load( 'fashion_mnist' , data_dir="~/tensorflow_datasets/" , as_supervised=True , with_info=True )

# pre-process data
# The map function applies the normalize function to each element in the train and test datasets
def normalize( images , labels ):
	images = tf.cast( images , tf.float32 )
	images /= 255
	return images, labels

dataset['test'] = dataset['test'].map( normalize , num_parallel_calls=tf.data.AUTOTUNE , deterministic=True )
dataset['train'] = dataset['train'].map( normalize , num_parallel_calls=tf.data.AUTOTUNE , deterministic=True )

# save the dataset
tf.data.experimental.save( dataset['test'] ,  "./IO_files/test_dataset" )
tf.data.experimental.save( dataset['train'] ,  "./IO_files/train_dataset" )

# assert it saved correctly
# load the dataset
loaded_test_dataset = tf.data.experimental.load(  "./IO_files/test_dataset" , dataset['test'].element_spec )
loaded_train_dataset = tf.data.experimental.load(  "./IO_files/train_dataset" , dataset['train'].element_spec )

# get an example from before and after save/ load
test_example = list( dataset['test'].as_numpy_iterator() )[0][0][0]
train_example = list( dataset['train'].as_numpy_iterator() )[0][0][0]
loaded_test_example = list( loaded_test_dataset.as_numpy_iterator() )[0][0][0]
loaded_train_example = list( loaded_train_dataset.as_numpy_iterator() )[0][0][0]

assert( test_example.all() == loaded_test_example.all() )
assert( train_example.all() == loaded_train_example.all() )
print( "Data preproccessing and saving completed." )