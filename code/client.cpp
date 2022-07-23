/**
 * @file client.cpp
 * @author Emmanouil Petrakos
 * @brief Client taking part in federated learning.
 * 
 * @copyright None
 * 
 */

#include <iostream>			/* cout */
#include <bit>				/* endian */

#include <unistd.h>			/* close */
#include <string.h>			/* memset */
#include <sys/socket.h>		/* accept, bind, connect, listen, recv, send, getpeername */
#include <netdb.h>			/* addrinfo, getaddrinfo */

#include "definitions.hpp"

#include "utils.hpp"		/* error, Timer, Logging */
#include "messages.hpp"		/* msg structs, change message endianess */
#include "fake_data.hpp"	/* check_fake_server_data, create_fake_client_data */
#include "computation_unit.hpp"


struct sockaddr_in find_server( const char* server_name , const char* server_port );

int quantize_variables();
int send_variables( int socket_fd , Client_to_server_msg& send_message );

// Global timer that starts ticking at program start.
Timer g_timer;
Logger g_logger( std::cout );

int main ( int argc , char** argv )
{
	ssize_t rv; // return value used to check if functions worked properly
	// messages can be larger than stack. Static so their memory space is reserved in heap
	static Server_to_client_msg received_message;
	static Client_to_server_msg send_message;
	static unsigned char buffer[SERVER_TO_CLIENT_BUF_SIZE];


	const unsigned long examples_per_global_epoch = BATCH_SIZE * LOCAL_EPOCHS * STEPS_PER_EPOCH;
	unsigned long examples_used = 0;
	/**************************************************************************************************/
	/* Set up a socket to communicate with server and connect.                                        */
	/**************************************************************************************************/
	int socket_fd;
	
	// Create socket
	rv = socket_fd = socket( AF_INET , SOCK_STREAM , 0 );
	if ( rv < 0 )
		Utils::error( "Client socket creation failed." );

	// find server
	struct sockaddr_in server = find_server( SERVER_IP , std::to_string(SERVER_PORT).c_str() );

	// Initiate Connection
	LOGGING( Logger::Level::initialization , "Initiating connection with server." );

	rv = connect( socket_fd , (struct sockaddr*) &server , sizeof( server ) );
	if ( rv < 0 )
		Utils::error( "Connect failed." );

	/**************************************************************************************************/
	/* Set up python environment, neural network and numpy wrappers.                                  */
	/**************************************************************************************************/
	Python_with_TF python_with_TF( &received_message , &send_message , argc , argv );//TODO: rename object to computational unit

	/**************************************************************************************************/
	/* Main loop.                                                                                     */
	/**************************************************************************************************/
	int received_bytes = 0; // counts total received bytes per message
	while ( true )
	{
		/**************************************************************************************************/
		/* Wait for global model and read it.                                                             */		
		/**************************************************************************************************/
		LOGGING( Logger::Level::message_info , "Waiting for data." );
		
		// read socket
		rv = recv( socket_fd , buffer , SERVER_TO_CLIENT_BUF_SIZE , 0 );

		/**************************************************************************************************/
		/* Do necesary checks. Connection closed / socket errors / erroneous data size?.                  */
		/**************************************************************************************************/
		// connection closed
		if ( rv == 0 )
		{	
			LOGGING( Logger::Level::warning , "Connection Closed." );

			// There's mothing more to do if the connection with server broke. Close socket and exit. 
			close( socket_fd );
			break;
		}
		// socket errors. Needs expansion
		else if ( rv < 0 )
		{	
			Utils::error("recv");
			
			LOGGING( Logger::Level::warning , "Unexpected error on recv: " << errno );
			continue;
		}
		// erroneous data size, what do i do?

		/**************************************************************************************************/
		/* Collect message.                                                                               */
		/**************************************************************************************************/
		// message may come in many parts. Concate them
		memcpy( (unsigned char*)&received_message + received_bytes , buffer , rv );
		// track total received bytes
		received_bytes += rv;

		LOGGING( Logger::Level::message_info , 
			"received bytes: " << rv << "	total: " << received_bytes << "	needed: " << SERVER_TO_CLIENT_BUF_SIZE
			<< ( received_bytes == SERVER_TO_CLIENT_BUF_SIZE ? COMPLETED_MSG : "" ) );
		
		// check if received message is complete, if not wait for the rest of the data
		if ( received_bytes < (int)SERVER_TO_CLIENT_BUF_SIZE )
		{
			continue;
		}

		/**************************************************************************************************/
		/* Message is complete, continue with processing it.                                              */
		/**************************************************************************************************/
		LOGGING( Logger::Level::fl_info , "Received new global model." );

		received_bytes = 0; // reset received bytes counter for use on the next message

		// server uses little endian encoding, need to change received message to host endian
		if constexpr ( std::endian::native == std::endian::big ) // requires c++20, dangerous !!!!
			server_to_client_msg_big_endianess( received_message ); // maybe move this to the server side if needed

		if ( received_message.flags == Server_to_client_msg::flag::final_epoch ) // finished training
		{
			LOGGING( Logger::Level::warning , RED << "Received final message." << RESET );
			break;
		}
		else
			LOGGING( Logger::Level::warning , RED << "		GLOBAL EPOCH    =   " << received_message.epoch << RESET );

		/**************************************************************************************************/
		/* Calculate variables.                                                                           */
		/**************************************************************************************************/
		// call python function
		python_with_TF.train();
//TODO:remove this propably, it does not do anything
		examples_used += examples_per_global_epoch;

		if( examples_used == python_with_TF.m_num_examples )
		{
			LOGGING( Logger::Level::warning , "Reshufling. " << examples_used << "	" << python_with_TF.m_num_examples );
			python_with_TF.shuffle_data();
			examples_used = 0;
		}
//TODO:till here

		// calculate deltas
		#if MSG_VARIABLE_MODE == DELTAS
			for( int i = 0 ; i < VARIABLES_NUM ; i++ )
				send_message.variables[i] = send_message.variables[i] - received_message.variables[i];
		#endif
		
		send_message.accuracy = 0;
		send_message.loss = 0;
		
		/**************************************************************************************************/
		/* Compress / quantize variables.                                                                 */
		/**************************************************************************************************/
		// quantize_variables();

		/**************************************************************************************************/
		/* Send local variables. Blocking.                                                                */
		/**************************************************************************************************/
		LOGGING( Logger::Level::fl_info , "Sending local variables.\n" );
		// create message
		send_message.epoch = received_message.epoch;

		// send message
		rv = send_variables( socket_fd , send_message );

		if ( rv < 0 )
		{
			LOGGING( Logger::Level::error , "Unexpected error on send: " << errno );
		}
	}
	/**************************************************************************************************/
	/* Clean up and exit.                                                                             */
	/**************************************************************************************************/
	// destroy python environment
	python_with_TF.~Python_with_TF();

	// close socket properly
	shutdown( socket_fd , SHUT_RDWR );
}


/**
 * @brief Create an Internet address that can be specified in a call to connect, based on server IP and port.
 * 
 * @param char* server's name 
 * @param char* server's port 
 * @return sockaddr_in struct containing the server's info
 */
sockaddr_in find_server( const char* server_name , const char* server_port )
{
	addrinfo hints;
	memset( &hints , 0 , sizeof(hints) );
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_family = AF_INET;
	hints.ai_protocol = IPPROTO_TCP;
	
	addrinfo* server_addr_info;

	int rv = getaddrinfo( server_name , server_port , nullptr , &server_addr_info );
	if ( rv != 0 )
		Utils::error( "getaddrinfo failed." );

	return *( (sockaddr_in *) server_addr_info->ai_addr );
}


// white box for now
int quantize_variables()
{
	return 0;
}


/**
 * @brief Serialize and send local variables to target socket. Blocking
 * 
 * @param int target socket's fd  
 * @param Client_to_server_msg* message to be send
 * @return send(2) return value
 */
int send_variables( int socket_fd , Client_to_server_msg& send_message )
{
	// serialize local variables
	if constexpr ( std::endian::native == std::endian::big ) // requires c++20, dangerous !!!!
		client_to_server_msg_big_endianess( send_message ); // maybe move this to the server side if needed
	
	int rv = send( socket_fd , &send_message , CLIENT_TO_SERVER_BUF_SIZE , 0 );

	LOGGING( Logger::Level::message_info , "sended bytes: " << rv << "	total: " << CLIENT_TO_SERVER_BUF_SIZE << "\n" );

	return rv;
}