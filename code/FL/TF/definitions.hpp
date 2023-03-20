#pragma once

/********** Networking and communication parameters **********/
// networking
#define SERVER_IP "127.0.0.1"
#define SERVER_PORT 12345
#define LISTEN_MAX_BACKLOG 10
#define MAX_CONNECTED_CLIENTS 10

// message variables and their types
#define VARIABLES_NUM 105866 
#define MSG_VARIABLE_DATATYPE float

//defines the type of the transfered data
#define WEIGHTS 1
#define DELTAS 2
#define MSG_VARIABLE_MODE WEIGHTS


/********** Federated training parameters **********/
// server loop
#define MIN_CLIENTS_PER_EPOCH 3
#define NUM_EPOCHS 3

// model
#define MODEL "final_model" 
// model:     cnn_model , dnn_model , large_cnn_model , cnn_fedAvg , alexnet , OverFeat_AlexNet , LeNet_5 , double_inception , inception , residual , final_model
// variables:    421642 ,    365066 ,          803240 ,    1663370 , 46764746 ,        56906954 ,   61706 ,          4275914 ,    277082 ,   539466 ,      105866

// optimizer
#define OPTIMIZER "SGD"	// SGD or Adam
#define LEARNING_RATE_INITIAL "1e-2"
#define MOMENTUM "0.9"
#define LEARNING_RATE_DECAY_FLAG 1
#define LEARNING_RATE_DECAY "0.999235967" // Can't pass rationals to python directy. Use string and convert it there
// base 0.977331125
// root_2 = 0.988600589 , root_4 = 0.994283958 , root_5 = 0.995424547 , root_15 = 0.998472517 , root_30 = 0.999235967 , root_60 = 0.99961791
// pow_2 = 0.955176128
#define LEARNING_RATE_DECAY_PERIOD 1

// local training
#define LOCAL_EPOCHS 1
#define BATCH_SIZE 32
#define STEPS_PER_EPOCH 625

// evaluation
#define NUM_EVALUATIONS 3 // must be =< NUM_EPOCHS
#define EVALUATION_INTERVAL ( NUM_EPOCHS / NUM_EVALUATIONS )

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


/********** Message structs **********/
#define SERVER_TO_CLIENT_BUF_SIZE sizeof(Server_to_client_msg)
#define CLIENT_TO_SERVER_BUF_SIZE sizeof(Client_to_server_msg)

struct Server_to_client_msg
{
	// Server_to_client_msg.flag values
	enum flag
	{
		normal_op,
		no_pretrained_model,
		final_epoch
	};

	int flags;
	int epoch;
	float variables[VARIABLES_NUM];
};

struct Client_to_server_msg
{
	int epoch;
	float loss;
	float accuracy;
	float variables[VARIABLES_NUM];
};