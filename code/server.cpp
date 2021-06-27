/*
 * server.cpp
 *
 * Description
 *
 * Created: 21/6/2021
 * Author : Emmanouil Petrakos
 * Developed with VS code on WSL
 */

#include <iostream>		/* << */

#include <assert.h>		/* assert */
#include <stdlib.h>		/* atoi */
#include <unistd.h>		/* close */
#include <string.h>		/* memset */

#include <sys/socket.h>	/* accept, bind, connect, listen, recv, send, getpeername */
//#include <sys/types.h>
#include <netinet/in.h>	/* htonl, htons, ntohl, ntohs */
#include <arpa/inet.h>	/* inet_ntop */
#include <poll.h>		/* poll */
#include <fcntl.h>		/* fcntl */

#include "utils.h"		/* error, current_time */


using namespace std;


#define SERVER_PORT 12345

#define LISTEN_MAX_BACKLOG 5
#define MAX_CONNECTED_CLIENTS 10

#define TRUE  1
#define FALSE 0


int global_model_ready();
void announce_global_model();


int main( int argc , char** argv )
{
	int server_port = SERVER_PORT;
	int rv; // return value used to check if functions worked properly


	/**************************************************************/
	/* Set up a socket to receive incoming connections on         */
	/**************************************************************/
	int listening_socket_fd;
	struct sockaddr_in server_addr;

	// Create socket
	rv = listening_socket_fd = socket( AF_INET , SOCK_STREAM , 0 );
	if ( rv < 0 )
		error( "Server socket creation failed." );

	// Set socket as reusable. New sockets will inherit this state.
	int reuse = 1;
	rv = setsockopt( listening_socket_fd , SOL_SOCKET , SO_REUSEADDR , (const char*) &reuse , sizeof(reuse) );
	if ( rv < 0 )
		error( "Setting server socket fd as reusable failed" );

	// Set socket as non-blocking
	int flags = fcntl( listening_socket_fd , F_GETFL , 0 );
	if ( flags == -1 )
		error( "Failed reading listening socket's flags" );

	flags = flags | O_NONBLOCK;
	rv = fcntl( listening_socket_fd , F_SETFL , flags );
	if ( rv == -1 )
		error( "Failed setting listening socket's flags" );

	// Setup socket structure
	memset( &server_addr , 0 , sizeof(server_addr) );
	server_addr.sin_family = AF_INET;					// IPv4 address family
	server_addr.sin_addr.s_addr = htonl( INADDR_ANY );	// fill with current host IP address
	server_addr.sin_port = htons( server_port );			// convert port to network byte order
	
	// Bind socket
	rv = bind( listening_socket_fd , (const struct sockaddr*) &server_addr , sizeof(server_addr) );
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


	/*************************************************************/
	/* Loop waiting for incoming connects or for incoming data   */
	/* on any of the connected sockets.                          */
	/*************************************************************/
	// Used to check when to announce the new global model
	int connected_clients = 0;
	int working_clients = 0;
	// When results are acceptable, stop training.
	int server_shutdown = FALSE;

	while ( server_shutdown == FALSE )
	{
		// Wait on poll
		cout << current_time() << "	Waiting on poll" << endl;

		rv = poll( polled_fds , num_polled_fds , timeout );

		if ( rv < 0 )
			error( "Poll failed" );

		if ( rv == 0 )
		{
			cout << current_time() << "	Poll timed out" << endl;
			// do time out things
		}

		/*************************************************************/
		/* One or more descriptors are readable. Check them all.     */
		/*************************************************************/
		int size = num_polled_fds; // num_polled_fds can change inside the loop
		int compress_array = FALSE; // used to show there are fds marked for removal from the fd set.

		for ( int i = 0 ; i < size ; i++ )
		{
			// Current descriptor is asleep
			if ( polled_fds[i].revents == 0 )
				continue;
			
			// Get peer ip and port for logging
			struct sockaddr_in peer_addr;
			socklen_t peer_addr_len = sizeof(peer_addr);
			getpeername( polled_fds[i].fd , (struct sockaddr*) &peer_addr , &peer_addr_len );

			string peer_ip = inet_ntoa( peer_addr.sin_addr );

			// Unexpected event
			if ( polled_fds[i].revents != POLLIN )
				cout << current_time() << "	Revent: " << polled_fds[i].revents
					<< " on connention with " << peer_ip
					<< " at port " << ntohs( peer_addr.sin_port ) << endl;
			

			/*************************************************************/
			/* The listening socket fd raised POLLIN event.              */
			/*************************************************************/
			if ( polled_fds[i].fd == listening_socket_fd )
			{
				// there are incoming connection requests
				cout << current_time() << "	New connections" << endl;

				// accept them all
				while ( TRUE )
				{
					struct sockaddr_in client_addr; // just for logging
					socklen_t client_addr_len = sizeof(client_addr);
					memset( &client_addr , 0 , client_addr_len );

					int new_fd = accept( listening_socket_fd , (struct sockaddr*) &client_addr , &client_addr_len );
					
					if ( new_fd < 0 )
					{
						// no more connections
						if ( errno == EWOULDBLOCK )
							break;
							
						// something went wrong
						cout << current_time() << "	Unexpected error on accept: " << new_fd << endl;
						continue;
					}

					// new client
					cout << current_time() << "	New client IP:	" << inet_ntoa( client_addr.sin_addr )
						<< "	Port: " << ntohs( client_addr.sin_port ) << endl;

					// add the new socket in the polled fd set.
					polled_fds[num_polled_fds].fd = new_fd;
					polled_fds[num_polled_fds].events = POLLIN;
					num_polled_fds++;

					connected_clients++;
				}
			}

			/*************************************************************/
			/* Non listening socket fd raised POLLIN event.              */
			/* New incoming data, read them                              */
			/*************************************************************/
			else
			{
				cout << current_time() << "	Fd readable:	IP: " << peer_ip
					<< "	Port: " << ntohs( peer_addr.sin_port ) << endl;

				char* buffer[100];
				rv = recv( polled_fds[i].fd , buffer , sizeof(buffer) , 0 );

				if ( rv < 0 )
				{
					// no more data
					if ( errno == EWOULDBLOCK )
						break;
						
					// something went wrong
					cout << current_time() << "	Unexpected error on recv: " << errno << endl;
						break;
				}

				// check if connection got closed
				if ( rv == 0 )
				{
					cout << "Connection Closed" << endl;

					// close it and mark it for removal from the fd set
					close( polled_fds[i].fd );
					polled_fds[i].fd = -1;
					compress_array = TRUE;

					connected_clients--;
				}
			} /* End of existing connection is readable */
		} /* End of loop through pollable descriptors */


		/*****************************************************************/
		/* If the compress_array flag was turned on, squeeze the array   */
		/* and decrement the number of file descriptors. No need to move */
		/* back the events and revents fields because the events will    */
		/* always be POLLIN , and revents is output.                     */
		/*****************************************************************/
		if ( compress_array )
		{
			compress_array = FALSE;
			for (int i = 0; i < num_polled_fds; i++)
			{
				if ( polled_fds[i].fd == -1 )
				{
					for( int j = i ; j < num_polled_fds - 1 ; j++ )
					{
						polled_fds[j].fd = polled_fds[j+1].fd;
					}
					i--;
					num_polled_fds--;
				}
			}
		}


		if ( global_model_ready() )
		{
			announce_global_model();
		}
	} /* End of server running */
}


int global_model_ready()
{
	return 1;
}

void announce_global_model()
{
	return;
}