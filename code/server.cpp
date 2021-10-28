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

#include <stdlib.h>			/* atoi */
#include <unistd.h>			/* close */
#include <string.h>			/* memset */

#include <sys/socket.h>		/* accept, bind, connect, listen, recv, send, getpeername */
#include <netinet/in.h>		/* htonl, htons, ntohl, ntohs */
#include <arpa/inet.h>		/* inet_ntop */
#include <poll.h>			/* poll */
#include <fcntl.h>			/* fcntl */

#include "utils.hpp"		/* error, current_time, colored output */
#include "messages.hpp"		/* msg structs, serialize, deserialize */
#include "fake_data.hpp"	/* check_fake_client_data, create_fake_server_data */

using namespace std;


// network definitions
#define SERVER_PORT 12345
#define LISTEN_MAX_BACKLOG 10

// federated algorithm definitions
#define MAX_CONNECTED_CLIENTS 10
#define EPOCH_LIMIT 50
#define MIN_CLIENTS_PER_EPOCH 2

// systemic definitions
#define FD_NUM MAX_CONNECTED_CLIENTS+1 // +1 for the listening socket


int read_socket( int fd , struct client_info &client_info ,
	int& connected_clients_num , int& working_clients_num , int& completed_clients_num );

void dequintize_received_variables( MSG_VARIABLE_DATATYPE message_variables[VARIABLES_NUM] , float local_variables[VARIABLES_NUM] );

void accumulate_variables( float local_variables[VARIABLES_NUM] , float accumulated_variables[VARIABLES_NUM] );
void create_average_model( float accumulated_variables[VARIABLES_NUM] , int num_models , float global_model[VARIABLES_NUM] );

int next_epoch_ready( int connected_clients_num , int working_clients_num , int completed_clients_num );
int announce_global_model(
	struct pollfd polled_fds[FD_NUM] , struct client_info client_info[FD_NUM] ,
	int connected_clients_num , int working_clients_num , server_to_client_msg& message );


// required info per client in order to organize communications
struct client_info // maybe rename
{
	struct client_to_server_msg* received_message; // holds received data
	int received_bytes; // counts how many data has been received
};


int main( int argc , char** argv )
{
	cout << CURRENT_TIME << "Server Start" << endl;

	int server_port = SERVER_PORT;
	int rv; // return value used to check if functions worked properly

	/**************************************************************************************************/
	/* Set up a socket to receive incoming connections on. TCP.                                       */
	/**************************************************************************************************/
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
	server_addr.sin_port = htons( server_port );		// convert port to network byte order
	
	// Bind socket
	rv = bind( listening_socket_fd , (const struct sockaddr*) &server_addr , sizeof(server_addr) );
	if ( rv < 0 )
		error( "Binding server's socket failed" );

	// Set the listen backlog
	rv = listen( listening_socket_fd , LISTEN_MAX_BACKLOG );
	if ( rv < 0 )
		error( "Listen server socket failed" );
	
	cout << CURRENT_TIME << "Listening port " << server_port << endl;

	/**************************************************************************************************/
	/* Initialize polling structure.                                                                  */
	/**************************************************************************************************/
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

	/**************************************************************************************************/
	/* Loop waiting for incoming connects or for incoming data on any of the connected sockets.       */
	/**************************************************************************************************/
	// global model data. Static variable are by default initialized to zero. No need for explicit initialization.
	static float accumulated_variables[VARIABLES_NUM];
	static server_to_client_msg announcement_msg; // holds global model
	// nessesary info per client
	struct client_info client_info[FD_NUM]; // parallel with polled_fds[]
	// Used to check when to announce the new global model
	int connected_clients_num = 0;
	int working_clients_num = 0;
	int completed_clients_num = 0;
	// When results are acceptable, stop training and shutdown server.
	bool server_shutdown = false;
	// keep track of current epoch
	int current_epoch = 0;

	cout << CURRENT_TIME << "Starting polling" << endl;
	// main loop
	while ( server_shutdown == false )
	{
		rv = poll( polled_fds , num_polled_fds , timeout );

		#if MESSAGE_LOGGING == 1
			cout << CURRENT_TIME << "Poll output:	" << rv << endl;
		#endif

		if ( rv < 0 )
			error( "Poll failed" );

		if ( rv == 0 )
		{
			// do time out things
		}

		/**************************************************************************************************/
		/* One or more descriptors are readable. Check them all and read those who received data.         */
		/**************************************************************************************************/
		int size = num_polled_fds; // num_polled_fds can change inside the loop, see array compression
		// shows if there are fds marked for removal in the fd set
		bool compress_array = false;

		for ( int i = 0 ; i < size ; i++ )
		{

			// Current descriptor is asleep
			if ( polled_fds[i].revents == 0 )
				continue;
			
			// Get peer info for logging
			struct sockaddr_in peer_addr;
			socklen_t peer_addr_len = sizeof(peer_addr);
			getpeername( polled_fds[i].fd , (struct sockaddr*) &peer_addr , &peer_addr_len );

			// Unexpected event
			if ( polled_fds[i].revents != POLLIN )
				cout << CURRENT_TIME << "Revent: " << polled_fds[i].revents << " on connention with "
					<< inet_ntoa( peer_addr.sin_addr ) << " at port " << ntohs( peer_addr.sin_port ) << endl;
			
			/**************************************************************************************************/
			/* The listening socket fd raised POLLIN event. New client.                                       */
			/**************************************************************************************************/
			if ( polled_fds[i].fd == listening_socket_fd )
			{
				// there are incoming connection requests
				cout << CURRENT_TIME << "New connections" << endl;

				// accept them all
				while ( true )
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
						cout << CURRENT_TIME << "Unexpected error on accept: " << new_fd << endl;
						continue;
					}

					// new client
					cout << CURRENT_TIME << "New client IP:	" << inet_ntoa( client_addr.sin_addr )
						<< "	Port: " << ntohs( client_addr.sin_port ) << endl;

					// add the new socket in the polled fd set.
					polled_fds[num_polled_fds].fd = new_fd;
					polled_fds[num_polled_fds].events = POLLIN;

					// init client info
					client_info[num_polled_fds].received_message = (struct client_to_server_msg *) malloc( sizeof(client_to_server_msg) );
					client_info[num_polled_fds].received_bytes = 0;

					// track polled fds num
					num_polled_fds++;
					// track how many clients are connected
					connected_clients_num++;

					// send current global model so new client starts working imidiately
					rv = send( new_fd , &announcement_msg , SERVER_TO_CLIENT_BUF_SIZE , 0 );

					if ( rv < 0 )
					{
						cout << CURRENT_TIME << "Send failed on fd: " << new_fd << "	rv = " << rv << endl;
					}
					// new client working
					else
						working_clients_num++;

				}
			}

			/**************************************************************************************************/
			/* Non listening socket fd raised POLLIN event. New incoming data, read them.                     */
			/**************************************************************************************************/
			// TODO: time this block, thread it if it's a bottleneck
			else
			{
				// Get peer info for logging
				struct sockaddr_in peer_addr;
				socklen_t peer_addr_len = sizeof(peer_addr);
				getpeername( polled_fds[i].fd , (struct sockaddr*) &peer_addr , &peer_addr_len );

				#if MESSAGE_LOGGING == 1
					cout << CURRENT_TIME << "Fd: " << polled_fds[i].fd << "	IP: " << inet_ntoa( peer_addr.sin_addr )
						<< "	Port: " << ntohs( peer_addr.sin_port ) << endl;
				#endif

				rv = read_socket( polled_fds[i].fd , client_info[i] , connected_clients_num , working_clients_num , completed_clients_num );

				// read failed, continue to next fd
				if ( rv == -1 )
					continue;
				// connection closed, mark fd for removal from polling struct
				if ( rv == 0 )
				{
					polled_fds[i].fd = -1;
					compress_array = true;
					continue;
				}

				// check if message is completely received
				if( client_info[i].received_bytes != CLIENT_TO_SERVER_BUF_SIZE )
					// if not, wait for the rest of the data
					continue;

				#if MESSAGE_LOGGING == 0
					cout << CURRENT_TIME << "Fd: " << polled_fds[i].fd << "    IP: " << inet_ntoa( peer_addr.sin_addr )
						<< "    Port: " << ntohs( peer_addr.sin_port ) << "    Local variables received." << endl;
				#endif
				/**************************************************************************************************/
				/* Decompress / dequantize received variables.                                                       */
				/**************************************************************************************************/
				//dequintize_received_variables();

				/**************************************************************************************************/
				/* Increment received variables to global diff.                                                      */
				/**************************************************************************************************/
				
				accumulate_variables( client_info[i].received_message->variables , accumulated_variables );

			} /* End of existing connection is readable */
		} /* End of loop through pollable descriptors */

		/**************************************************************************************************/
		/* Remove fds and client info of closed sockets. If the compress_array flag was turned on,        */
		/* squeeze the array and decrement the number of file descriptors. No need to move back the events*/
		/* and revents fields because the events will always be POLLIN, and revents is output.            */
		/**************************************************************************************************/
		if ( compress_array )
		{
			compress_array = false;
			for (int i = 0; i < num_polled_fds; i++)
			{
				if ( polled_fds[i].fd == -1 )
				{
					for( int j = i ; j < num_polled_fds - 1 ; j++ )
					{
						polled_fds[j].fd = polled_fds[j+1].fd;
						client_info[j].received_bytes = client_info[j+1].received_bytes;
						client_info[j].received_message = client_info[j+1].received_message;
					}
					i--;
					num_polled_fds--;
				}
			}
		}

		/**************************************************************************************************/
		/* Check next epoch and shutdown requirements, create and announce new global model.              */
		/**************************************************************************************************/
		if ( next_epoch_ready( connected_clients_num , working_clients_num , completed_clients_num ) )
		{
			// next epoch
			current_epoch++;

			// check shutdown requirements
			if ( current_epoch == EPOCH_LIMIT )
			{
				server_shutdown = 1;
				current_epoch = -1; // shows to the clients that training ended and they are receiving the final model
			}

			// create new global model
			announcement_msg.epoch = current_epoch;
			create_average_model( accumulated_variables , completed_clients_num , announcement_msg.variables );

			// announce global model
			cout << RED << "\n			EPOCH    =    " << current_epoch << RESET << "\n" << endl;
			working_clients_num = announce_global_model( polled_fds , client_info , connected_clients_num , working_clients_num , announcement_msg );

			// clear previous epoch info
			completed_clients_num = 0;
			for( int i = 0 ; i < VARIABLES_NUM ; i++ )
				accumulated_variables[i] = 0;
		}
	} /* End of server running */

	/**************************************************************************************************/
	/* Shutdown server. Inform the clients that server is shutting down by clossing their connections.*/
	/**************************************************************************************************/
	for ( int i = 0 ; i < FD_NUM ; i++ )
		if ( polled_fds[i].fd > 0 )
			shutdown( polled_fds[i].fd , SHUT_RDWR );
}


/**
 * @brief Reads socket and concats received data to client's message. Updates client synchronization counters.
 * 
 * @param int fd to be read
 * @param client_info& struct containing client's info
 * @param int& connected clients counter
 * @param int& working clients counter
 * @param int& completed clients counter
 * @return 1 on succesfull read, 0 on socket closure, -1 on error
 */
int read_socket( int fd , struct client_info& client_info , int& connected_clients_num , int& working_clients_num , int& completed_clients_num )
{
	/**************************************************************************************************/
	/* Read socket. Message may be incomplete, track size of received data.                           */
	/**************************************************************************************************/
	int bytes_left = CLIENT_TO_SERVER_BUF_SIZE - client_info.received_bytes;

	static unsigned char buffer[CLIENT_TO_SERVER_BUF_SIZE];
	int rv = recv( fd , buffer , bytes_left , 0 );

	/**************************************************************************************************/
	/* Do necesary checks. Connection closed / socket errors / erroneous data size.                   */
	/**************************************************************************************************/
	// connection closed
	if ( rv == 0 )
	{
		cout << CURRENT_TIME << "Connection Closed" << endl;

		// close it and mark it for removal from the fd set
		close( fd );

		// clear client info
		free( client_info.received_message );
		client_info.received_bytes = 0;

		// update counters
		connected_clients_num--;
		working_clients_num--;

		return 0;
	}

	// socket errors
	if ( rv < 0 )
	{
		// something went wrong
		cout << CURRENT_TIME << "Unexpected error on recv: " << errno << endl;
		return -1;
	}

	// erroneous data size
	if ( client_info.received_bytes + rv > CLIENT_TO_SERVER_BUF_SIZE )
	{
		cout << CURRENT_TIME << "Client sended more data than supposed." << endl;

		// it's improbable that any more useful data will be sended after that. Mark client as non working
		working_clients_num--;
		client_info.received_bytes = CLIENT_TO_SERVER_BUF_SIZE+1;

		return -1;
	}

	/**************************************************************************************************/
	/* Collect message.                                                                               */
	/**************************************************************************************************/
	// message may come in many parts. Concate them
	memcpy( (unsigned char*)client_info.received_message + client_info.received_bytes , buffer , rv );

	// track total received bytes
	client_info.received_bytes += rv;

	#if MESSAGE_LOGGING == 1
		cout << CURRENT_TIME << "received bytes: " << rv << "	total: " << client_info.received_bytes << "	needed: " << CLIENT_TO_SERVER_BUF_SIZE;
	#endif
	/**************************************************************************************************/
	/* If message completed, update counters for client synchronization.                              */
	/**************************************************************************************************/
	if( client_info.received_bytes == CLIENT_TO_SERVER_BUF_SIZE )
	{
		working_clients_num--;
		completed_clients_num++;
		
		#if MESSAGE_LOGGING == 1
			cout << YELLOW << "	completed" << RESET;
		#endif
	}
	#if MESSAGE_LOGGING == 1
		cout << endl;
	#endif

	return 1;
}


/**
 * @brief Received variables may be in a smaller data type to reduce comunication.
 * In order to achieve better accuracy, they need to be reverted back to float.
 * Mayde remove this fuction and do the conversion in accumulate_variables() to avoid extra memory use.
 * @param message_variables 
 * @param local_variables 
 */
void dequintize_received_variables( MSG_VARIABLE_DATATYPE message_variables[VARIABLES_NUM] , float local_variables[VARIABLES_NUM] )
{
	for( int i = 0 ; i < VARIABLES_NUM ; i++ )
	{
		local_variables[i] = (float) message_variables[i];
	}
}


/**
 * @brief Adds local variables to cumulative variables
 * 
 * @param float[VARIABLES_NUM] local variables 
 * @param float[VARIABLES_NUM] accumulated variables 
 */
void accumulate_variables( float local_variables[VARIABLES_NUM] , float accumulated_variables[VARIABLES_NUM] )
{
	for( int i = 0 ; i < VARIABLES_NUM ; i++ )
	{
		accumulated_variables[i] += local_variables[i];
	}
}


/**
 * @brief Create average model 
 * 
 * @param float[VARIABLES_NUM] accumulated diference between each local model with global model
 * @param int number of models used
 * @param float[VARIABLES_NUM] global model
 */
void create_average_model( float accumulated_variables[VARIABLES_NUM] , int num_models , float global_model[VARIABLES_NUM] )
{
	for( int i = 0 ; i < VARIABLES_NUM ; i++ )
	{
		float temp_average_variable = accumulated_variables[i] / num_models;
		#if MSG_VARIABLE_MODE == WEIGHTS
			global_model[i] = temp_average_variable;
		#elif MSG_VARIABLE_MODE == DELTAS
			global_model[i] += temp_average_variable;
		#endif
	}
}


/**
 * @brief Checks new epoch conditions.
 * 
 * @param int connected clients counter
 * @param int working clients counter
 * @param int completed clients counter
 * @return 1 if ready for new epoch, 0 if not
 */
int next_epoch_ready( int connected_clients_num , int working_clients_num , int completed_clients_num )
{
	cout << "									connected = " << connected_clients_num 
		<< "	working  = " << working_clients_num << "	completed = " << completed_clients_num << endl;

	// not enough connected client, no point to start a new epoch
	if( connected_clients_num < MIN_CLIENTS_PER_EPOCH )
		return 0;

	// no working client, need for a new epoch
	if( working_clients_num == 0 )
		return 1;

	// all completed
	if( completed_clients_num == connected_clients_num )
		return 1;

	return 0;
	// an exei ginei timeout kai uparxei kapoios teleiwmenos nea epoch?
}


/**
 * @brief Sends new global model to all connected clients.
 * 
 * @param pollfd[] struct array of size FD_NUM, containing the fds of the polled sockets
 * @param client_info[] array of size FD_NUM, showing which clients are working
 * @param int connected clients counter
 * @param int working clients counter
 * @param server_to_client_msg& Struct containing the global model that is going to be announced
 * @return number of clients where the new global model was send
 */
int announce_global_model(
	struct pollfd polled_fds[FD_NUM] , struct client_info client_info[FD_NUM] ,
	int connected_clients_num , int working_clients_num , server_to_client_msg& message )
{
	int rv;

	// first descriptor is the listening socket. Start from second
	for( int i = 1 ; i < connected_clients_num + 1 ; i++ )
	{

		rv = send( polled_fds[i].fd , &message , SERVER_TO_CLIENT_BUF_SIZE , 0 );
		cout << CURRENT_TIME << "Sending Global Model to client: " << i << endl;
		
		// send failed
		if ( rv < 0 )
		{
			cout << CURRENT_TIME << "Send failed on fd: " << polled_fds[i].fd << endl;
			continue;
		}
		// track working fds
		working_clients_num++;

		// shows that this client is working
		client_info[i].received_bytes = 0;
	}

	return working_clients_num;
}