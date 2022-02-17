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


namespace Utils{
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


	#include "stdlib.h"
	#include "stdio.h"
	#include "string.h"

	int parseLine( char* line )
	{
		// This assumes that a digit will be found and the line ends in " Kb".
		int i = strlen( line );

		const char* p = line;
		while ( *p < '0' || *p > '9' )
			p++;

		line[i-3] = '\0';
		
		return atoi(p);
	}

	int get_virtual_mem_used()
	{ //Note: this value is in KB!
		FILE* file = fopen( "/proc/self/status" , "r" );

		int result = -1;
		char line[128];

		while ( fgets( line , 128 , file ) != NULL )
		{
			if ( strncmp( line , "VmSize:" , 7 ) == 0 )
			{
				result = parseLine( line );
				break;
			}
		}
		fclose(file);
		return result;
	}

	int get_physical_mem_used()
	{ //Note: this value is in KB!
		FILE* file = fopen( "/proc/self/status" , "r" );

		int result = -1;
		char line[128];

		while ( fgets( line , 128 , file ) != NULL )
		{
			if ( strncmp( line , "VmRSS:" , 6 ) == 0 )
			{
				result = parseLine( line );
				break;
			}
		}
		fclose(file);
		return result;
	}

}
/**************************************************************************************************/
/* Timer                                                                                          */
/**************************************************************************************************/
/**
 * @brief Construct a new timer::timer object. Sets current time as starting time.
 */
Timer::Timer() : start_time( std::chrono::steady_clock::now() ) {}

/**
 * @brief Calculates and returns elapsed time.
 * 
 * @return int64_t elapsed time in milliseconds
 */
int64_t Timer::since() const
{
	return std::chrono::duration_cast<std::chrono::milliseconds> ( std::chrono::steady_clock::now() - start_time ).count();
}

/**************************************************************************************************/
/* Loger                                                                                          */
/**************************************************************************************************/
/**
 * @brief Construct a new Logger object
 * 
 * @param std::ostream* target output stream, defaults at std::cout
 */
Logger::Logger( std::ostream& target ) : output_sink( target ) {}

/**
 * @brief Overide of the () operator. Used to log events
 * 
 * @param Level level of the event 
 * @param std::string& info about the event 
 * @param char* function where the event occured 
 * @param char* file where the event occured
 * @param int the line where the event occured
 */
void Logger::operator()( Level level , const std::string& description, const char* function , const char* file , int line ) const
{
	// if ( static_cast<int>(level) < static_cast<int>(Level::warning) ) TODO: 
	// 	return;

	output_sink
		<< "[" << static_cast<int>(level) <<  "]"
		<< GREEN << std::setw(10) << g_timer.since() << RESET << "	"
		//<< description.length() << " "
		<< std::setw(80) << std::left << description << std::right 
		#if VERDOSE_LOGGING
			<< std::setw(4) << function
			<< std::setw(11) << file
			<< std::setw(5) << line
		#endif
		<< std::endl;
}