/**
 * @file utils.h
 * @author Emmanouil Petrakos
 * @brief Header file for utils.cpp which contains generic helper functions
 * @version 0.1
 * @date 2021-07-11
 * 
 * @copyright None
 * 
 */

#pragma once

#include <string>	/* string */
#include <time.h>	/* time, localtime, strftime */
#include <stdio.h>	/* perror */
#include <stdlib.h>	/* exit, EXIT_FAILURE */

using namespace std;


#define MESSAGE_LOGGING 0

#define RESET	"\033[0m"
#define RED		"\033[31m"	/* Red */
#define GREEN	"\033[32m"	/* Green */
#define YELLOW	"\033[33m"	/* Yellow */

#define CURRENT_TIME GREEN << current_time() << RESET << "    "


void error( const char* msg );
string current_time();


/**
 * @brief Reverses the byte order of the input float. Used when comunicating with machines of different endianess.
 * In the .h file so it can be inline
 * 
 * @param float 
 * @return float 
 */
inline float reverse_float( const float input_float )
{
	float reversed_float;
	unsigned char* input_bytes = (unsigned char*) &input_float;
	unsigned char* output_bytes = (unsigned char*) &reversed_float;

	// swap the bytes into a temporary buffer
	output_bytes[0] = input_bytes[3];
	output_bytes[1] = input_bytes[2];
	output_bytes[2] = input_bytes[1];
	output_bytes[3] = input_bytes[0];

	return reversed_float;
}