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

#define WEIGHTS_NUM 1000000
#define SERVER_TO_CLIENT_BUF_SIZE (int) ( sizeof(int) + WEIGHTS_NUM * sizeof(float) )
#define CLIENT_TO_SERVER_BUF_SIZE (int) ( sizeof(int) + WEIGHTS_NUM * sizeof(float) + sizeof(float) + sizeof(float) )


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

void serialize_server_to_client_msg(server_to_client_msg* message , unsigned char* buffer );
void deserialize_server_to_client_msg(server_to_client_msg* message , unsigned char* buffer );

void serialize_client_to_server_msg(client_to_server_msg* message , unsigned char* buffer );
void deserialize_client_to_server_msg(client_to_server_msg* message , unsigned char* buffer );