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

#include "fake_data.h"


// required info per client in order to organize communications
struct client_info // maybe rename
{
    struct client_to_server_msg* received_message; // holds received data
	int received_bytes; // counts how many data has been received
};


using namespace std;


/**
 * @brief Create a fake server data object
 * 
 * @param announcement_msg 
 * @param epoch 
 */
void create_fake_server_data(struct server_to_client_msg& announcement_msg , int epoch )
{
	announcement_msg.epoch = epoch;
	for( int i = 0; i < WEIGHTS_NUM ; i++ )
		announcement_msg.weights[i] = epoch;
}


/**
 * @brief Create a fake client data object
 * 
 * @param send_message 
 * @param epoch 
 */
void create_fake_client_data( client_to_server_msg& send_message , int epoch )
{
	send_message.epoch = epoch;
	
	// create fake data for testing, remove when real data is sent
	for( int i = 0 ; i < WEIGHTS_NUM ; i++ )
		send_message.weights[i] = send_message.epoch;
	send_message.accuracy = send_message.epoch;
	send_message.loss = send_message.epoch;
}


/**
 * @brief 
 * 
 * @param client_info 
 * @param i 
 * @param epoch 
 */
void check_fake_client_data( struct client_info client_info[] , int i , int epoch )
{
	bool flag = 0;
	for( int k = 0 ; k < WEIGHTS_NUM ; k++ )
	{
		if( client_info[i].received_message->epoch != epoch )
		{
			putchar('1');
			flag = 1;
		}
		if( client_info[i].received_message->weights[k] != client_info[i].received_message->epoch )
		{
			putchar('2');
			flag = 1;
		}
		if( client_info[i].received_message->accuracy != client_info[i].received_message->epoch )
		{
			putchar('3');
			flag = 1;
		}
		if( client_info[i].received_message->loss != client_info[i].received_message->epoch )
		{
			putchar('4');
			flag = 1;
		}
	}
	if( flag == 0 )
		cout << "message received ok" << endl;
}


/**
 * @brief 
 * 
 * @param received_message 
 */
void check_fake_server_data( server_to_client_msg& received_message )
{
	bool flag = 0;
	for( int i = 0 ; i < WEIGHTS_NUM ; i++ )
		if( received_message.weights[i] != received_message.epoch )
		{
			putchar('!');
			flag = 1;
		}
	if ( flag == 0 )
		cout << "message received ok" << endl;
}