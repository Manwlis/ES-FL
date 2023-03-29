/**
 * @file server.cpp
 * @author Emmanouil Petrakos
 * @brief Server orchestrating federated learning.
 * 
 * @copyright None
 * 
 */

// C++ standard libraries
#include <iostream>			/* cout */
#include <fstream>			/* ifstream, ofstream */
#include <vector>			/* vector */
#include <numeric>			/* iota */
#include <algorithm>		/* random_shuffle */
#include <random>			/* default_random_engine */
#include <chrono>			/* system_clock */

// C/C++ standard libraries
#include <unistd.h>			/* close */
#include <string.h>			/* memset */

#include <sys/socket.h>		/* accept, bind, connect, listen, recv, send, getpeername, shutdown */
#include <netinet/in.h>		/* htonl, htons, ntohl, ntohs */
#include <arpa/inet.h>		/* inet_ntoa */
#include <poll.h>			/* poll */
#include <fcntl.h>			/* fcntl */

#include "definitions.hpp"
#include "utils.hpp"		/* error, Logging */

// systemic definitions
#define FD_NUM_MAX MAX_CONNECTED_CLIENTS+1 // +1 for the listening socket
#define FINAL_EPOCH NUM_EPOCHS+1


/**
 * @brief Required info per client in order to orchistrate communications.
 */
struct Polled_fds_info
{
	struct Client_to_server_msg* received_message; // holds received data
	size_t received_bytes; // counts how many data has been received this epoch
	size_t sended_bytes; // counts how many data has been send this epoch
	bool working;	// shows that the client is working
};


/**
 * @brief Return values for the accept_connection function. Error, no more connections, success.
 */
enum class Accept_connection_rv
{
	error = -1,
	no_more_connections = 0,
	success = 1
};
Accept_connection_rv accept_connection( int listening_socket_fd , int num_polled_fds , pollfd polled_fds[] , Polled_fds_info polled_fds_info[] );

void remove_fd( pollfd& polled_fd , Polled_fds_info& polled_fd_info , bool& compress_array );

/**
 * @brief Return values for the Write_socket_rv function. Error, finished writing, success.
 * 
 */
enum class Write_socket_rv
{
	error = -1,
	finished_writing = 0,
	success = 1
};
Write_socket_rv write_socket( pollfd& polled_fd , Polled_fds_info& fd_info , Server_to_client_msg& announcement_msg , size_t bytes_to_write );

/**
 * @brief Return values for the read_socket function. Error, socket closed, success.
 */
enum class Read_socket_rv
{
	error = -1,
	socket_closed = 0,
	success = 1
};
Read_socket_rv read_socket( int fd , Polled_fds_info& fd_info , size_t bytes_to_read );

void accumulate_variables( float local_variables[VARIABLES_NUM] , float accumulated_variables[VARIABLES_NUM] );
void create_average_model( float accumulated_variables[VARIABLES_NUM] , int num_models , float global_model[VARIABLES_NUM] );

bool next_epoch_ready( int connected_clients_num , int working_clients_num , int completed_clients_num );
int client_selection( int connected_clients_num , pollfd fds[] , Polled_fds_info fds_info[] , int epoch );
bool shutdown_ready( int epoch , unsigned int connected_clients_num );


Logger g_logger( TERMINAL_OUTPUT_FILENAME );
// Logger g_logger;


int main( int argc , char** argv )
{
	LOGGING( Logger::Level::initialization , "Server Start" );
	
	int rv; // return value used to check if functions worked properly
	
	// global model data. Static variable are by default initialized to zero. No need for explicit initialization.
	static float accumulated_variables[VARIABLES_NUM];
	static Server_to_client_msg announcement_msg; // holds global model

	/**************************************************************************************************/
	/* Get server's ip and port.                                                                      */
	/**************************************************************************************************/
	std::string SERVER_IP;
	uint16_t SERVER_PORT;
	Utils::read_server_info( SERVER_INFO_FILENAME , SERVER_IP , SERVER_PORT );

	/**************************************************************************************************/
	/* Check if pretrained model file exists and set it up.                                           */
	/**************************************************************************************************/
	bool pretrained_model_flag = false;
	// pretrained model exists
	if ( argc == 2 )
	{
		std::ifstream pretrained_model_file( argv[1] , std::ifstream::in | std::ifstream::binary );
		if ( !pretrained_model_file.is_open() )
			Utils::error( "Failed to open pretrained model file" );

		// load model
		pretrained_model_file.read( reinterpret_cast<char*>(announcement_msg.variables) , VARIABLES_NUM * sizeof(t_variable) );
		if ( !pretrained_model_file )
			Utils::error( "Failed to read requested number of data" );

		LOGGING( Logger::Level::initialization , "Loaded pretrained model" );

		pretrained_model_file.close();
		pretrained_model_flag = true;
	}
	// check if clients should consider pretrained model
	if ( pretrained_model_flag == false )
		// shows to the clients that sended variables are random and they should consider their own initial values
		announcement_msg.flags = Server_to_client_msg::flag::no_pretrained_model;

	/**************************************************************************************************/
	/* Set up a socket to receive incoming connections on. TCP.                                       */
	/**************************************************************************************************/
	// Create socket as TCP & non blocking
	int listening_socket_fd = socket( AF_INET , SOCK_STREAM | SOCK_NONBLOCK , 0 );
	if ( listening_socket_fd < 0 )
		Utils::error( "Server socket creation failed." );

	// Set socket as reusable. New sockets will inherit this state.
	int reuse = 1;
	rv = setsockopt( listening_socket_fd , SOL_SOCKET , SO_REUSEADDR , (const char*) &reuse , sizeof(reuse) );
	if ( rv < 0 )
		Utils::error( "Setting server socket fd as reusable failed" );

	// Setup socket structure
	struct sockaddr_in server_addr;
	memset( &server_addr , 0 , sizeof(server_addr) );
	server_addr.sin_family = AF_INET;					// IPv4 address family
	server_addr.sin_addr.s_addr = htonl( INADDR_ANY );	// fill with current host IP address
	server_addr.sin_port = htons( SERVER_PORT );		// convert port to network byte order

	// Bind socket
	rv = bind( listening_socket_fd , (const sockaddr*) &server_addr , sizeof(server_addr) );
	if ( rv < 0 )
		Utils::error( "Binding server's socket failed" );

	// Set the listen backlog
	rv = listen( listening_socket_fd , LISTEN_MAX_BACKLOG );
	if ( rv < 0 )
		Utils::error( "Listen server socket failed" );
	
	LOGGING( Logger::Level::initialization , "Listening port " << SERVER_PORT );

	/**************************************************************************************************/
	/* Initialize polling structure.                                                                  */
	/**************************************************************************************************/
	// Contains the file descriptors of the sockets that are being polled
	pollfd polled_fds[FD_NUM_MAX];
	int num_polled_fds = 0;

	// Initialize the pollfd structure
	memset( polled_fds , 0 , sizeof(polled_fds) );

	// Put in the initial listening socket
	polled_fds[0].fd = listening_socket_fd;
	polled_fds[0].events = POLLIN;
	num_polled_fds++;

	//Initialize the timeout to 1 minute. Timeout value is based on milliseconds. */
	int timeout = 1 * 60 * 1000;

	// necessary info per client
	Polled_fds_info polled_fds_info[FD_NUM_MAX]; // parallel with polled_fds[]

	/**************************************************************************************************/
	/* FL algorithm initialization.                                                                   */
	/**************************************************************************************************/
	// Used to check when to announce the new global model
	unsigned int connected_clients_num = 0;
	unsigned int working_clients_num = 0;
	unsigned int completed_clients_num = 0;
	// When results are acceptable, stop training and shutdown server.
	bool server_shutdown = false;
	// keep track of current epoch
	unsigned int current_epoch = 0;

	/**************************************************************************************************/
	/* End of initializations, start of main loop.                                                    */
	/* Loop waiting for incoming connects or for incoming data on any of the connected sockets.       */
	/**************************************************************************************************/
	LOGGING( Logger::Level::initialization , "Starting polling." );
	while ( server_shutdown == false )
	{
		rv = poll( polled_fds , num_polled_fds , timeout );

		if ( rv < 0 )
			Utils::error( "Poll failed" );

		if ( rv == 0 )
		{
			// do time out things
		}
		/**************************************************************************************************/
		/* One or more descriptors are readable. Check them all and read those who received data.         */
		/**************************************************************************************************/
		// num_polled_fds can change inside the loop, see array compression
		int size = num_polled_fds;
		// shows if there are fds marked for removal in the fd set
		bool compress_array = false;

		for ( int i = 0 ; i < size ; i++ )
		{
			// Current descriptor is asleep
			if ( polled_fds[i].revents == 0 )
				continue;
			
			// Get peer info for logging
			#if ENABLE_LOGGING
				sockaddr_in peer_addr;
				socklen_t peer_addr_len = sizeof(peer_addr);
				getpeername( polled_fds[i].fd , (struct sockaddr*) &peer_addr , &peer_addr_len );
			#endif
			/**************************************************************************************************/
			/* The listening socket fd raised POLLIN event. New client.                                       */
			/**************************************************************************************************/
			if ( polled_fds[i].fd == listening_socket_fd )
			{
				// there are incoming connection requests
				LOGGING( Logger::Level::initialization , "New connections" );

				// accept them all
				while ( true )
				{
					Accept_connection_rv accept_connection_rv = accept_connection( listening_socket_fd , num_polled_fds , polled_fds , polled_fds_info );
					
					// no more connections
					if( accept_connection_rv == Accept_connection_rv::no_more_connections )
						break;
					// new connection
					else if( accept_connection_rv == Accept_connection_rv::success )
					{
						// track polled fds num
						num_polled_fds++;
						// track how many clients are connected
						connected_clients_num++;
					}
				}
			}
			/**************************************************************************************************/
			/* Non listening socket fd raised Unexpected event.                                               */
			/**************************************************************************************************/
			else if ( polled_fds[i].revents & ( POLLNVAL|POLLERR|POLLHUP ) )
			{
				LOGGING( Logger::Level::error , 
					"Revent: " << polled_fds[i].revents << " on connention with " << inet_ntoa( peer_addr.sin_addr ) << " at port " << ntohs( peer_addr.sin_port ) );

				// error on socket, kill connection
				LOGGING( Logger::Level::error , "Connection Closed unexpectedly." );

				// update counters
				connected_clients_num--;
				if ( polled_fds_info[i].working )
					working_clients_num--;

				// clean up the fd and the acompanied info
				remove_fd( polled_fds[i] , polled_fds_info[i] , compress_array );
				
				continue;
			}
			/**************************************************************************************************/
			/* Non listening socket fd raised POLLOUT event. Can write data.                                  */
			/**************************************************************************************************/
			else if ( polled_fds[i].revents & POLLOUT )
			{
				// remaining bytes to complete the announcement
				int remaining_bytes = SERVER_TO_CLIENT_BUF_SIZE - polled_fds_info[i].sended_bytes;

				LOGGING( Logger::Level::message_info , 
					"Send event on Fd: " << polled_fds[i].fd << "	IP: " << inet_ntoa( peer_addr.sin_addr )
					<< "	Port: " << ntohs( peer_addr.sin_port ) << "	Remaining bytes: " << remaining_bytes
					<< "	Sended bytes: " << polled_fds_info[i].sended_bytes );

				// send the announcement
				Write_socket_rv write_socket_rv = write_socket( polled_fds[i] , polled_fds_info[i] , announcement_msg , remaining_bytes );

				// error on write
				if( write_socket_rv == Write_socket_rv::error )
					continue;
				// finished writing on socket
				else if( write_socket_rv == Write_socket_rv::finished_writing )
				{
					LOGGING( Logger::Level::fl_info ,
						"Fd: " << polled_fds[i].fd << "    IP: " << inet_ntoa( peer_addr.sin_addr )
						<< "    Port: " << ntohs( peer_addr.sin_port ) << "    Global model sended." );

					// in the final epoch when the final global model is sent, clients are disconnected
					if ( current_epoch == FINAL_EPOCH )
					{
						LOGGING( Logger::Level::warning , "Closing connection" );

						// clean up the fd and the acompanied info
						remove_fd( polled_fds[i] , polled_fds_info[i] , compress_array );

						// update counters
						connected_clients_num--;
						// the clients who receive a message are selected but no more communication will happen. Count them down
						working_clients_num--; 
					}
				}
				// not completed the message
				else
					continue;
			}
			/**************************************************************************************************/
			/* Non listening socket fd raised POLLIN event. New incoming data, read them.                     */
			/**************************************************************************************************/
			else if ( polled_fds[i].revents & POLLIN )
			{
				LOGGING( Logger::Level::message_info , 
					"Read event on Fd: " << polled_fds[i].fd << "	IP: " << inet_ntoa( peer_addr.sin_addr ) << "	Port: " << ntohs( peer_addr.sin_port ) );

				size_t bytes_to_read = CLIENT_TO_SERVER_BUF_SIZE - polled_fds_info[i].received_bytes;

				Read_socket_rv read_socket_rv = read_socket( polled_fds[i].fd , polled_fds_info[i] , bytes_to_read );

				// read failed, continue to next fd
				if ( read_socket_rv == Read_socket_rv::error )
					continue;
				// connection closed, mark fd for removal from polling struct
				else if ( read_socket_rv == Read_socket_rv::socket_closed )
				{
					// update counters
					connected_clients_num--;
					if ( polled_fds_info[i].working == true ) // client disconnected while working
						working_clients_num--; // decrement only if client was working
					
					// clean up the fd and the acompanied info
					remove_fd( polled_fds[i] , polled_fds_info[i] , compress_array );

					continue;
				}
				// check if message is completely received
				if( polled_fds_info[i].received_bytes != CLIENT_TO_SERVER_BUF_SIZE )
					// if not, wait for the rest of the data
					continue;

				// finished working, update counters
				working_clients_num--;
				completed_clients_num++;

				LOGGING( Logger::Level::fl_info , 
					"Fd: " << polled_fds[i].fd << "    IP: " << inet_ntoa( peer_addr.sin_addr ) << "    Port: " << ntohs( peer_addr.sin_port ) << "    Local variables received." );

				/**************************************************************************************************/
				/* Increment received variables to global diff.                                                   */
				/**************************************************************************************************/
				accumulate_variables( polled_fds_info[i].received_message->variables , accumulated_variables );
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
					{	// j is pos of removed fd, j+1 is pos of next fd
						// squeeze the fd array
						polled_fds[j].fd = polled_fds[j+1].fd;
						polled_fds[j].events = polled_fds[j+1].events;
						polled_fds[j].revents = polled_fds[j+1].revents;

						// squeeze the fd info
						polled_fds_info[j].received_bytes = polled_fds_info[j+1].received_bytes;
						polled_fds_info[j].sended_bytes = polled_fds_info[j+1].sended_bytes;
						polled_fds_info[j].received_message = polled_fds_info[j+1].received_message;
						polled_fds_info[j].working = polled_fds_info[j+1].working;
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
			/* Create new global model and save it.                                                           */
			/**************************************************************************************************/
			// create new global model
			create_average_model( accumulated_variables , completed_clients_num , announcement_msg.variables );

			// save it
			std::string filename = std::string( MODEL_OUTPUT_FILENAME ) + std::to_string( current_epoch ) + std::string( MODEL_OUTPUT_FILE_EXT );
			std::ofstream new_global_model_file ( filename , std::ofstream::out | std::ofstream::binary | std::ofstream::trunc );
			
			new_global_model_file.write( reinterpret_cast<char*>(announcement_msg.variables) , VARIABLES_NUM * sizeof(t_variable) );
			new_global_model_file.close();

			/**************************************************************************************************/
			/* Create metadata of the message.                                                                */
			/**************************************************************************************************/
			// next epoch
			current_epoch++;
			announcement_msg.epoch = current_epoch;

			// check if clients should consider pretrained model
			if ( current_epoch == 1 && pretrained_model_flag == false )
				announcement_msg.flags = Server_to_client_msg::flag::no_pretrained_model; // sended variables are random and clients should consider their own initial values
			// check shutdown requirements
			else if ( current_epoch == FINAL_EPOCH )
				announcement_msg.flags = Server_to_client_msg::flag::final_epoch; // training ended and clients are receiving the final model
			else
				announcement_msg.flags = Server_to_client_msg::flag::normal_op;

			/**************************************************************************************************/
			/* Announce global model to selected clients.                                                     */
			/**************************************************************************************************/
			if ( current_epoch != FINAL_EPOCH )
				LOGGING( Logger::Level::warning , RED << "		GLOBAL EPOCH    =    " << current_epoch << RESET );
			else
				LOGGING( Logger::Level::warning , RED << "		TRAINING FINISHED" << RESET );

			// Select clients
			working_clients_num = client_selection( connected_clients_num , polled_fds , polled_fds_info , current_epoch );
			
			// clear previous epoch info
			completed_clients_num = 0;
			for ( int i = 0 ; i < VARIABLES_NUM ; i++ )
				accumulated_variables[i] = 0;
		}
		/**************************************************************************************************/
		/* Check shutdown requirements.                                                                   */
		/**************************************************************************************************/
		if ( shutdown_ready( current_epoch , connected_clients_num ) )
			server_shutdown = 1;	
	} /* End of server running */
}

/**************************************************************************************************/
/* Communication functions. Accept/remove connection, write/read data.                            */
/**************************************************************************************************/
/**
 * @brief Accepts an incoming connection, set the new socket as non-blocking, add it in the polling structure and initialize its info.
 * 
 * @param int fd of the listening socket
 * @param int number of the polled fds 
 * @param pollfd[] array of the polled fds
 * @param polled_fds_info[] array with the info of the polled fds
 * @return Accept_connection_rv - appropiate value
 */
Accept_connection_rv accept_connection( int listening_socket_fd , int num_polled_fds , pollfd polled_fds[] , Polled_fds_info polled_fds_info[] )
{
	struct sockaddr_in client_addr; // just for logging
	socklen_t client_addr_len = sizeof(client_addr);
	memset( &client_addr , 0 , client_addr_len );

	int new_fd = accept( listening_socket_fd , (sockaddr*) &client_addr , &client_addr_len );
	
	// check if a connection was accepted
	if ( new_fd < 0 )
	{
		// no more connections
		if ( errno == EWOULDBLOCK )
			return Accept_connection_rv::no_more_connections;
			
		// something went wrong
		LOGGING( Logger::Level::error , "Unexpected error on accept: " << new_fd << "	errno: " << errno );
		return Accept_connection_rv::error;
	}
	// set new socket as non blocking
	if ( fcntl( new_fd , F_SETFL , fcntl( new_fd , F_GETFL ) | O_NONBLOCK ) < 0 )
	{
		LOGGING( Logger::Level::error , "Failed setting new socket as non blocking. Closing it." );
		close( new_fd );
		return Accept_connection_rv::error;
	}
	// new client
	LOGGING( Logger::Level::initialization , "New client: " << inet_ntoa( client_addr.sin_addr ) << ":" << ntohs( client_addr.sin_port ) );

	// add the new socket in the polled fd set.
	polled_fds[num_polled_fds].fd = new_fd;
	// Set up socket flags.
	polled_fds[num_polled_fds].events = POLLIN | POLLRDHUP | POLLERR | POLLNVAL; // POLLIN always open to catch disconections

	// init client info
	polled_fds_info[num_polled_fds].received_message = new Client_to_server_msg;
	polled_fds_info[num_polled_fds].received_bytes = 0;
	polled_fds_info[num_polled_fds].sended_bytes = 0;
	polled_fds_info[num_polled_fds].working = false;

	return Accept_connection_rv::success;
}

/**
 * @brief Shutdown the connection of the fd, clean up its info and mark it for removal
 * 
 * @param pollfd& poll() wrapper of the fd to be removed
 * @param Polled_fds_info& of the fd to be removed
 * @param bool& compress array flag 
 */
void remove_fd( pollfd& polled_fd , Polled_fds_info& polled_fd_info , bool& compress_array )
{
	// close the connection
	shutdown( polled_fd.fd  , SHUT_RDWR );
	close( polled_fd.fd );

	// mark the fd for removal from the set
	polled_fd.fd = -1;
	compress_array = true;

	// clear client info
	delete polled_fd_info.received_message;
}

/**
 * @brief 
 * 
 * @param pollfd& poll() wrapper of the fd to be read
 * @param Polled_fds_info& of the fd to be removed
 * @param Server_to_client_msg message holding global model
 * @param int how many bytes to read 
 * @return Write_socket_rv - appropiate value
 */
Write_socket_rv write_socket( pollfd& polled_fd , Polled_fds_info& fd_info , Server_to_client_msg& announcement_msg , size_t bytes_to_write )
{
	// send remaining bytes
	ssize_t rv = send( polled_fd.fd , (unsigned char*)&announcement_msg + fd_info.sended_bytes , bytes_to_write , MSG_DONTWAIT );

	// send failed
	if( rv < 0 )
	{
		LOGGING( Logger::Level::error , "Write failed on fd: " << polled_fd.fd );
		return Write_socket_rv::error;
	}
	// send succesful

	// track total sended bytes
	fd_info.sended_bytes += reinterpret_cast<size_t&>(rv);

	LOGGING( Logger::Level::message_info ,
		"sended bytes: " << rv << "	total: " << fd_info.sended_bytes << "	needed: " << SERVER_TO_CLIENT_BUF_SIZE 
		<< ( fd_info.sended_bytes == SERVER_TO_CLIENT_BUF_SIZE ? COMPLETED_MSG : "" ) );

	// completed the message
	if ( fd_info.sended_bytes == SERVER_TO_CLIENT_BUF_SIZE )
	{
		// no need to write to the socket anymore, close pollout
		polled_fd.events &= ~POLLOUT;
		return Write_socket_rv::finished_writing;
	}
	return Write_socket_rv::success;
}

/**
 * @brief Reads socket and concats received data to client's message. Updates client synchronization counters.
 * 
 * @param int fd to be read
 * @param polled_fds_info& struct containing client's info
 * @param int how many bytes to read
 * @return Read_socket_rv - appropiate value
 */
Read_socket_rv read_socket( int fd , Polled_fds_info& fd_info , size_t bytes_to_read )
{
	/**************************************************************************************************/
	/* Read socket. Message may be incomplete, track size of received data.                           */
	/**************************************************************************************************/
	static unsigned char buffer[CLIENT_TO_SERVER_BUF_SIZE];
	ssize_t rv = recv( fd , buffer , bytes_to_read , 0 );

	/**************************************************************************************************/
	/* Do necesary checks. Connection closed / socket errors / erroneous data size.                   */
	/**************************************************************************************************/
	// connection closed properly
	if ( rv == 0 )
	{
		LOGGING( Logger::Level::initialization , "Connection Closed." );
		return Read_socket_rv::socket_closed;
	}
	// socket recv errors
	if ( rv < 0 )
	{
		// something went wrong
		LOGGING( Logger::Level::error , "Unexpected error on recv: " << errno );
		return Read_socket_rv::error;
	}

	/**************************************************************************************************/
	/* Collect message.                                                                               */
	/**************************************************************************************************/
	// message may come in many parts. Concate them
	memcpy( (unsigned char*)fd_info.received_message + fd_info.received_bytes , buffer , rv );

	// track total received bytes
	fd_info.received_bytes += reinterpret_cast<size_t&>(rv);

	LOGGING( Logger::Level::message_info ,
		"received bytes: " << rv << "	total: " << fd_info.received_bytes << "	needed: " << CLIENT_TO_SERVER_BUF_SIZE
		<< ( fd_info.received_bytes == CLIENT_TO_SERVER_BUF_SIZE ? COMPLETED_MSG : "" ) );
		
	/**************************************************************************************************/
	/* If message completed, update counters for client synchronization.                              */
	/**************************************************************************************************/
	if ( fd_info.received_bytes == CLIENT_TO_SERVER_BUF_SIZE )
	{
		// if message is completed, the client is not working for the rest of the global epoch
		fd_info.working = false;
	}

	return Read_socket_rv::success;
}

/**************************************************************************************************/
/* Calculations functions.                                                                        */
/**************************************************************************************************/
/**
 * @brief Adds local variables to cumulative variables
 * 
 * @param float[VARIABLES_NUM] local variables 
 * @param float[VARIABLES_NUM] accumulated variables 
 */
void accumulate_variables( float local_variables[VARIABLES_NUM] , float accumulated_variables[VARIABLES_NUM] )
{
	for( int i = 0 ; i < VARIABLES_NUM ; i++ )
		accumulated_variables[i] += local_variables[i];
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
	if( num_models == 0 )
		return;
		
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

/**************************************************************************************************/
/* FL algorithm flow control functions. Selecting clients, changing epoch and finishing.          */
/**************************************************************************************************/
/**
 * @brief Checks new epoch conditions.
 * 
 * @param int connected clients counter
 * @param int working clients counter
 * @param int completed clients counter
 * @return true if ready for new epoch, false if not
 */
bool next_epoch_ready( int connected_clients_num , int working_clients_num , int completed_clients_num )
{
	LOGGING( Logger::Level::message_info , "						"
		<< "    connected = " << connected_clients_num
		<< "    working  = " << working_clients_num
		<< "    completed = " << completed_clients_num );

	// not enough connected client, no point to start a new epoch
	if( connected_clients_num < MIN_CLIENTS_PER_EPOCH )
		return false;

	// no working client, need for a new epoch
	if( working_clients_num == 0 )
		return true;

	// enough completed
	if( completed_clients_num == MIN_CLIENTS_PER_EPOCH )
		return true;

	return false;
}

/**
 * @brief Selects the clients that are going to partake in the next epoch.
 * The number of the selected clients is set by the MIN_CLIENTS_PER_EPOCH constant.
 * In final epoch all clients are selected to alert them of end of training.
 * 
 * @param int number of connected clients 
 * @param pollfd[] fds of the connected clients
 * @param int current epoch
 * @return int - number of working clients for the new epoch
 */
int client_selection( int connected_clients_num , pollfd polled_fds[] , Polled_fds_info fds_info[] , int epoch )
{
	int working_clients_num;

	// used for logging
	std::string selected_clients;

	// if existing clients <= required clients, select them all
	// < in future maybe start new epoch if inefficient clients with no prospect of gaining more
	// if epoch == final epoch clients are going to evaluate the network, use them all
	if( connected_clients_num <= MIN_CLIENTS_PER_EPOCH || epoch == FINAL_EPOCH )
	{
		// the position 0 in the fd set is reserved for the listening socket. Start from value 1 to get only connected sockets.
		for ( int i = 1 ; i < connected_clients_num + 1 ; i++ )
		{
			// set the sockets as active
			polled_fds[i].events = POLLIN | POLLOUT | POLLRDHUP | POLLERR | POLLNVAL;

			// prepare their info
			fds_info[i].received_bytes = 0;
			fds_info[i].sended_bytes = 0;
			fds_info[i].working = true;

			// for logging
			selected_clients += std::to_string( i ) + ' ';
		}
		working_clients_num = connected_clients_num;
	}
	else
	{
		// use a vector to get unique random numbers
		std::vector<int> v( connected_clients_num );
		// populate the vector with numbers from 1 to connected_clients_num+1
		std::iota( v.begin() , v.end() , 1 );

		// obtain a time-based seed
		unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();

		// shuffle the clients
		std::shuffle( v.begin() , v.end() , std::default_random_engine( seed ) );

		for( int i = 0 ; i < MIN_CLIENTS_PER_EPOCH ; i++ )
		{
			// get a value from the vector
			int client = v.back();
			v.pop_back();
			
			// set the sockets as active
			polled_fds[client].events = POLLIN | POLLOUT | POLLRDHUP | POLLERR | POLLNVAL;

			// prepare their info
			fds_info[client].received_bytes = 0;
			fds_info[client].sended_bytes = 0;
			fds_info[client].working = true;

			// for logging
			selected_clients += std::to_string( client ) + ' ';
		}
		working_clients_num = MIN_CLIENTS_PER_EPOCH;
	}
	LOGGING( Logger::Level::fl_info , "Selected clients: " << selected_clients );
	return working_clients_num;
}

/**
 * @brief Checks if training has finished and server should shut down.
 * 
 * @param int current epoch
 * @param uint number of connected clients
 * @return true when ready for shutdown, else false
 */
bool shutdown_ready( int epoch , unsigned int connected_clients_num )
{
	// The final epoch is used to send the clients the final global model. When this is done, they are disconnected
	if ( epoch == FINAL_EPOCH && connected_clients_num == 0 )
		return true;

	return false;
}
