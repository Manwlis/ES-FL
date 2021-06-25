/*
 * server.cpp
 *
 * Description
 *
 * Created: 21/6/2021
 * Author : Emmanouil Petrakos
 * Developed with VS code on WSL
 */

#include <iostream>
#include <vector>
#include <string>

#include <assert.h>	/* assert */
#include <stdio.h>	/* printf */
#include <stdlib.h>	/* atoi */
#include <string.h> /* memset */

#include <sys/socket.h>	/* accept, bind, connect, listen, recv, send, getpeername */
//#include <sys/types.h>
#include <netinet/in.h>	/* htonl, htons, ntohl, ntohs */
#include <poll.h>	/* poll */

#include "utils.h"	/* error */


using namespace std;


#define SERVER_PORT 12345

#define LISTEN_MAX_BACKLOG 5
#define MAX_CONNECTED_CLIENTS 10


int main( int argc , char ** argv )
{
	int server_port = SERVER_PORT;
	int rv; // return value used to check if functions worked properly


	/**************************************************************/
	/* Set up a socket to receive incoming connections on         */
	/**************************************************************/
	int listening_socket_fd;
	struct sockaddr_in server , client;

	// Create socket
	rv = listening_socket_fd = socket( AF_INET , SOCK_STREAM , 0 );
	if ( rv < 0 )
		error( "Server socket creation failed." );

	// Set socket as reusable
	int reuse = 1;
	rv = setsockopt( listening_socket_fd , SOL_SOCKET , SO_REUSEADDR , (const char*) &reuse , sizeof(reuse) );
	if ( rv < 0 )
		error( "Setting server socket fd as reusable failed" );

	// Setup socket structure
	memset( &server , 0 , sizeof(server) );
	server.sin_family = AF_INET;					// IPv4 address family
	server.sin_addr.s_addr = htonl( INADDR_ANY );	// fill with current host IP address
	server.sin_port = htons( server_port );			// convert port to network byte order
	
	// Bind socket
	rv = bind( listening_socket_fd , (struct sockaddr *) &server , sizeof(server) );
	if ( rv < 0 )
		error( "Binding server's socket failed" );

	// Set the listen backlog
	rv = listen( listening_socket_fd , LISTEN_MAX_BACKLOG );
	if ( rv < 0 )
		error( "Listen server socket failed" );
	

	cout << current_time() << "	Listening port " << server_port << endl;


	/**************************************************************/
	/* Initialize polling                                         */
	/**************************************************************/
	// Contains the file descriptors of the sockets that are being polled
	struct pollfd polled_fds[MAX_CONNECTED_CLIENTS];
	int num_polled_fds = 0;

	// Initialize the pollfd structure
	memset( polled_fds , 0 , sizeof(polled_fds) );

	// Set up the initial listening socket
	polled_fds[0].fd = listening_socket_fd;
	polled_fds[0].events = POLLIN;
	num_polled_fds++;

	//Initialize the timeout to 1 minute. Timeout value is based on milliseconds. */
	int timeout = 1 * 60 * 1000;

	int server_shutdown = 0;


	/*************************************************************/
	/* Loop waiting for incoming connects or for incoming data   */
	/* on any of the connected sockets                           */
	/*************************************************************/
	while( server_shutdown == 0 )
	{
		// Wait on poll
		cout << current_time() << "	Waiting on poll" << endl;
		rv = poll( polled_fds , num_polled_fds , timeout );

		if( rv < 0 )
			error( "Poll failed" );

		if( rv == 0 ){
			cout << current_time() << "	Poll timed out" << endl;
			// do time out things
		}

		// One or more descriptors are readable. Check them all
		int size = num_polled_fds; // num_polled_fds can change inside the loop
		for( int i = 0 ; i < size ; i++ )
		{
			// Current descriptor is asleep
			if( polled_fds[i].revents == 0 )
				continue;
			
			// Unexpected event
			if( polled_fds[i].revents != POLLIN )
			{
				struct sockaddr_in peer_addr;
				socklen_t peer_addr_len = sizeof(peer_addr);
				getpeername( polled_fds[i].fd , (struct sockaddr*) &peer_addr , &peer_addr_len );

				cout << current_time() << "	Revent: " << polled_fds[i].revents
					<< " on connention with " << ntohl(peer_addr.sin_addr.s_addr)
					<< " at port " << ntohs( peer_addr.sin_port ) << endl;
			}	// TODO: check functionality

			// polled fd raised POLLIN event
		}
	}
}