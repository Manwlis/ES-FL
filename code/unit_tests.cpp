/**
 * @file unit_tests.cpp
 * @author Emmanouil Petrakos
 * @brief 
 * @version 0.1
 * @date 26/07/2021
 * 
 * @copyright Copyright (c) 2021
 * 
 */

#include <iostream>

#include <algorithm>    // std::random_shuffle
#include <vector>       // std::vector
#include <numeric>      // std::iota
#include <random>       // std::default_random_engine
#include <chrono>       // std::chrono::system_clock

#include <assert.h>		/* assert */
#include <stdlib.h>		/* srand, rand */
#include <time.h>		/* time */
#include <string.h>

#include "utils.hpp"
#include "messages.hpp"
#include "fake_data.hpp"


int endianess_test();
int unique_random_test( unsigned int lenght );


int main ( int argc , char** argv )
{
	// assert( endianess_test() );
	assert( unique_random_test( 10 ) );
	std::cout << "ok" << std::endl;
}

/**************************************************************************************************/
/* Test server to client message endianess change.                                                */
/**************************************************************************************************/
int endianess_test()
{
	// create dumb data
	struct server_to_client_msg stoc_msg;
	stoc_msg.epoch = 1;
	for ( int i = 0 ; i < VARIABLES_NUM ; i++ )
	{
		stoc_msg.variables[i] = 1;
	}
	// create clone
	struct server_to_client_msg stoc_msg_clone;
	memcpy( &stoc_msg_clone , &stoc_msg , sizeof(stoc_msg) );

	// change endianess on clone
	server_to_client_msg_big_endianess( stoc_msg_clone );
	server_to_client_msg_little_endianess( stoc_msg_clone );

	// std::bitset<32> c( stoc_msg_clone.epoch );
	// std::bitset<32> d( stoc_msg.epoch );
	// std::cout << "swap 2: " << stoc_msg_clone.epoch << "  " << stoc_msg.epoch << std::endl;
	// std::cout << c << "  " << d << std::endl;

	// check that clone remains the same
	if ( stoc_msg_clone.epoch != stoc_msg.epoch )
		return 0;
	
	for ( int i = 0 ; i < VARIABLES_NUM ; i++ )
		if ( stoc_msg_clone.variables[i] != stoc_msg.variables[i] )
			return 0;

	return 1;
}

int unique_random_test( unsigned int lenght )
{
	std::vector<int> v( 10 );
	std::iota( v.begin() , v.end() , 0 );

	// obtain a time-based seed
	unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();

	std::shuffle( v.begin() , v.end() , std::default_random_engine( seed ) );

	std::cout << "All clients: ";
	for( int i : v )
		std::cout << i << ' ';

	std::cout << std::endl;
	
	std::cout << "Selected clients: ";
	for( int i = 0 ; i < MIN_CLIENTS_PER_EPOCH ; i++ )
	{
		int client = v.back();
		v.pop_back();
		std::cout << client << ' ';
	}
	std::cout << std::endl;

	return 1;
}