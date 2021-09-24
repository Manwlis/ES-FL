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
#include <stdio.h>	/*putchar */

#include "messages.h"	/* message types, WEIGHTS_NUM */


void check_fake_client_data( struct client_info client_info[] , int i , int epoch );
void create_fake_server_data( struct server_to_client_msg& announcement_msg , int epoch );


void create_fake_client_data( struct client_to_server_msg& send_message , int epoch );
void check_fake_server_data( struct server_to_client_msg& received_message );