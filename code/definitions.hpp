#pragma once

// network definitions
#define SERVER_IP "127.0.0.1"
#define SERVER_PORT 12345
#define LISTEN_MAX_BACKLOG 10

// federated algorithm definitions
#define MAX_CONNECTED_CLIENTS 10
#define MIN_CLIENTS_PER_EPOCH 3
#define NUM_EPOCHS 1000

#define LOCAL_EPOCHS 1
#define STEPS_PER_EPOCH 4
#define BATCH_SIZE 20

#define LEARNING_RATE_DECAY_FLAG 0
#define LEARNING_RATE_DECAY "0.9995" // Can't pass rationals to python directy. Use string and convert it there

#define MODEL "cnn_model" 
// model:     cnn_model , dnn_model , large_cnn_model , cnn_fedAvg , alexnet , OverFeat_AlexNet , LeNet_5 , double_inception , inception , residual
// variables:    421642 ,    365066 ,          803240 ,    1663370 , 46764746 ,        56906954 ,   61706 ,          4275914 ,    277082 ,   539466

// evaluation definitions
#define NUM_EVALUATIONS 20
#define EVALUATION_INTERVAL (NUM_EPOCHS/NUM_EVALUATIONS)

// message variables and their types
#define VARIABLES_NUM 421642 
#define MSG_VARIABLE_DATATYPE float

//defines the type of the transfered data
#define WEIGHTS 1
#define DELTAS 2
#define MSG_VARIABLE_MODE WEIGHTS

// server output file
#define OUTPUT_FILE "./IO_files/out.bin"

// python modules & functions
#define py_script "fashion_mnist"
#define py_data_function "setup_data"
#define py_shuffle_data_function "shuffle_data"
#define py_compile_function "compile_nn"
#define py_train_function "train_nn"
#define py_eval_function "evaluate_nn"

// logging
#define ENABLE_LOGGING 1		// enable/disable all messages
#define VERDOSE_LOGGING 0		// shows code line, function and file
#define DISABLE_MESSAGE_INFO 1	// disables messages about communication
#define DISABLE_NON_CRITICAL 1	// disables all messages except warnings/errors