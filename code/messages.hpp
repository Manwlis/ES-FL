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

#include "utils.hpp"  /* reverse_float */

#define VARIABLES_NUM 2
#define MSG_VARIABLE_DATATYPE float

//defines the type of the transfered data
#define WEIGHTS 1
#define DELTAS 2
#define MSG_VARIABLE_MODE DELTAS

#define SERVER_TO_CLIENT_BUF_SIZE (int) ( sizeof(int) + VARIABLES_NUM * sizeof(MSG_VARIABLE_DATATYPE) )
#define CLIENT_TO_SERVER_BUF_SIZE (int) ( sizeof(int) + VARIABLES_NUM * sizeof(MSG_VARIABLE_DATATYPE) + sizeof(float) + sizeof(float) )


struct server_to_client_msg
{
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