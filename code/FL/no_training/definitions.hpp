#pragma once

/********** CNN's variables **********/
#define VARIABLES_NUM 105866
typedef float t_variable;

/********** Networking and communication parameters **********/
// networking
#define SERVER_INFO_FILENAME "IO_files/server_info.txt"
#define LISTEN_MAX_BACKLOG 10
#define MAX_CONNECTED_CLIENTS 10

/********** Federated training parameters **********/
// server loop
#define MIN_CLIENTS_PER_EPOCH 1
#define NUM_EPOCHS 10

//defines the type of the transfered data
#define WEIGHTS	1
#define DELTAS	2
#define MSG_VARIABLE_MODE WEIGHTS

/********** Utilities **********/
// server output files
#define TERMINAL_OUTPUT_FILENAME	"IO_files/server_output.txt"
#define MODEL_OUTPUT_FILENAME		"IO_files/global_model_epoch_"
#define MODEL_OUTPUT_FILE_EXT		".bin"

// logging
#define ENABLE_LOGGING			1	// enable/disable all messages
#define VERDOSE_LOGGING			0	// shows code line, function and file
#define DISABLE_MESSAGE_INFO	0	// disables messages about communication
#define DISABLE_NON_CRITICAL	0	// disables all messages except warnings/errors

/********** Message structs **********/
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

#define SERVER_TO_CLIENT_BUF_SIZE sizeof(Server_to_client_msg)
#define CLIENT_TO_SERVER_BUF_SIZE sizeof(Client_to_server_msg)