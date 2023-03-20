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
#define NUM_EPOCHS 10

/********** Utilities **********/
// server output file
#define OUTPUT_FILE "./IO_files/out.bin"

// logging
#define ENABLE_LOGGING 1		// enable/disable all messages
#define VERDOSE_LOGGING 0		// shows code line, function and file
#define DISABLE_MESSAGE_INFO 0	// disables messages about communication
#define DISABLE_NON_CRITICAL 0	// disables all messages except warnings/errors

#define SERVER_TO_CLIENT_BUF_SIZE sizeof(Server_to_client_msg)
#define CLIENT_TO_SERVER_BUF_SIZE sizeof(Client_to_server_msg)

/********** Message structs **********/
struct Server_to_client_msg
{
	// Server_to_client_msg.flag values TODO: maybe make them an exclusive bit each
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
