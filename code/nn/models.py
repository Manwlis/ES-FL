import tensorflow as tf

cnn_model = tf.keras.Sequential([
				tf.keras.layers.Conv2D( 32, ( 3 , 3 ) , padding='same', activation=tf.nn.relu, input_shape=( 28 , 28 , 1 ) ),
				tf.keras.layers.MaxPooling2D( ( 2 , 2 ) , strides=2 ),
				tf.keras.layers.Conv2D( 64 , ( 3 , 3 ) , padding='same' , activation=tf.nn.relu ),
				tf.keras.layers.MaxPooling2D( ( 2 , 2 ) , strides=2 ),
				tf.keras.layers.Flatten(),
				tf.keras.layers.Dense( 128 , activation=tf.nn.relu ),
				tf.keras.layers.Dense( 10 , activation=tf.nn.softmax )
			])

dnn_model = tf.keras.Sequential([
				tf.keras.layers.Flatten( input_shape=( 28 , 28 , 1 ) ),
				tf.keras.layers.Dense( 128 , activation=tf.nn.relu ),
				tf.keras.layers.Dense( 1024 , activation=tf.nn.relu ),
				tf.keras.layers.Dense( 128 , activation=tf.nn.relu ),
				tf.keras.layers.Dense( 10 , activation=tf.nn.softmax )
			])

large_cnn_model = tf.keras.Sequential([ # unsure about paddings and BatchNormalization
				tf.keras.layers.Conv2D( 32, ( 3 , 3 ) , padding='same', activation=tf.nn.relu, input_shape=( 28 , 28 , 1 ) ),
				tf.keras.layers.BatchNormalization(),
				tf.keras.layers.Conv2D( 32, ( 3 , 3 ) , padding='same', activation=tf.nn.relu ),
				tf.keras.layers.BatchNormalization(),
				tf.keras.layers.MaxPool2D( ( 2 , 2 ) ),
				tf.keras.layers.Conv2D( 64, ( 3 , 3 ) , padding='same', activation=tf.nn.relu ),
				tf.keras.layers.BatchNormalization(),
				tf.keras.layers.Conv2D( 64, ( 3 , 3 ) , padding='same', activation=tf.nn.relu ),
				tf.keras.layers.BatchNormalization(),
				tf.keras.layers.MaxPool2D( ( 2 , 2 ) ),
				tf.keras.layers.Conv2D( 128, ( 3 , 3 ) , padding='same', activation=tf.nn.relu ),
				tf.keras.layers.BatchNormalization(),
				tf.keras.layers.Conv2D( 128, ( 3 , 3 ) , padding='same', activation=tf.nn.relu ),
				tf.keras.layers.BatchNormalization(),
				tf.keras.layers.MaxPool2D( ( 2 , 2 ) ),
				tf.keras.layers.Flatten(),
				tf.keras.layers.Dense( 382 , activation=tf.nn.relu ),
				tf.keras.layers.Dense( 192 , activation=tf.nn.relu ),
				tf.keras.layers.Dense( 10 , activation=tf.nn.softmax )
			])

alexnet = tf.keras.Sequential([
				tf.keras.layers.Resizing( 224 , 224 , interpolation="bilinear" , input_shape=( 28 , 28 , 1 ) ),

				tf.keras.layers.Conv2D( 96 , 11 , strides=4 , padding='same' ),
				tf.keras.layers.Lambda( tf.nn.local_response_normalization ),
				tf.keras.layers.Activation( 'relu' ),
				tf.keras.layers.MaxPooling2D( 3 , strides=2 ),

				tf.keras.layers.Conv2D( 256 , 5 , strides=4 , padding='same' ),
				tf.keras.layers.Lambda( tf.nn.local_response_normalization ),
				tf.keras.layers.Activation( 'relu' ),
				tf.keras.layers.MaxPooling2D( 3 , strides=2 ),

				tf.keras.layers.Conv2D( 384 , 3 , strides=4 , padding='same' ),
				tf.keras.layers.Activation( 'relu' ),

				tf.keras.layers.Conv2D( 384 , 3 , strides=4 , padding='same' ),
				tf.keras.layers.Activation( 'relu' ),

				tf.keras.layers.Conv2D( 256 , 3 , strides=4 , padding='same' ),
				tf.keras.layers.Activation( 'relu' ),

				tf.keras.layers.Flatten(),

				tf.keras.layers.Dense( 4096 , activation='relu' ),
				tf.keras.layers.Dropout( 0.5 ),

				tf.keras.layers.Dense( 4096 , activation='relu' ),
				tf.keras.layers.Dropout( 0.5 ),

				tf.keras.layers.Dense( 10 , activation='softmax' )
			])


model_dict = { 
	"cnn_model" : cnn_model,
	"dnn_model" : dnn_model,
	"large_cnn_model" : large_cnn_model,
	"alexnet" : alexnet	
	}

def get_model( model_name ):
	return model_dict.get( model_name )