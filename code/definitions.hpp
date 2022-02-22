#pragma once

// network definitions
#define SERVER_IP "127.0.0.1"
#define SERVER_PORT 12345
#define LISTEN_MAX_BACKLOG 10

// federated algorithm definitions
#define MAX_CONNECTED_CLIENTS 10
#define MIN_CLIENTS_PER_EPOCH 3
#define NUM_EPOCHS 10000

#define LOCAL_EPOCHS 1
#define STEPS_PER_EPOCH 2
#define BATCH_SIZE 20

#define MODEL "inception" 
// model:     cnn_model , dnn_model , large_cnn_model ,  alexnet , OverFeat_AlexNet , LeNet_5 , double_inception , inception , residual
// variables:    421642 ,    365066 ,          803240 , 46764746 ,         56906954 ,   61706 ,          4275914 ,    277082 ,   539466

// message variables and their types
#define VARIABLES_NUM 277082 
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
#define ENABLE_LOGGING 1
#define VERDOSE_LOGGING 0
#define DISABLE_MESSAGE_INFO 1