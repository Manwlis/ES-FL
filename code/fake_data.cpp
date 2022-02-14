/**
 * @file fake_data.cpp
 * @author Emmanouil Petrakos
 * @brief 
 * @version 0.1
 * @date 20/09/2021
 * 
 * @copyright None
 * 
 */

#include "fake_data.hpp"


// required info per client in order to organize communications
struct client_info // maybe rename
{
    struct Client_to_server_msg* received_message; // holds received data
	int received_bytes; // counts how many data has been received
};


/**
 * @brief Create a fake server message, where every variable has value equal with the epoch
 * 
 * @param announcement_msg 
 * @param epoch 
 */
void create_fake_server_data(struct Server_to_client_msg& announcement_msg , int epoch )
{
	announcement_msg.epoch = epoch;
	for( int i = 0; i < VARIABLES_NUM ; i++ )
		announcement_msg.variables[i] = epoch;
}


/**
 * @brief Create a fake client message, where every variable, accuracy and loss have value equal with the epoch
 * 
 * @param send_message 
 * @param epoch 
 */
void create_fake_client_data( Client_to_server_msg& send_message , int epoch )
{
	send_message.epoch = epoch;
	
	// create fake data for testing, remove when real data is sent
	for( int i = 0 ; i < VARIABLES_NUM ; i++ )
		send_message.variables[i] = send_message.epoch;
	send_message.accuracy = send_message.epoch;
	send_message.loss = send_message.epoch;
}


/**
 * @brief Check that the message follows the above format
 * 
 * @param Client_to_server_msg& the input message
 * @param epoch the current epoch
 */
void check_fake_client_data( struct Client_to_server_msg& received_message, int epoch )
{
	if ( received_message.epoch != epoch )
	{
		std::cout << "epoch wrong" << std::endl;
		return;
	}
	else if ( received_message.accuracy != received_message.epoch )
	{
		std::cout << "accuracy wrong" << std::endl;
		return;
	}
	else if ( received_message.loss != received_message.loss )
	{
		std::cout << "loss wrong" << std::endl;
		return;
	}
	
	for( int i = 0 ; i < VARIABLES_NUM ; i++ )
	{
		if( received_message.variables[i] != received_message.epoch )
		{
			std::cout << "variable " << i << " wrong" << std::endl;
			return;
		}
	}
	std::cout << "message received ok" << std::endl;
}


/**
 * @brief Check that the message follows the above format
 * 
 * @param Client_to_server_msg& the input message
 */
void check_fake_server_data( Server_to_client_msg& received_message )
{
	for( int i = 0 ; i < VARIABLES_NUM ; i++ )
		if( received_message.variables[i] != received_message.epoch )
		{
			std::cout << "variable " << i << " wrong" << std::endl;
			return;
		}
	std::cout << "message received ok" << std::endl;
}