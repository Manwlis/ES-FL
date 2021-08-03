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

#include <iostream>

#include <assert.h>		/* assert */
#include <stdlib.h>		/* atoi */
#include <unistd.h>		/* close */
#include <string.h>		/* memset */

#include <sys/socket.h>	/* accept, bind, connect, listen, recv, send, getpeername */
#include <netinet/in.h>	/* htonl, htons, ntohl, ntohs */
#include <netdb.h>		/* getnameinfo */

#include "utils.h"		/* error, current_time */
#include "messages.h"	/* msg structs, serialize, deserialize */

using namespace std;


#define SERVER_IP "127.0.0.1"
#define SERVER_PORT "12345"


struct sockaddr_in find_server( const string server_name , const string server_port );

int quantize_deltas();
int send_deltas( int socket_fd , client_to_server_msg* send_message );


int main ( int argc , char** argv )
{
	int rv; // return value used to check if functions worked properly
	

	/**************************************************************/
	/* Set up a socket to communicate with server and connect.    */
	/**************************************************************/
	int socket_fd;
	
	// Create socket
	rv = socket_fd = socket( AF_INET , SOCK_STREAM , 0 );
	if ( rv < 0 )
		error( "Client socket creation failed." );

	// find server
	struct sockaddr_in server = find_server( SERVER_IP , SERVER_PORT );

	// Initiate Connection
	cout << CURRENT_TIME << "	Initiating connection with server." << endl;

	connect( socket_fd , (struct sockaddr *) &server , sizeof( server ) );
	if ( rv < 0 )
		error( "Connect failed." );

	
	/*************************************************************/
	/* Main loop.                                                */
	/*************************************************************/
	int counter = 0; // counts total received bytes per message
	static server_to_client_msg received_message; // struct to hold message

	while ( 1 )
	{
		/*************************************************************/
		/* wait for global model and read it. Blocking.              */
		/*************************************************************/
		cout << CURRENT_TIME << "	Waiting for data." << endl;

		// read socket
		static unsigned char buffer[SERVER_TO_CLIENT_BUF_SIZE];
		rv = recv( socket_fd , buffer , SERVER_TO_CLIENT_BUF_SIZE , 0 );


		// something went wrong
		if ( rv < 0 )
		{	
			cout << CURRENT_TIME << "	Unexpected error on recv: " << errno << endl;
			continue;
		}

		// check if connection got closed
		if ( rv == 0 )
		{
			cout << CURRENT_TIME << "	Connection Closed" << endl;

			// There's mothing more to do if the connection with server breaks.
			// Close socket and exit. 
			close( socket_fd );
			break;
		}

		// message may come in many parts. Concate them
		memcpy( &(((unsigned char*)&received_message)[counter]) , buffer , rv );
		counter += rv;

		cout << CURRENT_TIME << "	received bytes: " << rv << "	total: " << counter << "	needed: " << SERVER_TO_CLIENT_BUF_SIZE << endl;

		// check if received message is complete
		if ( counter < SERVER_TO_CLIENT_BUF_SIZE )
			// if not wait for the rest of the data
			continue;
		

		// message is complete, continue

		cout << CURRENT_TIME << "	Received global model." << endl;
		counter = 0; // reset counter for the next message

		// test if expected data received / remove when real data is send
		for( int i = 0 ; i < WEIGHTS_NUM ; i++ )
			if( received_message.weights[i] != 1)
				putchar('!');
		//cout << received_message.weights[WEIGHTS_NUM - 1] << endl;

		/*************************************************************/
		/* calculate deltas.                                         */
		/*************************************************************/
		cout << RED << "\n			EPOCH    =   " << received_message.epoch << RESET << "\n" << endl;

		/*************************************************************/
		/* Compress / quantize deltas.                               */
		/*************************************************************/
		quantize_deltas();

		/*************************************************************/
		/* send local deltas. Non blocking.                          */
		/*************************************************************/
		// create message
		static client_to_server_msg send_message;
		send_message.epoch = received_message.epoch;

		// send message
		rv = send_deltas( socket_fd , &send_message );
		if ( rv < 0 )
			cout << CURRENT_TIME << "	Unexpected error on send: " << errno << endl;
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
 * @return int send(2) return value
 */
int send_deltas( int socket_fd , client_to_server_msg* send_message )
{
	// serialize local deltas
	unsigned char buffer[CLIENT_TO_SERVER_BUF_SIZE];
	serialize_client_to_server_msg( send_message , buffer );

	// send message
	int rv = send( socket_fd , buffer , sizeof(buffer) , MSG_DONTWAIT );

	return rv;
}