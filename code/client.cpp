/**
 * @file client.cpp
 * @author Emmanouil Petrakos
 * @brief Client taking part in federated learning.
 * 
 * @copyright None
 * 
 */

#define PY_SSIZE_T_CLEAN
#define NPY_NO_DEPRECATED_API NPY_1_7_API_VERSION // suppress numpy version warnings
#include <Python.h>
#include </home/epetrakos/.local/lib/python3.8/site-packages/numpy/core/include/numpy/arrayobject.h>

#include <iostream>			/* cout */
#include <bit>				/* endian */

#include <unistd.h>			/* close */
#include <string.h>			/* memset */

#include <sys/socket.h>		/* accept, bind, connect, listen, recv, send, getpeername */
#include <netinet/in.h>		/* htonl, htons, ntohl, ntohs */
#include <netdb.h>			/* getnameinfo */

#include "definitions.hpp"

#include "utils.hpp"		/* error, current_time */
#include "messages.hpp"		/* msg structs, change message endianess */
#include "fake_data.hpp"	/* check_fake_server_data, create_fake_client_data */


struct sockaddr_in find_server( const char* server_name , const char* server_port );

int quantize_variables();
int send_variables( int socket_fd , client_to_server_msg& send_message );

// Global timer that starts ticking at program start.
Timer g_timer;
Logger g_logger( &(std::cout) );

int main ( int argc , char** argv )
{
	int rv; // return value used to check if functions worked properly
	// messages can be larger than stack. Static so their memory space is reserved in heap
	static server_to_client_msg received_message;
	static client_to_server_msg send_message;

	/**************************************************************************************************/
	/* Set up a socket to communicate with server and connect.                                        */
	/**************************************************************************************************/
	int socket_fd;
	
	// Create socket
	rv = socket_fd = socket( AF_INET , SOCK_STREAM , 0 );
	if ( rv < 0 )
		error( "Client socket creation failed." );

	// find server
	struct sockaddr_in server = find_server( SERVER_IP , std::to_string(SERVER_PORT).c_str() );

	// Initiate Connection
	LOGGER( Logger::initialization , "Initiating connection with server." );

	rv = connect( socket_fd , (struct sockaddr*) &server , sizeof( server ) );
	if ( rv < 0 )
		error( "Connect failed." );
		
	/**************************************************************************************************/
	/* Set up python environment, neural network and numpy wrappers.                                  */
	/**************************************************************************************************/
	PyObject* py_module_name;
	PyObject* py_module;
	PyObject* py_compile;
	PyObject* py_train;
	PyObject* py_eval;
	PyLongObject* py_flags = nullptr; // nullptr to supress warning 'may be used uninitialized in dealloc()'
	//PyObject* pValue;

	// Initialize python interpeter
	Py_SetProgramName( Py_DecodeLocale( argv[0] , nullptr ) );
	Py_Initialize();

	// Pass program arguments to interpeter
	wchar_t** wchar_argv = (wchar_t**) PyMem_Malloc( sizeof(wchar_t*)* argc );
	for ( int i = 0 ; i < argc ; i++ )
		wchar_argv[i] = Py_DecodeLocale( argv[i] , nullptr );
	PySys_SetArgv( argc , wchar_argv );
	PyMem_FREE( wchar_argv );

	// look in nn directory for importing modules
	PyObject* sys = PyImport_ImportModule( "sys" );
	PyObject* path = PyObject_GetAttrString( sys , "path" );
	PyList_Append( path , PyUnicode_FromString( "./nn" ) );
	Py_DECREF( sys );
	Py_DECREF( path );

	// get module
	LOGGER( Logger::initialization , "Getting file." );

	py_module_name = PyUnicode_FromString( py_script );
	py_module = PyImport_Import( py_module_name ); // this executes code in module outside functions!
	Py_DECREF( py_module_name );

	// pass C macros, constants to module 
	PyModule_AddIntMacro( py_module , LOCAL_EPOCHS );
	PyModule_AddIntMacro( py_module , STEPS_PER_EPOCH );
	PyModule_AddIntMacro( py_module , BATCH_SIZE );
	PyModule_AddIntConstant(py_module, "no_pretrained_model_flag", server_to_client_msg::flag::no_pretrained_model );

	// get functions
	LOGGER( Logger::initialization , "Getting function." );

	py_compile = PyObject_GetAttrString( py_module , py_compile_function );
	py_train = PyObject_GetAttrString( py_module , py_train_function );
	py_eval = PyObject_GetAttrString( py_module , py_eval_function );
	Py_DECREF( py_module ); // be carefull with this if need more functions

	// compile model
	PyObject_CallFunctionObjArgs( py_compile , NULL );
	Py_DECREF( py_compile );

	// create numpy array metadata around C arrays to pass them to python code
	_import_array();
	npy_intp dims[1] = {VARIABLES_NUM}; // dimension/size of numpy arrays. Easier to pass an 1-D array to python and reshape data there.
	PyObject* py_array_input = PyArray_SimpleNewFromData( 1 , dims , NPY_FLOAT , received_message.variables );
	PyObject* py_array_output = PyArray_SimpleNewFromData( 1 , dims , NPY_FLOAT , send_message.variables );

	/**************************************************************************************************/
	/* Main loop.                                                                                     */
	/**************************************************************************************************/
	int received_bytes = 0; // counts total received bytes per message
	while ( 1 )
	{
		/**************************************************************************************************/
		/* Wait for global model and read it.                                                             */		
		LOGGER( Logger::message_info , "Waiting for data." );
		
		// read socket
		static unsigned char buffer[SERVER_TO_CLIENT_BUF_SIZE];
		rv = recv( socket_fd , buffer , SERVER_TO_CLIENT_BUF_SIZE , 0 );

		/**************************************************************************************************/
		/* Do necesary checks. Connection closed / socket errors / erroneous data size?.                  */
		/**************************************************************************************************/
		// connection closed
		if ( rv == 0 )
		{	
			LOGGER( Logger::warning , "Connection Closed." );

			// There's mothing more to do if the connection with server broke. Close socket and exit. 
			close( socket_fd );
			break;
		}
		// socket errors. Needs expansion
		else if ( rv < 0 )
		{	
			error("recv");
			
			LOGGER( Logger::warning , "Unexpected error on recv: " << errno );
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

		LOGGER( Logger::message_info , 
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
		LOGGER( Logger::fl_info , "Received new global model." );

		received_bytes = 0; // reset received bytes counter for use on the next message

		// server uses little endian encoding, need to change received message to host endian
		if constexpr ( std::endian::native == std::endian::big ) // requires c++20, dangerous !!!!
			server_to_client_msg_big_endianess( received_message ); // maybe move this to the server side if needed

		LOGGER( Logger::fl_info , RED << "		GLOBAL EPOCH    =   " << received_message.epoch << RESET );

		if( received_message.flags == server_to_client_msg::flag::final_epoch )
		{
			PyObject_CallFunctionObjArgs( py_eval , py_array_input , py_array_output , py_flags , NULL );
			break;
		}
		/**************************************************************************************************/
		/* Calculate variables.                                                                           */
		/**************************************************************************************************/
		// call python function
		py_flags = (PyLongObject*) PyLong_FromLong( (long) received_message.flags );
		PyObject_CallFunctionObjArgs( py_train , py_array_input , py_array_output , py_flags , NULL );

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
		LOGGER( Logger::fl_info , "Sending local variables.\n" );
		// create message
		send_message.epoch = received_message.epoch;

		// send message
		rv = send_variables( socket_fd , send_message );

		if ( rv < 0 )
		{
			LOGGER( Logger::error , "Unexpected error on send: " << errno );
		}
	}
	/**************************************************************************************************/
	/* Clean up and exit.                                                                             */
	/**************************************************************************************************/

	// free up remaining python variables
	Py_DECREF( py_train );
	Py_DECREF( py_eval );
	Py_DECREF( py_array_input );
	Py_DECREF( py_array_output );
	Py_XDECREF( py_flags ); // py_flags gets initialised in main loop. If main loop ends early, it may be NULL.

	Py_Finalize();

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
struct sockaddr_in find_server( const char* server_name , const char* server_port )
{
	struct addrinfo hints;
	memset( &hints , 0 , sizeof(hints) );
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_family = AF_INET;
	hints.ai_protocol = IPPROTO_TCP;
	
	struct addrinfo* server_addr_info;

	int rv = getaddrinfo( server_name , server_port , nullptr , &server_addr_info );
	if ( rv != 0 )
		error( "getaddrinfo failed." );

	return *( (struct sockaddr_in *) server_addr_info->ai_addr );
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
 * @param client_to_server_msg* message to be send
 * @return send(2) return value
 */
int send_variables( int socket_fd , client_to_server_msg& send_message )
{
	// serialize local variables
	if constexpr ( std::endian::native == std::endian::big ) // requires c++20, dangerous !!!!
		client_to_server_msg_big_endianess( send_message ); // maybe move this to the server side if needed
	
	int rv = send( socket_fd , &send_message , CLIENT_TO_SERVER_BUF_SIZE , 0 );

	LOGGER( Logger::message_info , "sended bytes: " << rv << "	total: " << CLIENT_TO_SERVER_BUF_SIZE << "\n" );

	return rv;
}