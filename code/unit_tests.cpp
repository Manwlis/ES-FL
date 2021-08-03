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
#include <bitset>

#include <assert.h>		/* assert */
#include <stdlib.h>		/* srand, rand */
#include <time.h>		/* time */
#include <string.h>

#include "messages.h"

using namespace std;

int test_server_message()
{
	server_to_client_msg input;
	server_to_client_msg output;
	static unsigned char buffer[SERVER_TO_CLIENT_BUF_SIZE];

	/* initialize random seed: */
	srand (time(NULL));

	/* Randomize input */
	input.epoch = rand();

	for( int i = 0 ; i < WEIGHTS_NUM ; i++ )
		input.weights[i] = (float) rand();

	/* serialize - desirialize */
	serialize_server_to_client_msg( &input , buffer );
	deserialize_server_to_client_msg( &output , buffer );

	/* test */
	if( input.epoch != output.epoch )
		return 0;

	for( int i = 0 ; i < WEIGHTS_NUM ; i++ )
		if( input.weights[i] != output.weights[i] )
			return 0;

cout << input.epoch << "		" << output.epoch << endl;
cout << input.weights[0] << "		" << output.weights[0] << endl;
cout << input.weights[WEIGHTS_NUM-1] << "		" << output.weights[WEIGHTS_NUM-1] << endl;

	return 1;
}


int test_client_message()
{
	client_to_server_msg input;
	client_to_server_msg output;
	static unsigned char buffer[SERVER_TO_CLIENT_BUF_SIZE];

	/* initialize random seed: */
	srand (time(NULL));

	/* Randomize input */
	input.epoch = rand();
	input.loss = (float) rand();
	input.accuracy = (float) rand();

	for( int i = 0 ; i < WEIGHTS_NUM ; i++ )
		input.weights[i] = (float) rand();

	/* serialize - desirialize */
	serialize_client_to_server_msg( &input , buffer );
	deserialize_client_to_server_msg( &output , buffer );

	/* test */
	if( input.epoch != output.epoch )
		return 0;

	if( input.loss != output.loss )
		return 0;

	if( input.accuracy != output.accuracy )
		return 0;

	for( int i = 0 ; i < WEIGHTS_NUM ; i++ )
		if( input.weights[i] != output.weights[i] )
			return 0;

cout << input.epoch << "		" << output.epoch << endl;
cout << input.weights[0] << "		" << output.weights[0] << endl;
cout << input.weights[WEIGHTS_NUM-1] << "		" << output.weights[WEIGHTS_NUM-1] << endl;

	return 1;
}

union Y
{
	int a[4];
	unsigned char x[16];
};
int union_test()
{

	Y y = {{1,2,3,4}};
	
    for (int i = 0 ; i < (int) sizeof(y.x) ; i ++) {
        printf(" %02x", y.x[i]);
    }
    putchar('\n');

	return 1;
}


union X
{
	server_to_client_msg msg;
	unsigned char buffer[SERVER_TO_CLIENT_BUF_SIZE];
};
int union_test_b()
{
	X a;

	/* Randomize input */
	a.msg.epoch = rand();
	for( int i = 0 ; i < WEIGHTS_NUM ; i++ )
		a.msg.weights[i] = (float) rand();

	/* Copy */
	int counter = 0;

	int step = SERVER_TO_CLIENT_BUF_SIZE/4;

	X b;

	for ( int i = 0 ; i < 4 ; i++ )
	{
		memcpy( &(b.buffer[counter]) , &(a.buffer[counter]) , step );
		counter += step;
	}

	/* test */
	if( a.msg.epoch != b.msg.epoch )
		return 0;

	for( int i = 0 ; i < WEIGHTS_NUM ; i++ )
		if( a.msg.weights[i] != b.msg.weights[i] )
			return 0;

	return 1;
}




int main ( int argc , char** argv )
{
	//cout << test_server_message() << endl;
	//cout << test_client_message() << endl;

	cout << union_test_b() << endl;
}