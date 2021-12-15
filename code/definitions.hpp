#pragma once

// network definitions
#define SERVER_IP "127.0.0.1"
#define SERVER_PORT 12345
#define LISTEN_MAX_BACKLOG 10

// federated algorithm definitions
#define MAX_CONNECTED_CLIENTS 10
#define MIN_CLIENTS_PER_EPOCH 5
#define EPOCH_LIMIT 6000

#define LOCAL_EPOCHS 1
#define STEPS_PER_EPOCH 1
#define BATCH_SIZE 2

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
#define py_script "fashion_mnist_cnn"
#define py_compile_function "compile_nn"
#define py_train_function "train_nn"
#define py_eval_function "evaluate_nn"

// logging
#define MESSAGE_LOGGING 0