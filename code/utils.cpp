/*
 * utils.cpp
 *
 * Description
 *
 * Created: 21/6/2021
 * Author : Emmanouil Petrakos
 * Developed with VS code on WSL
 */

#include "utils.h"


void error( const char *msg )
{
	perror( msg );
	exit( EXIT_FAILURE );
}

// Get current date/time, format is HH:mm:ss
const string current_time()
{
	char buf[9];

	time_t now = time(0);
	struct tm tstruct = *localtime( &now );

	strftime( buf , sizeof(buf) , "%X" , &tstruct );

	return buf;
}