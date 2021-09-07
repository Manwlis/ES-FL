/**
 * @file server.cpp
 * @author Emmanouil Petrakos
 * @brief Server orchestrating federated learning.
 * @version 0.1
 * @date 11/07/2021
 * 
 * @copyright None
 * 
 */

#include <iostream>		/* << */

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
#include "messages.h"	/* msg structs, serialize, deserialize */


using namespace std;


#define SERVER_PORT 12345

#define LISTEN_MAX_BACKLOG 5
#define MAX_CONNECTED_CLIENTS 10
#define EPOCH_LIMIT 5

#define FD_NUM MAX_CONNECTED_CLIENTS+1 // +1 for the listening socket


int read_socket(
	struct pollfd polled_fds[FD_NUM] , int working_fds[FD_NUM] ,
	int fd_pos , int* compress_array , int* connected_clients_num , int* working_clients_num ,
	client_to_server_msg* received_message );

int dequintize_received_deltas();
int add_deltas_to_global_diff();

int global_model_ready( int connected_clients_num , int working_clients_num );

int create_new_global_model();

int announce_global_model(
	struct pollfd polled_fds[FD_NUM] , int working_fds[FD_NUM] ,
	int connected_clients_num , int working_clients_num , int epoch ,
	server_to_client_msg* message );


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
	

	cout << CURRENT_TIME << "	Listening port " << server_port << endl;


	/**************************************************************/
	/* Initialize polling                                         */
	/**************************************************************/
	// Contains the file descriptors of the sockets that are being polled
	struct pollfd polled_fds[FD_NUM];
	int num_polled_fds = 0;

	// Initialize the pollfd structure
	memset( polled_fds , 0 , sizeof(polled_fds) );

	// Put in the initial listening socket
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
	int connected_clients_num = 0;
	int working_clients_num = 0;
	int working_fds[FD_NUM] = {0};
	// When results are acceptable, stop training.
	int server_shutdown = FALSE;
	// keep track of current epoch
	int current_epoch = 0;

	// main loop
	while ( server_shutdown == FALSE )
	{
		// Wait on poll
		cout << CURRENT_TIME << "	Waiting on poll" << endl;

		rv = poll( polled_fds , num_polled_fds , timeout );

		if ( rv < 0 )
			error( "Poll failed" );

		if ( rv == 0 )
		{
			cout << CURRENT_TIME << "	Poll timed out" << endl;
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
				cout << CURRENT_TIME << "	Revent: " << polled_fds[i].revents
					<< " on connention with " << peer_ip
					<< " at port " << ntohs( peer_addr.sin_port ) << endl;
			

			/*************************************************************/
			/* The listening socket fd raised POLLIN event. New client.  */
			/*************************************************************/
			if ( polled_fds[i].fd == listening_socket_fd )
			{
				// there are incoming connection requests
				cout << CURRENT_TIME << "	New connections" << endl;

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
						cout << CURRENT_TIME << "	Unexpected error on accept: " << new_fd << endl;
						continue;
					}

					// new client
					cout << CURRENT_TIME << "	New client IP:	" << inet_ntoa( client_addr.sin_addr )
						<< "	Port: " << ntohs( client_addr.sin_port ) << endl;

					// add the new socket in the polled fd set.
					polled_fds[num_polled_fds].fd = new_fd;
					polled_fds[num_polled_fds].events = POLLIN;
					num_polled_fds++;

					connected_clients_num++;
				}
			}

			/*************************************************************/
			/* Non listening socket fd raised POLLIN event.              */
			/* New incoming data, read them                              */
			/*************************************************************/
			// TODO: time this block, thread it if it's 
			else
			{
				cout << CURRENT_TIME << "	Fd readable:	IP: " << peer_ip
					<< "	Port: " << ntohs( peer_addr.sin_port ) << endl;
			
				client_to_server_msg received_message;

				rv = read_socket( polled_fds , working_fds , i , &compress_array , &connected_clients_num , &working_clients_num , &received_message );

				// read failed, continue to next fd
				if ( rv == 0 )
					continue;

				/*************************************************************/
				/* Decompress / dequantize received deltas.                  */
				/*************************************************************/	
				dequintize_received_deltas();

				/*************************************************************/
				/* Increment received deltas to global diff.                 */
				/*************************************************************/
				add_deltas_to_global_diff();

			} /* End of existing connection is readable */
		} /* End of loop through pollable descriptors */


		/*****************************************************************/
		/* Remove fds of closed sockets.                                 */
		/* If the compress_array flag was turned on, squeeze the array   */
		/* and decrement the number of file descriptors. No need to move */
		/* back the events and revents fields because the events will    */
		/* always be POLLIN, and revents is output.                      */
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
						working_fds[j] = working_fds[j+1]; // do the same for the work flags
					}
					i--;
					num_polled_fds--;
				}
			}
		}


		/*****************************************************************/
		/* Track current epoch, check shutdown requirements              */
		/* create and announce new global model.                         */
		/*****************************************************************/
		if ( global_model_ready( connected_clients_num , working_clients_num ) )
		{
			// track epoch and shutdown requirements
			if ( current_epoch == EPOCH_LIMIT )
			{
				server_shutdown = TRUE;
				current_epoch = -1; // show to the clients that training ended and they are receiving the final model
			}
			else
				current_epoch++;

			// create global model / fake for now
			server_to_client_msg announcement_msg;
			announcement_msg.epoch = current_epoch;
			for( int i = 0; i < WEIGHTS_NUM ; i++ )
				announcement_msg.weights[i] = 1;

			create_new_global_model();

			// announce global model
			cout << RED << "\n			EPOCH    =    " << current_epoch << RESET << "\n" << endl;

			working_clients_num = announce_global_model( polled_fds , working_fds , connected_clients_num , working_clients_num , current_epoch , &announcement_msg );
		}
	} /* End of server running */

	// close all connections
	for ( int i = 0 ; i < FD_NUM ; i++ )
	{
		if ( polled_fds[i].fd > 0 )
			shutdown( polled_fds[i].fd , SHUT_RDWR );
	}
}



/**
 * @brief Reads socket and marks it for removal in case it got closed.
 * 
 * @param pollfd[] struct array of size FD_NUM, containing the fds of the polled sockets
 * @param int[] array of size FD_NUM, showing which clients are working
 * @param int the position in the array of the fd to be read 
 * @param int* compress array flag
 * @param int* connected clients counter
 * @param int* working clients counter
 * @param client_to_server_msg* struct containing client's local training 
 * @return int 1 on success, 0 on failure
 */
int read_socket(
	struct pollfd polled_fds[FD_NUM] , int working_fds[FD_NUM] ,
	int fd_pos , int* compress_array , int* connected_clients_num , int* working_clients_num ,
	client_to_server_msg* received_message )
{
	/*****************************************************************/
	/* Read socket, do checks & collect message.                     */
	/*****************************************************************/
	// read socket
	unsigned char buffer[CLIENT_TO_SERVER_BUF_SIZE];
	int rv = recv( polled_fds[fd_pos].fd , buffer , CLIENT_TO_SERVER_BUF_SIZE , 0 );

	// check for errors
	if ( rv < 0 )
	{
		// no more data
		if ( errno == EWOULDBLOCK )
			return 0;
			
		// something went wrong
		cout << CURRENT_TIME << "	Unexpected error on recv: " << errno << endl;
		return 0;
	}

	// check if connection got closed
	if ( rv == 0 )
	{
		cout << CURRENT_TIME << "	Connection Closed" << endl;

		// close it and mark it for removal from the fd set
		close( polled_fds[fd_pos].fd );
		polled_fds[fd_pos].fd = -1;
		*compress_array = TRUE;

		(*connected_clients_num)--;
	}

	// need a received_message & received_bytes for every client 
	// maybe create a struct that holds them with polled_fds[], num_polled_fds, working_fds[], working_clients_num, compress_array,


	// message may come in many parts. Concate them
	// track total received bytes

	// check if received message is complete
		// if not wait for the rest of the data

	// message is complete, continue
	// reset received bytes counter for use on the next message


	/*****************************************************************/
	/* Track necessary info for client synchronization.              */
	/*****************************************************************/
	// if a working client sended a message means it finished
	// track warking clients
	if( working_fds[fd_pos] == 1 )
		(*working_clients_num)--;	// if message not completed

	// mark the fd as non working
	working_fds[fd_pos] = 0;	// if message not completed

	// deserialize received data
	deserialize_client_to_server_msg( received_message , buffer );	// if message completed

	return 1;
}


int dequintize_received_deltas()
{
	return 0;
}


int add_deltas_to_global_diff()
{
	return 0;
}


/**
 * @brief Checks new epoch conditions.
 * 
 * @param int connected clients counter
 * @param int working clients counter
 * @return int 1 if new epoch ready, 0 if not
 */
int global_model_ready( int connected_clients_num , int working_clients_num )
{
	cout << "									connected clients = " << connected_clients_num << "	working clients  = " << working_clients_num << endl;
	if ( connected_clients_num - working_clients_num == 3 )
		return 1;

	return 0;
}

int create_new_global_model()
{
	return 0;
}


// maybe remove current epoch, already exists in message
/**
 * @brief Sends new global model to all connected clients.
 * 
 * @param pollfd[] struct array of size FD_NUM, containing the fds of the polled sockets
 * @param int[] array of size FD_NUM, showing which clients are working
 * @param int connected clients counter
 * @param int working clients counter
 * @param int current epoch number
 * @param server_to_client_msg* Struct containing the global model that is going to be announced
 * @return int number of clients where the new global model was send
 */
int announce_global_model(
	struct pollfd polled_fds[FD_NUM] , int working_fds[FD_NUM] ,
	int connected_clients_num , int working_clients_num , int epoch ,
	server_to_client_msg* message )
{
	int rv;

	// serialize data - uncomment if network byte orded need to be respected
	//static unsigned char buffer[SERVER_TO_CLIENT_BUF_SIZE];
	//serialize_server_to_client_msg( message , buffer );


	// first descriptor is the listening socket. Start from second
	for( int i = 1 ; i < connected_clients_num + 1 ; i++ )
	{
		cout << CURRENT_TIME << "	Sending Global Model to client: " << i << endl;

		rv = send( polled_fds[i].fd , message , SERVER_TO_CLIENT_BUF_SIZE , 0 ); // message -> buffer if nbo respected
		
		// send failed
		if ( rv < 0 )
		{
			continue;
		}
		// track working fds
		working_clients_num++;
		working_fds[i] = 1;
	}

	return working_clients_num;
}