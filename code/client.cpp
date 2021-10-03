/**
 * @file client.cpp
 * @author Emmanouil Petrakos
 * @brief Client taking part in federated learning.
 * @version 0.1
 * @date 11/07/2021
 * 
 * @copyright None
 * 
 */

#include <iostream>		/* cout */
#include <bit>			/* endian */

#include <assert.h>		/* assert */
#include <stdlib.h>		/* atoi */
#include <unistd.h>		/* close */
#include <string.h>		/* memset */

#include <sys/socket.h>	/* accept, bind, connect, listen, recv, send, getpeername */
#include <netinet/in.h>	/* htonl, htons, ntohl, ntohs */
#include <netdb.h>		/* getnameinfo */

#include "utils.h"		/* error, current_time */
#include "messages.h"	/* msg structs, change message endianess */
#include "fake_data.h"	/* check_fake_server_data, create_fake_client_data */

using namespace std;


#define SERVER_IP "127.0.0.1"
#define SERVER_PORT "12345"


struct sockaddr_in find_server( const string server_name , const string server_port );

int quantize_deltas();

int send_deltas( int socket_fd , client_to_server_msg& send_message );


int main ( int argc , char** argv )
{
	int rv; // return value used to check if functions worked properly

	/**************************************************************************************************/
	/* Set up a socket to communicate with server and connect.                                        */
	/**************************************************************************************************/
	int socket_fd;
	
	// Create socket
	rv = socket_fd = socket( AF_INET , SOCK_STREAM , 0 );
	if ( rv < 0 )
		error( "Client socket creation failed." );

	// find server
	struct sockaddr_in server = find_server( SERVER_IP , SERVER_PORT );

	// Initiate Connection
	cout << CURRENT_TIME << "Initiating connection with server." << endl;

	connect( socket_fd , (struct sockaddr *) &server , sizeof( server ) );
	if ( rv < 0 )
		error( "Connect failed." );
	
	/**************************************************************************************************/
	/* Main loop.                                                                                     */
	/**************************************************************************************************/
	int received_bytes = 0; // counts total received bytes per message
	static server_to_client_msg received_message;
	static client_to_server_msg send_message;

	while ( 1 )
	{
		/**************************************************************************************************/
		/* Wait for global model and read it.                                                             */
		/**************************************************************************************************/
		#if MESSAGE_LOGGING == 1
			cout << CURRENT_TIME << "Waiting for data." << endl;
		#endif
		
		// read socket
		static unsigned char buffer[SERVER_TO_CLIENT_BUF_SIZE];
		rv = recv( socket_fd , buffer , SERVER_TO_CLIENT_BUF_SIZE , 0 );

		/**************************************************************************************************/
		/* Do necesary checks. Connection closed / socket errors / erroneous data size?.                  */
		/**************************************************************************************************/
		// connection closed
		if ( rv == 0 )
		{
			cout << CURRENT_TIME << "Connection Closed" << endl;

			// There's mothing more to do if the connection with server breaks.
			// Close socket and exit. 
			close( socket_fd );
			break;
		}

		// socket errors
		if ( rv < 0 )
		{	
			cout << CURRENT_TIME << "Unexpected error on recv: " << errno << endl;
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

		#if MESSAGE_LOGGING == 1
			cout << CURRENT_TIME << "received bytes: " << rv << "	total: " << received_bytes << "	needed: " << SERVER_TO_CLIENT_BUF_SIZE;
		#endif

		// check if received message is complete, if not wait for the rest of the data
		if ( received_bytes < SERVER_TO_CLIENT_BUF_SIZE )
		{
			#if MESSAGE_LOGGING == 1
				cout << endl;
			#endif

			continue;
		}
		#if MESSAGE_LOGGING == 1
			cout << YELLOW << "	completed" << RESET << endl;
		#endif

		/**************************************************************************************************/
		/* Message is complete, continue with processing it.                                              */
		/**************************************************************************************************/
		cout << CURRENT_TIME << "Received new global model." << endl;

		received_bytes = 0; // reset received bytes counter for use on the next message

		// server uses little endian encoding, need to change received message to host endian
		if constexpr ( std::endian::native == std::endian::big ) // requires c++20, dangerous !!!!
			server_to_client_msg_big_endianess( received_message ); // maybe move this to the server side if needed

		/**************************************************************************************************/
		/* Calculate deltas.                                                                              */
		/**************************************************************************************************/
		cout << RED << "\n			EPOCH    =   " << received_message.epoch << RESET << "\n" << endl;

		memcpy( send_message.deltas , received_message.deltas , WEIGHTS_NUM * sizeof(MESSAGE_DELTAS_TYPE) );
		send_message.accuracy = 0;
		send_message.loss = 0;

		//sleep(10);
		/**************************************************************************************************/
		/* Compress / quantize deltas.                                                                    */
		/**************************************************************************************************/
		// quantize_deltas();

		/**************************************************************************************************/
		/* send local deltas. Blocking in order for tcp to fix communication errors.                      */
		/**************************************************************************************************/
		cout << CURRENT_TIME << "Sending local deltas." << endl;
		// create message
		send_message.epoch = received_message.epoch;

		// send message
		rv = send_deltas( socket_fd , send_message );
		if ( rv < 0 )
			cout << CURRENT_TIME << "Unexpected error on send: " << errno << endl;
	}
}


/**
 * @brief Create an Internet address that can be specified in a call to connect, based on server IP and port.
 * 
 * @param string server's name 
 * @param string server's port 
 * @return sockaddr_in struct containing the server's info
 */
struct sockaddr_in find_server( const string server_name , const string server_port )
{
	struct addrinfo hints;
	memset( &hints , 0 , sizeof(hints) );
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_family = AF_INET;
	hints.ai_protocol = IPPROTO_TCP;
	
	struct addrinfo* server_addr_info;

	int rv = getaddrinfo( &server_name[0] , &server_port[0] , NULL , &server_addr_info );
	if ( rv != 0 )
		error( "getaddrinfo failed." );

	return *( (struct sockaddr_in *) server_addr_info->ai_addr );
}


int quantize_deltas()
{
	return 0;
}


/**
 * @brief Serialize and send local deltas to target socket.
 * 
 * @param int target socket's fd  
 * @param client_to_server_msg* message to be send
 * @return send(2) return value
 */
int send_deltas( int socket_fd , client_to_server_msg& send_message )
{
	// serialize local deltas
	if constexpr ( std::endian::native == std::endian::big ) // requires c++20, dangerous !!!!
		client_to_server_msg_big_endianess( send_message ); // maybe move this to the server side if needed
	
	int rv = send( socket_fd , &send_message , CLIENT_TO_SERVER_BUF_SIZE , 0 ); // na tsekarw an einai blocking h oxi

	return rv;
}