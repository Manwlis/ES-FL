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

#include "utils.h"  /* reverse_float */

#define WEIGHTS_NUM 1000000
#define WEIGHT_TYPE float
#define SERVER_TO_CLIENT_BUF_SIZE (int) ( sizeof(int) + WEIGHTS_NUM * sizeof(WEIGHT_TYPE) )
#define CLIENT_TO_SERVER_BUF_SIZE (int) ( sizeof(int) + WEIGHTS_NUM * sizeof(WEIGHT_TYPE) + sizeof(float) + sizeof(float) )


struct server_to_client_msg
{
    int epoch;
    float weights[WEIGHTS_NUM];
};

struct client_to_server_msg
{
    int epoch;
    float loss;
    float accuracy;
    float weights[WEIGHTS_NUM];
};

void server_to_client_msg_big_endianess( server_to_client_msg& message );
void server_to_client_msg_little_endianess( server_to_client_msg& message );

void client_to_server_msg_big_endianess( client_to_server_msg& message );
void client_to_server_msg_little_endianess( client_to_server_msg& message );