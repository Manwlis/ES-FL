/**
 * @file server.cpp
 * @author Emmanouil Petrakos
 * @brief Server orchestrating federated learning.
 * 
 * @copyright None
 * 
 */

#include <iostream>			/* << */
#include <fstream>			/* ifstream, ofstream */

#include <stdlib.h>			/* atoi */
#include <unistd.h>			/* close */
#include <string.h>			/* memset */

#include <sys/socket.h>		/* accept, bind, connect, listen, recv, send, getpeername, shutdown */
#include <netinet/in.h>		/* htonl, htons, ntohl, ntohs */
#include <arpa/inet.h>		/* inet_ntoa */
#include <poll.h>			/* poll */
#include <fcntl.h>			/* fcntl */

#include "definitions.hpp"

#include "utils.hpp"		/* error, current_time, colored output */
#include "messages.hpp"		/* msg structs, serialize, deserialize */
#include "fake_data.hpp"	/* check_fake_client_data, create_fake_server_data */

#include <netinet/tcp.h>


// systemic definitions
#define FD_NUM MAX_CONNECTED_CLIENTS+1 // +1 for the listening socket


int read_socket( int fd , struct polled_fds_info &polled_fds_info , int bytes_to_read );

void dequintize_received_variables( MSG_VARIABLE_DATATYPE message_variables[VARIABLES_NUM] , float local_variables[VARIABLES_NUM] );

void accumulate_variables( float local_variables[VARIABLES_NUM] , float accumulated_variables[VARIABLES_NUM] );
void create_average_model( float accumulated_variables[VARIABLES_NUM] , int num_models , float global_model[VARIABLES_NUM] );

int next_epoch_ready( int connected_clients_num , int working_clients_num , int completed_clients_num );
int announce_global_model(
	struct pollfd polled_fds[FD_NUM] , struct polled_fds_info polled_fds_info[FD_NUM] ,
	int connected_clients_num , int working_clients_num , server_to_client_msg& message );


// required info per client in order to organize communications
struct polled_fds_info // maybe rename
{
	struct client_to_server_msg* received_message; // holds received data
	int received_bytes; // counts how many data has been received this epoch
	int sended_bytes; // counts how many data has been send this epoch
};


int main( int argc , char** argv )
{
	std::cout << CURRENT_TIME << "Server Start" << std::endl;
	int rv; // return value used to check if functions worked properly
	
	// global model data. Static variable are by default initialized to zero. No need for explicit initialization.
	static float accumulated_variables[VARIABLES_NUM];
	static server_to_client_msg announcement_msg; // holds global model

	/**************************************************************************************************/
	/* Check if pretrained model file exists and set it up.                                           */
	/**************************************************************************************************/
	bool pretrained_model_flag = false;
	// pretrained model exists
	if ( argc == 2 )
	{
		std::ifstream pretrained_model_file( argv[1] , std::ifstream::in | std::ifstream::binary );
		if ( !pretrained_model_file.is_open() )
			error( "Failed to open pretrained model file" );

		// load model
		pretrained_model_file.read( reinterpret_cast<char*>(announcement_msg.variables) , VARIABLES_NUM * sizeof(MSG_VARIABLE_DATATYPE) );
		if ( !pretrained_model_file )
			error( "Failed to read requested number of data" );

		std::cout << CURRENT_TIME << "Loaded pretrained model" << std::endl;

		pretrained_model_file.close();
		pretrained_model_flag = true;
	}
	// check if clients should consider pretrained model
	if ( pretrained_model_flag == false )
		// shows to the clients that sended variables are random and they should consider their own initial values
		announcement_msg.flags = NO_PRETRAINED_MODEL;

	/**************************************************************************************************/
	/* Set up a socket to receive incoming connections on. TCP.                                       */
	/**************************************************************************************************/
	int server_port = SERVER_PORT;

	int listening_socket_fd;
	struct sockaddr_in server_addr;

	// Create socket as TCP & non blocking
	rv = listening_socket_fd = socket( AF_INET , SOCK_STREAM | SOCK_NONBLOCK , 0 );
	if ( rv < 0 )
		error( "Server socket creation failed." );

	// Set socket as reusable. New sockets will inherit this state.
	int reuse = 1;
	rv = setsockopt( listening_socket_fd , SOL_SOCKET , SO_REUSEADDR , (const char*) &reuse , sizeof(reuse) );
	if ( rv < 0 )
		error( "Setting server socket fd as reusable failed" );

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
	
	std::cout << CURRENT_TIME << "Listening port " << server_port << std::endl;

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
	// nessesary info per client
	struct polled_fds_info polled_fds_info[FD_NUM]; // parallel with polled_fds[]
	// Used to check when to announce the new global model
	int connected_clients_num = 0;
	int working_clients_num = 0;
	int completed_clients_num = 0;
	// When results are acceptable, stop training and shutdown server.
	bool server_shutdown = false;
	// keep track of current epoch
	int current_epoch = 0;

	std::cout << CURRENT_TIME << "Starting polling" << std::endl;
	// main loop
	while ( server_shutdown == false )
	{
		rv = poll( polled_fds , num_polled_fds , timeout );

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

			/**************************************************************************************************/
			/* The listening socket fd raised POLLIN event. New client.                                       */
			/**************************************************************************************************/
			if ( polled_fds[i].fd == listening_socket_fd )
			{
				// there are incoming connection requests
				std::cout << CURRENT_TIME << "New connections" << std::endl;

				// accept them all
				while ( true )
				{ // TODO: Move the following code to a function accept_connection()
				  // input: listening_socket_fd, polled_fds_info, 
				  // return: -1 on failure, 0 if there's no connection to accept, 1 on success
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
						std::cout << CURRENT_TIME << "Unexpected error on accept: " << new_fd << std::endl;
						continue;
					}
					// set new socket as non blocking
					if ( fcntl( new_fd , F_SETFL , fcntl( new_fd , F_GETFL ) | O_NONBLOCK ) < 0 )
					{
						std::cout << CURRENT_TIME << "Failed setting new socket as non blocking. Closing it." << std::endl;
						close( new_fd );
						continue;
					}

					// new client
					std::cout << CURRENT_TIME
						<< "New client IP:	" << inet_ntoa( client_addr.sin_addr )
						<< "	Port: " << ntohs( client_addr.sin_port )
						<< std::endl;

					// add the new socket in the polled fd set.
					polled_fds[num_polled_fds].fd = new_fd;
					// in order to send the current global model, set the new model with pollout events enabled.
					polled_fds[num_polled_fds].events = POLLIN | POLLOUT | POLLRDHUP | POLLERR | POLLNVAL;

					// init client info
					polled_fds_info[num_polled_fds].received_message = (struct client_to_server_msg *) malloc( sizeof(client_to_server_msg) );
					polled_fds_info[num_polled_fds].received_bytes = 0;
					polled_fds_info[num_polled_fds].sended_bytes = 0;
// till here and put ifs on the trackings
					// track polled fds num
					num_polled_fds++;
					// track how many clients are connected
					connected_clients_num++;
				}
			}
			/**************************************************************************************************/
			/* Non listening socket fd raised Unexpected event.                                               */
			/**************************************************************************************************/
			else if ( polled_fds[i].revents & ( POLLNVAL|POLLERR|POLLHUP ) )
			{
				std::cout << CURRENT_TIME
					<< "Revent: " << polled_fds[i].revents
					<< " on connention with " << inet_ntoa( peer_addr.sin_addr )
					<< " at port " << ntohs( peer_addr.sin_port )
					<< std::endl;

				// error on socket, kill connection
				std::cout << CURRENT_TIME << "Connection Closed unexpectedly." << std::endl;

				// // close it and mark it for removal from the fd set
				close( polled_fds[i].fd );

				// clear client info
				free( polled_fds_info[i].received_message );
				polled_fds_info[i].received_bytes = 0;
				polled_fds_info[i].sended_bytes = 0;

				// update counters
				connected_clients_num--;
				
				if ( polled_fds_info[i].received_bytes != CLIENT_TO_SERVER_BUF_SIZE &&  polled_fds_info[i].sended_bytes == SERVER_TO_CLIENT_BUF_SIZE )
					working_clients_num--;
				
				polled_fds[i].fd = -1;
				compress_array = true;
				continue;
			}
			/**************************************************************************************************/
			/* Non listening socket fd raised POLLIN event. New incoming data, read them.                     */
			/**************************************************************************************************/
			else if ( polled_fds[i].revents & POLLIN )
			{
				#if MESSAGE_LOGGING == 1
					std::cout << CURRENT_TIME  
						<< "Read event on Fd: " << polled_fds[i].fd 
						<< "	IP: " << inet_ntoa( peer_addr.sin_addr )
						<< "	Port: " << ntohs( peer_addr.sin_port ) 
						<< std::endl;
				#endif

				int bytes_to_read = CLIENT_TO_SERVER_BUF_SIZE - polled_fds_info[i].received_bytes;
				rv = read_socket( polled_fds[i].fd , polled_fds_info[i] , bytes_to_read );

				// read failed, continue to next fd
				if ( rv == -1 )
					continue;
				// connection closed, mark fd for removal from polling struct
				else if ( rv == 0 )
				{
					// update counters
					connected_clients_num--;
					if ( bytes_to_read != 0 ) // if server wasn't expecting any data, client was not working
						working_clients_num--; // decrement only if client was working
					
					// mark fd for removal
					polled_fds[i].fd = -1;
					compress_array = true;
					continue;
				}
				// check if message is completely received
				if( polled_fds_info[i].received_bytes != CLIENT_TO_SERVER_BUF_SIZE )
					// if not, wait for the rest of the data
					continue;

				// finished working
				working_clients_num--;
				completed_clients_num++;


				#if MESSAGE_LOGGING == 0
					std::cout << CURRENT_TIME
					<< "Fd: " << polled_fds[i].fd
					<< "    IP: " << inet_ntoa( peer_addr.sin_addr )
					<< "    Port: " << ntohs( peer_addr.sin_port )
					<< "    Local variables received." << std::endl;
				#endif

				/**************************************************************************************************/
				/* Decompress / dequantize received variables.                                                    */
				/**************************************************************************************************/
				//dequintize_received_variables();

				/**************************************************************************************************/
				/* Increment received variables to global diff.                                                   */
				/**************************************************************************************************/
				accumulate_variables( polled_fds_info[i].received_message->variables , accumulated_variables );
			} 
			/**************************************************************************************************/
			/* Non listening socket fd raised POLLOUT event. Can write data.                                  */
			/**************************************************************************************************/ // TODO: Move this to a function
			else if ( polled_fds[i].revents & POLLOUT )
			{
				int remaining_bytes = SERVER_TO_CLIENT_BUF_SIZE - polled_fds_info[i].sended_bytes;
				#if MESSAGE_LOGGING == 1
					std::cout << CURRENT_TIME  
						<< "Send event on Fd: " << polled_fds[i].fd 
						<< "	IP: " << inet_ntoa( peer_addr.sin_addr )
						<< "	Port: " << ntohs( peer_addr.sin_port ) 
						<< "	Remaining bytes: " << remaining_bytes
						<< "	Sended bytes: " << polled_fds_info[i].sended_bytes
						<< std::endl;
				#endif

				// send remaining bytes
				rv = send( polled_fds[i].fd , (unsigned char*)&announcement_msg + polled_fds_info[i].sended_bytes , remaining_bytes , MSG_DONTWAIT );

				if( rv < 0 )
					error( "send failed" );

				// track total sended bytes
				polled_fds_info[i].sended_bytes += rv;

				#if MESSAGE_LOGGING == 1
					std::cout << CURRENT_TIME
						<< "sended bytes: " << rv
						<< "	total: " << polled_fds_info[i].sended_bytes
						<< "	needed: " << SERVER_TO_CLIENT_BUF_SIZE;
				#endif

				// completed the message
				if ( polled_fds_info[i].sended_bytes == SERVER_TO_CLIENT_BUF_SIZE )
				{
					// no need to write to the socket fd anymore
					polled_fds[i].events = POLLIN | POLLRDHUP | POLLERR | POLLNVAL;
					// reset received bytes to be able to send the next global model.
					polled_fds_info[i].received_bytes = 0;
					// the client has enough data to start working, track this.
					working_clients_num++;

					#if MESSAGE_LOGGING == 1
						std::cout << YELLOW << "	completed\n" << RESET << std::endl;
					#elif MESSAGE_LOGGING == 0 // if message stats logging is disabled, show info only when a message is completed
						std::cout << CURRENT_TIME
							<< "Fd: " << polled_fds[i].fd
							<< "    IP: " << inet_ntoa( peer_addr.sin_addr )
							<< "    Port: " << ntohs( peer_addr.sin_port )
							<< "    Global model sended."
							<< std::endl;
					#endif

					// in the final epoch when the final global model is sent, clients are disconnected
					if ( current_epoch == EPOCH_LIMIT )
					{
						std::cout << CURRENT_TIME << "Closing connection" << std::endl;

						// close the connection and mark its fd for removal from the set
						shutdown( polled_fds[i].fd  , SHUT_RDWR );
						close( polled_fds[i].fd );
						// clear client info
						free( polled_fds_info[i].received_message );

						// update counters
						connected_clients_num--;
						working_clients_num--;
						
						// remove fd from the fd set
						polled_fds[i].fd = -1;
						compress_array = true;
					}
				}
				else // not completed the message
				{
					#if MESSAGE_LOGGING == 1
						std::cout << std::endl; // ends above message before if
					#endif

					continue;
				}
			} /* End of pollable fd */
		} /* End of loop through pollable fds */

		/**************************************************************************************************/
		/* Remove fds and client info of closed sockets. If the compress_array flag was turned on,        */
		/* squeeze the array and decrement the number of file descriptors.                                */
		/**************************************************************************************************/
		if ( compress_array )
		{
			compress_array = false;
			for (int i = 0; i < num_polled_fds; i++)
			{
				if ( polled_fds[i].fd == -1 )
				{
					for ( int j = i ; j < num_polled_fds - 1 ; j++ )
					{
						// squeeze the fd array
						polled_fds[j].fd = polled_fds[j+1].fd;
						polled_fds[j].events = polled_fds[j+1].events;
						polled_fds[j].revents = polled_fds[j+1].revents;

						// squeeze the fd info
						polled_fds_info[j].received_bytes = polled_fds_info[j+1].received_bytes;
						polled_fds_info[j].sended_bytes = polled_fds_info[j+1].sended_bytes;
						polled_fds_info[j].received_message = polled_fds_info[j+1].received_message;
					}
					i--;
					num_polled_fds--;
				}
			}
		}

		/**************************************************************************************************/
		/* Check next epoch requirements.                                                                 */
		/**************************************************************************************************/
		if ( next_epoch_ready( connected_clients_num , working_clients_num , completed_clients_num ) )
		{
			/**************************************************************************************************/
			/* Create new global model.                                                                       */
			/**************************************************************************************************/
			// next epoch
			current_epoch++;

			announcement_msg.flags = NORMAL_OP;
			// check if clients should consider pretrained model
			if ( current_epoch == 0 && pretrained_model_flag == false )
				announcement_msg.flags = NO_PRETRAINED_MODEL; // sended variables are random and clients should consider their own initial values
			// check shutdown requirements
			else if ( current_epoch == EPOCH_LIMIT )
				announcement_msg.flags = FINAL_EPOCH; // training ended and clients are receiving the final model
			
			// create new global model
			announcement_msg.epoch = current_epoch;
			create_average_model( accumulated_variables , completed_clients_num , announcement_msg.variables );
			
			/**************************************************************************************************/
			/* Announce global model.                                                                         */
			/**************************************************************************************************/
			std::cout << RED << "\n			GLOBAL EPOCH    =    " << current_epoch << RESET << "\n" << std::endl;
			
			// set all connected sockets as ready to get data
			for ( int i = 1 ; i < connected_clients_num + 1 ; i++ )
				polled_fds[i].events = POLLIN | POLLOUT | POLLRDHUP | POLLERR | POLLNVAL;
			
			// clear previous epoch info
			completed_clients_num = 0;
			working_clients_num = 0;
			for ( int i = 0 ; i < VARIABLES_NUM ; i++ )
				accumulated_variables[i] = 0;
		}
		/**************************************************************************************************/
		/* Check shutdown requirements.                                                                   */
		/**************************************************************************************************/
		// The final epoch is used to send the clients the final global model. When this is done, they are disconnected
		if ( current_epoch == EPOCH_LIMIT && connected_clients_num == 0 )
			server_shutdown = 1;	
	} /* End of server running */

	/**************************************************************************************************/
	/* Shutdown server. Inform the clients that server is shutting down by clossing their connections.*/
	/**************************************************************************************************/
	// this might be useless now, as connections are closed when the final epoch is sent to them
	for ( int i = 0 ; i < FD_NUM ; i++ )
		if ( polled_fds[i].fd > 0 )
		{
			shutdown( polled_fds[i].fd , SHUT_RDWR );
			close( polled_fds[i].fd );
		}

	/**************************************************************************************************/
	/* Save model.                                                                                    */
	/**************************************************************************************************/
	std::ofstream trained_model_file( OUTPUT_FILE , std::ofstream::out | std::ofstream::binary | std::ofstream::trunc );

	trained_model_file.write( reinterpret_cast<char*>(announcement_msg.variables) , VARIABLES_NUM * sizeof(MSG_VARIABLE_DATATYPE) );

	std::cout << CURRENT_TIME << "Saved model to " << OUTPUT_FILE << std::endl;

	trained_model_file.close();
}


/**
 * @brief Reads socket and concats received data to client's message. Updates client synchronization counters.
 * 
 * @param int fd to be read
 * @param polled_fds_info& struct containing client's info
 * @param int how many bytes to read
 * @return 1 on succesfull read, 0 on socket closure, -1 on error
 */
int read_socket( int fd , struct polled_fds_info& fd_info , int bytes_to_read )
{
	/**************************************************************************************************/
	/* Read socket. Message may be incomplete, track size of received data.                           */
	/**************************************************************************************************/
	static unsigned char buffer[CLIENT_TO_SERVER_BUF_SIZE];
	int rv = recv( fd , buffer , bytes_to_read , 0 );

	/**************************************************************************************************/
	/* Do necesary checks. Connection closed / socket errors / erroneous data size.                   */
	/**************************************************************************************************/
	// connection closed properly
	if ( rv == 0 )
	{
		std::cout << CURRENT_TIME << "Connection Closed." << std::endl;

		// // close it and mark it for removal from the fd set
		close( fd );

		// clear client info
		free( fd_info.received_message );
		fd_info.received_bytes = 0;
		fd_info.sended_bytes = 0;

		return 0;
	}
	// socket recv errors
	if ( rv < 0 )
	{
		// something went wrong
		std::cout << CURRENT_TIME << "Unexpected error on recv: " << errno << std::endl;
		return -1;
	}

	/**************************************************************************************************/
	/* Collect message.                                                                               */
	/**************************************************************************************************/
	// message may come in many parts. Concate them
	memcpy( (unsigned char*)fd_info.received_message + fd_info.received_bytes , buffer , rv );

	// track total received bytes
	fd_info.received_bytes += rv;

	#if MESSAGE_LOGGING == 1
		std::cout << CURRENT_TIME
			<< "received bytes: " << rv
			<< "	total: " << fd_info.received_bytes
			<< "	needed: " << CLIENT_TO_SERVER_BUF_SIZE;
	#endif
		
	/**************************************************************************************************/
	/* If message completed, update counters for client synchronization.                              */
	/**************************************************************************************************/
	if ( fd_info.received_bytes == CLIENT_TO_SERVER_BUF_SIZE )
	{
		#if MESSAGE_LOGGING == 1
			std::cout << YELLOW << "	completed\n" << RESET;
		#endif

		// reset sended bytes counter to be ready for next epoch.
		fd_info.sended_bytes = 0;
	}
	#if MESSAGE_LOGGING == 1
		std::cout << std::endl;
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
	std::cout << "								"
		<< "	connected = " << connected_clients_num 
		<< "	working  = " << working_clients_num
		<< "	completed = " << completed_clients_num
		<< std::endl;

	// not enough connected client, no point to start a new epoch
	if( connected_clients_num < MIN_CLIENTS_PER_EPOCH )
		return 0;

	// // no working client, need for a new epoch TODO: maybe create a counter for those who are waiting the global model and call them waiting for work
	// if( working_clients_num == 0 )
	// 	return 1;

	// all completed
	if( completed_clients_num == connected_clients_num )
		return 1;

	return 0;
	// an exei ginei timeout kai uparxei kapoios teleiwmenos nea epoch?
}