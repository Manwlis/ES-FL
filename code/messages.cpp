/**
 * @file messages.cpp
 * @author Emmanouil Petrakos
 * @brief 
 * @version 0.1
 * @date 18/07/2021
 * 
 * @copyright None
 * 
 */

#include <string.h> /* memcpy */

#include "messages.h"


void serialize_server_to_client_msg(server_to_client_msg* message , unsigned char* buffer )
{
	memcpy( buffer , message , sizeof(server_to_client_msg) );
}

void deserialize_server_to_client_msg(server_to_client_msg* message , unsigned char* buffer )
{
	memcpy( message , buffer , sizeof(server_to_client_msg) );
}

void serialize_client_to_server_msg(client_to_server_msg* message , unsigned char* buffer )
{
	memcpy( buffer , message , sizeof(client_to_server_msg) );
}

void deserialize_client_to_server_msg(client_to_server_msg* message , unsigned char* buffer )
{
	memcpy( message , buffer , sizeof(client_to_server_msg) );
}