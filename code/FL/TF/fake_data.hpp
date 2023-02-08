/**
 * @file fake_data.h
 * @author Emmanouil Petrakos
 * @brief 
 * @version 0.1
 * @date 20/09/2021
 * 
 * @copyright None
 * 
 */

#pragma once


#include <iostream>	/* cout */

#include "messages.hpp"	/* message types, VARIABLES_NUM */


void create_fake_server_data( struct Server_to_client_msg& announcement_msg , int epoch );
void create_fake_client_data( struct Client_to_server_msg& send_message , int epoch );

void check_fake_client_data( struct Client_to_server_msg& received_message, int epoch );
void check_fake_server_data( struct Server_to_client_msg& received_message );