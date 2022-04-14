#pragma once

/********** Networking and communication parameters **********/
// networking
#define SERVER_IP "127.0.0.1"
#define SERVER_PORT 12345
#define LISTEN_MAX_BACKLOG 10
#define MAX_CONNECTED_CLIENTS 10

// message variables and their types
#define VARIABLES_NUM 421642 
#define MSG_VARIABLE_DATATYPE float

//defines the type of the transfered data
#define WEIGHTS 1
#define DELTAS 2
#define MSG_VARIABLE_MODE WEIGHTS


/********** Federated training parameters **********/
// server loop
#define MIN_CLIENTS_PER_EPOCH 1
#define NUM_EPOCHS 200

// model
#define MODEL "cnn_model" 
// model:     cnn_model , dnn_model , large_cnn_model , cnn_fedAvg , alexnet , OverFeat_AlexNet , LeNet_5 , double_inception , inception , residual
// variables:    421642 ,    365066 ,          803240 ,    1663370 , 46764746 ,        56906954 ,   61706 ,          4275914 ,    277082 ,   539466

// optimizer
#define OPTIMIZER "SGD"	// SGD or Adam
#define LEARNING_RATE_INITIAL "1e-2"
#define MOMENTUM "0.9"
#define LEARNING_RATE_DECAY_FLAG 1
#define LEARNING_RATE_DECAY "0.977331125"//"0.977331125" // Can't pass rationals to python directy. Use string and convert it there
#define LEARNING_RATE_DECAY_PERIOD 1

// local training
#define LOCAL_EPOCHS 1
#define STEPS_PER_EPOCH 300
#define BATCH_SIZE 20

// evaluation
#define NUM_EVALUATIONS 200 // must be =< NUM_EPOCHS
#define EVALUATION_INTERVAL (NUM_EPOCHS/NUM_EVALUATIONS)

// python module & function names
#define py_script "fashion_mnist"
#define py_data_function "setup_data"
#define py_shuffle_data_function "shuffle_data"
#define py_compile_function "compile_nn"
#define py_train_function "train_nn"
#define py_eval_function "evaluate_nn"


/********** Utilities **********/
// server output file
#define OUTPUT_FILE "./IO_files/out.bin"

// logging
#define ENABLE_LOGGING 1		// enable/disable all messages
#define VERDOSE_LOGGING 0		// shows code line, function and file
#define DISABLE_MESSAGE_INFO 1	// disables messages about communication
#define DISABLE_NON_CRITICAL 1	// disables all messages except warnings/errors