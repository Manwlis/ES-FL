/**
 * @file messages.h
 * @author Emmanouil Petrakos
 * @brief 
 * @version 0.1
 * @date 18/07/2021
 * 
 * @copyright None
 * 
 */

#pragma once

#include <string.h> /* memcpy */
#include <endian.h> /* be32toh, le32toh */ 

#include "definitions.hpp"

#include "utils.hpp"  /* reverse_float */

#define SERVER_TO_CLIENT_BUF_SIZE sizeof(server_to_client_msg)
#define CLIENT_TO_SERVER_BUF_SIZE sizeof(client_to_server_msg)


struct server_to_client_msg
{
	// server_to_client_msg.flag values
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

struct client_to_server_msg
{
	int epoch;
	float loss;
	float accuracy;
	float variables[VARIABLES_NUM];
};

void server_to_client_msg_big_endianess( server_to_client_msg& message );
void server_to_client_msg_little_endianess( server_to_client_msg& message );

void client_to_server_msg_big_endianess( client_to_server_msg& message );
void client_to_server_msg_little_endianess( client_to_server_msg& message );