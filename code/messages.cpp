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

#include "messages.h"
#include "utils.h"


/**
 * @brief Converts a little endian server to client message
 * to big endian when used in a big endian system.
 * 
 * @param server_to_client_msg, message to be converted
 */
void server_to_client_msg_big_endianess( server_to_client_msg& message )
{
	message.epoch = le32toh( message.epoch ); // little endian to host (big endian) uint32_t
	// flip floats in deltas array
	for( int i = 0  ; i < WEIGHTS_NUM ; i++ )
		message.deltas[i] = reverse_float( message.deltas[i] );
}

/**
 * @brief Converts a big endian server to client message
 * to little endian when used in a little endian system.
 * 
 * @param server_to_client_msg, message to be converted
 */
void server_to_client_msg_little_endianess( server_to_client_msg& message )
{
	message.epoch = be32toh( message.epoch ); // big endian to host (little endian) uint32_t
	// flip floats in deltas array
	for( int i = 0  ; i < WEIGHTS_NUM ; i++ )
		message.deltas[i] = reverse_float( message.deltas[i] );
}

/**
 * @brief Converts a little endian client to server message
 * to big endian when used in a big endian system.
 * 
 * @param server_to_client_msg, message to be converted
 */
void client_to_server_msg_big_endianess( client_to_server_msg& message )
{
	message.epoch = le32toh( message.epoch ); // little endian to host (big endian) uint32_t
	// flip floats in deltas array
	for( int i = 0  ; i < WEIGHTS_NUM ; i++ )
		message.deltas[i] = reverse_float( message.deltas[i] );
	// flip stats floats
	message.accuracy = reverse_float( message.accuracy );
	message.loss = reverse_float( message.loss );
}

/**
 * @brief Converts a big endian client to server message
 * to little endian when used in a little endian system.
 * 
 * @param server_to_client_msg, message to be converted
 */
void client_to_server_msg_little_endianess( client_to_server_msg& message )
{
	message.epoch = be32toh( message.epoch ); // big endian to host (little endian) uint32_t
	// flip floats in deltas array
	for( int i = 0  ; i < WEIGHTS_NUM ; i++ )
		message.deltas[i] = reverse_float( message.deltas[i] );
	// flip stats floats
	message.accuracy = reverse_float( message.accuracy );
	message.loss = reverse_float( message.loss );
}