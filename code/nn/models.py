import tensorflow as tf
from keras.models import Model
from keras.layers import Input
from keras.layers import Conv2D
from keras.layers import MaxPool2D
from keras.layers import AvgPool2D
from keras.layers import Flatten
from keras.layers import Dense
from keras.layers import BatchNormalization
from keras.layers import Dropout
from keras.layers import Resizing
from keras.layers import ZeroPadding2D
from keras.layers import add
from keras.layers import Activation
from keras.layers import concatenate #TODO: see why WSL2 requires from keras.layers.merge
from keras.initializers import GlorotUniform

initializer=GlorotUniform( seed=0 )

cnn_model = tf.keras.Sequential([
				Conv2D( 32, ( 3 , 3 ) , padding='same' , activation=tf.nn.relu , input_shape=( 28 , 28 , 1 ) , kernel_initializer=initializer ),
				MaxPool2D( ( 2 , 2 ) , strides=2 ),

				Conv2D( 64 , ( 3 , 3 ) , padding='same' , activation=tf.nn.relu , kernel_initializer=initializer ),
				MaxPool2D( ( 2 , 2 ) , strides=2 ),

				Flatten(),
				Dense( 128 , activation=tf.nn.relu , kernel_initializer=initializer ),
				Dense( 10 , activation=tf.nn.softmax , kernel_initializer=initializer )
			])

dnn_model = tf.keras.Sequential([
				Flatten( input_shape=( 28 , 28 , 1 ) ),
				Dense( 128 , activation=tf.nn.relu ),
				Dense( 1024 , activation=tf.nn.relu ),
				Dense( 128 , activation=tf.nn.relu ),
				Dense( 10 , activation=tf.nn.softmax )
			])

 # unsure about paddings and BatchNormalization / from paper
large_cnn_model = tf.keras.Sequential([
				Conv2D( 32, ( 3 , 3 ) , padding='same', activation=tf.nn.relu, input_shape=( 28 , 28 , 1 ) ),
				BatchNormalization(),
				
				Conv2D( 32, ( 3 , 3 ) , padding='same', activation=tf.nn.relu ),
				MaxPool2D( ( 2 , 2 ) ),
				BatchNormalization(),

				Conv2D( 64, ( 3 , 3 ) , padding='same', activation=tf.nn.relu ),
				BatchNormalization(),

				Conv2D( 64, ( 3 , 3 ) , padding='same', activation=tf.nn.relu ),
				MaxPool2D( ( 2 , 2 ) ),
				BatchNormalization(),

				Conv2D( 128, ( 3 , 3 ) , padding='same', activation=tf.nn.relu ),
				BatchNormalization(),

				Conv2D( 128, ( 3 , 3 ) , padding='same', activation=tf.nn.relu ),
				MaxPool2D( ( 2 , 2 ) ),
				BatchNormalization(),

				Flatten(),
				Dense( 382 , activation=tf.nn.relu ),

				Dense( 192 , activation=tf.nn.relu ),

				Dense( 10 , activation=tf.nn.softmax )
			])

# https://arxiv.org/pdf/1602.05629.pdf
cnn_fedAvg = tf.keras.Sequential([
				Conv2D( 32, ( 5 , 5 ) , padding='same' , activation=tf.nn.relu , input_shape=( 28 , 28 , 1 ) ),
				MaxPool2D( ( 2 , 2 ) ),

				Conv2D( 64 , ( 5 , 5 ) , padding='same' , activation=tf.nn.relu ),
				MaxPool2D( ( 2 , 2 ) ),

				Flatten(),
				Dense( 512 , activation=tf.nn.relu ),
				Dense( 10 , activation=tf.nn.softmax )
	])


# https://medium.com/swlh/alexnet-with-tensorflow-46f366559ce8 sketchy?!
AlexNet = tf.keras.Sequential([
				Resizing( 224 , 224 , interpolation="bilinear" , input_shape=( 28 , 28 , 1 ) ),

				Conv2D( 96 , kernel_size=( 11 , 11 ) , strides=( 4 , 4 ) , activation='relu' ),
				MaxPool2D( pool_size=( 3 , 3 ) , strides=( 2 , 2 ) , padding='valid' ),

				Conv2D( 256 , kernel_size=( 5 , 5 ) , padding='same' , activation='relu' ),
				MaxPool2D( pool_size=( 3 , 3 ) , strides=( 2 , 2 ) , padding='valid' ),

				Conv2D( 384 , kernel_size=( 3 , 3 ) , padding='same' , activation='relu' ),
				Conv2D( 384 , kernel_size=( 3 , 3 ) , padding='same' , activation='relu' ),
				Conv2D( 256 , kernel_size=( 3 , 3 ) , padding='same' , activation='relu' ),
				
				MaxPool2D( pool_size=( 3 , 3 ) , strides=( 2 , 2 ) , padding='valid' ),

				Flatten(),
				Dense( 4096 , activation='relu' ),
				Dropout( 0.5 ),

				Dense( 4096 , activation='relu' ),
				Dropout( 0.5 ),

				Dense( 10 , activation='softmax' )
			])

# http://euler.stat.yale.edu/~tba3/stat665/lectures/lec18/notebook18.html
OverFeat_AlexNet = tf.keras.Sequential([
				Conv2D( 96 , kernel_size=( 11 , 11 ) , strides=( 4 , 4 ) , padding='same' , activation='relu' , input_shape=( 28 , 28 , 1 ) ),
				MaxPool2D( pool_size=( 2 , 2 ) , strides=( 2 , 2 ) , padding='valid' ),

				Conv2D( 256 , kernel_size=( 5 , 5 ) , strides=( 1 , 1 ) , padding='same' , activation='relu' ),
				MaxPool2D( pool_size=( 2 , 2 ) , strides=( 2 , 2 ) , padding='valid' ),

				ZeroPadding2D( ( 1 , 1 ) ),
				Conv2D( 512 , kernel_size=( 3 , 3 ) , strides=( 1 , 1 ) , padding='same' , activation='relu' ),

				ZeroPadding2D( ( 1 , 1 ) ),
				Conv2D( 1024 , kernel_size=( 3 , 3 ) , strides=( 1 , 1 ) , padding='same' , activation='relu' ),

				ZeroPadding2D( ( 1 , 1 ) ),
				Conv2D( 1024 , kernel_size=( 3 , 3 ) , strides=( 1 , 1 ) , padding='same' , activation='relu' ),
				MaxPool2D( pool_size=( 2 , 2 ) , strides=( 2 , 2 ) , padding='valid' ),

				Flatten(),
				Dense( 3072 , kernel_initializer='glorot_normal' , activation='relu' ),
				Dropout( 0.5 ),

				Dense( 4096 , kernel_initializer='glorot_normal' , activation='relu' ),
				Dropout( 0.5 ),				

				Dense( 10 , kernel_initializer='glorot_normal' , activation='softmax' )
			])

# https://datahacker.rs/lenet-5-implementation-tensorflow-2-0/ / https://medium.com/mlearning-ai/lenet-and-mnist-handwritten-digit-classification-354f5646c590
LeNet_5 = tf.keras.Sequential([
				Conv2D( 6 , kernel_size=( 5 , 5 ) , strides=( 1 , 1 ) , padding='same' , activation='tanh' , input_shape=( 28 , 28 , 1 ) ),
				AvgPool2D( pool_size=( 2 , 2 ), strides=( 2 , 2 ) , padding='valid' ),

				Conv2D( 16 , kernel_size=( 5 , 5 ) , strides=( 1 , 1 ), padding='valid' , activation='tanh' ),
				AvgPool2D( pool_size=( 2 , 2 ) , strides=( 2 , 2 ) , padding='valid' ),

				Flatten(),
				Dense( 120 , activation='tanh' ),
				Dense( 84 , activation='tanh' ),
				Dense( 10 , activation=tf.nn.softmax )
			])


# function for creating a projected inception module / Inception module with dimensionality reduction
def inception_module( layer_in , f1 , f2_in , f2_out , f3_in , f3_out , f4_out ) :
	# 1x1 conv
	conv1 = Conv2D( f1 , ( 1 , 1 ) , padding='same' , activation='relu' ) ( layer_in )
	# 3x3 conv
	conv3 = Conv2D( f2_in , ( 1 , 1 ) , padding='same' , activation='relu' ) ( layer_in )
	conv3 = Conv2D( f2_out , ( 3 , 3 ) , padding='same' , activation='relu' ) ( conv3 )
	# 5x5 conv
	conv5 = Conv2D( f3_in , ( 1 , 1 ) , padding='same' , activation='relu' ) ( layer_in )
	conv5 = Conv2D( f3_out , ( 5 , 5 ) , padding='same' , activation='relu' ) ( conv5 )
	# 3x3 max pooling
	pool = MaxPool2D( ( 3 , 3 ) , strides=( 1 , 1 ) , padding='same' ) ( layer_in )
	pool = Conv2D( f4_out , ( 1 , 1 ) , padding='same', activation='relu' ) ( pool )
	# concatenate filters, assumes filters/channels last
	layer_out = concatenate( [ conv1 , conv3 , conv5 , pool ] , axis=-1 )
	return layer_out

# https://machinelearningmastery.com/how-to-implement-major-architecture-innovations-for-convolutional-neural-networks/
def double_inception_declaration():
	# define model input
	visible = Input( shape=( 28 , 28 , 1 ) )
	# add inception block 1
	layer = inception_module( visible , 64 , 96 , 128 , 16 , 32 , 32 )
	# add inception block 2
	layer = inception_module( layer , 128 , 128 , 192 , 32 , 96 , 64 )

	layer = Flatten() ( layer )
	output = Dense( 10 , activation=tf.nn.softmax ) ( layer )

	# create model
	return Model(inputs=visible, outputs=output )

double_inception = double_inception_declaration()


def inception_declaration():
	# define model input
	visible = Input( shape=( 28 , 28 , 1 ) )

	layer = Conv2D( 32 , ( 3 , 3 ) , padding='same', activation=tf.nn.relu ) ( visible )
	layer = MaxPool2D( ( 2 , 2 ) ) ( layer )

	layer = inception_module( layer , 64 , 96 , 128 , 16 , 32 , 32 )
	layer = MaxPool2D( ( 3 , 3 ) , 2 ) ( layer )
	layer = Dropout( 0.4 ) ( layer )

	layer = Conv2D( 32 , ( 3 , 3 ) , padding='same', activation=tf.nn.relu ) ( layer )
	layer = MaxPool2D( ( 2 , 2 ) ) ( layer )


	layer = Flatten() ( layer )
	layer = Dense( 128 , activation='relu' ) ( layer )
	layer = Dense( 256 , activation='relu' ) ( layer )

	output = Dense( 10 , activation='softmax' ) ( layer )

	# create model
	return Model(inputs=visible, outputs=output )

inception = inception_declaration()


# function for creating an identity or projection residual module
def residual_module(layer_in, n_filters):
	merge_input = layer_in
	# check if the number of filters needs to be increase, assumes channels last format
	if layer_in.shape[-1] != n_filters:
		merge_input = Conv2D(n_filters, (1,1), padding='same', activation='relu', kernel_initializer='he_normal')(layer_in)
	# conv1
	conv1 = Conv2D(n_filters, (3,3), padding='same', activation='relu', kernel_initializer='he_normal')(layer_in)
	# conv2
	conv2 = Conv2D(n_filters, (3,3), padding='same', activation='linear', kernel_initializer='he_normal')(conv1)
	# add filters, assumes filters/channels last
	layer_out = add([conv2, merge_input])
	# activation function
	layer_out = Activation('relu')(layer_out)
	return layer_out

def residual_model_declaration():
	visible = Input( shape=( 28 , 28 , 1 ) )
	layer = residual_module(visible, 64 )

	layer = Flatten() ( layer )

	layer = Dropout( 0.3 ) ( layer )

	output = Dense( 10 , activation='softmax' ) ( layer )

	return Model( inputs=visible , outputs=output )

residual = residual_model_declaration()

model_dict = { 
	"cnn_model"			: cnn_model,			#    421,642
	"dnn_model"			: dnn_model,			#    365,066
	"large_cnn_model"	: large_cnn_model,		#    803,240
	"cnn_fedAvg"		: cnn_fedAvg,			#  1,663,370

	"AlexNet"			: AlexNet,				# 46,764,746
	"OverFeat_AlexNet"	: OverFeat_AlexNet,		# 56,906,954
	"LeNet_5"			: LeNet_5,				#     61,706

	"double_inception"	: double_inception,		#  4,275,914
	"inception"			: inception,			#    277,082
	"residual"			: residual,				#    539,466
	}

def get_model( model_name ):
	return model_dict.get( model_name )