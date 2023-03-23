#pragma once

/********** CNN's variables **********/
#define VARIABLES_NUM	105866
typedef float t_variable;

/********** Networking and communication parameters **********/
// networking
#define SERVER_IP "127.0.0.1"
#define SERVER_PORT 12345

/********** Device & driver parameters **********/
// device
#define DEVICE_INDEX	0
#define BIN_FILENAME	"binary_container_1.xclbin"
#define KERNEL_NAME		"cnn_accelerator"

// optimizer
#define INITIAL_LR	0.01
#define MOMENTUM	0.9
#define LR_DECAY	0.977331125f

// dataset
#define BATCHES_NUM		1875 // !!! Needs to change in both host.hpp and all_fwp_bp.hpp
#define BATCH_SIZE		32
#define NUM_INPUTS		BATCHES_NUM * BATCH_SIZE

#define INPUT_H 28
#define INPUT_W 28

typedef float t_data;
typedef unsigned int t_label;

// Input files
#define IMAGES_FILENAME "data/images.bin"
#define LABELS_FILENAME "data/labels.bin"

/********** Utilities **********/
// logging
#define ENABLE_LOGGING			1	// enable/disable all messages
#define VERDOSE_LOGGING			0	// shows code line, function and file
#define DISABLE_MESSAGE_INFO	0	// disables messages about communication
#define DISABLE_NON_CRITICAL	0	// disables all messages except warnings/errors

/********** Message structs **********/
struct Server_to_client_msg
{
	enum flag
	{
		normal_op,
		no_pretrained_model,
		final_epoch
	};

	int flags;
	int epoch;
	t_variable variables[VARIABLES_NUM];
};

struct Client_to_server_msg
{
	int epoch;
	float loss;
	float accuracy;
	t_variable variables[VARIABLES_NUM];
};

#define SERVER_TO_CLIENT_BUF_SIZE sizeof(Server_to_client_msg)
#define CLIENT_TO_SERVER_BUF_SIZE sizeof(Client_to_server_msg)
