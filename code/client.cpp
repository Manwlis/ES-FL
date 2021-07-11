/**
 * @file client.cpp
 * @author Emmanouil Petrakos
 * @brief Client taking part in federated learning.
 * @version 4.0
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


using namespace std;

#define SERVER_IP "127.0.0.1"
#define SERVER_PORT "12345"


struct sockaddr_in find_server( const string server_name , const string server_port );


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
	while ( 1 )
	{
		/*************************************************************/
		/* wait for global model and read it. Blocking.              */
		/*************************************************************/
		cout << CURRENT_TIME << "	Waiting for global model." << endl;

		char buffer[100];

		rv = recv( socket_fd , buffer , sizeof(buffer) , 0 );
		
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

		/*************************************************************/
		/* calculate deltas.                                         */
		/*************************************************************/
		cout << RED << "\n			EPOCH    =   " << buffer << RESET << "\n" << endl;
		/*************************************************************/
		/* send local deltas. Non blocking.                          */
		/*************************************************************/
		rv = send( socket_fd , buffer , sizeof(buffer) , MSG_DONTWAIT );
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