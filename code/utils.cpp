/**
 * @file utils.cpp
 * @author Emmanouil Petrakos
 * @brief File with generic helper functions
 * @version 0.1
 * @date 2021-07-11
 * 
 * @copyright None
 * 
 */

#include "utils.hpp"


/**
 * @brief perror() wrapper, calls perror and closes program.
 * 
 * @param char* message to be printed by perror 
 */
void error( const char* msg )
{
	perror( msg );
	exit( EXIT_FAILURE );
}


/**
 * @brief Get current time, formated as HH:mm:ss
 * 
 * @return string containing the formated time
 */
std::string current_time()
{
	char buf[9];

	time_t now = time(0);
	struct tm tstruct = *localtime( &now );

	strftime( buf , sizeof(buf) , "%X" , &tstruct );

	return buf;
}
