/**
 * @file utils.h
 * @author Emmanouil Petrakos
 * @brief Header file for utils.cpp which contains generic helper functions
 * 
 * @copyright None
 * 
 */
#pragma once

#include "definitions.hpp"

#include <iostream>	/* cout */
#include <fstream>	/* ofstream */
#include <string>	/* string */
#include <iomanip>	/* setw */
#include <chrono>	/* time_point, durration */

#include <stdio.h>	/* perror */
#include <stdlib.h>	/* exit, EXIT_FAILURE */


#define RESET	"\033[0m"
#define RED		"\033[31m"	/* Red */
#define GREEN	"\033[32m"	/* Green */
#define YELLOW	"\033[33m"	/* Yellow */
#define COMPLETED_MSG "	\033[33mcompleted\033[0m"


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
}

/**************************************************************************************************/
/* Timer                                                                                          */
/**************************************************************************************************/
/**
 * @brief Timer class
 * 
 */
class Timer
{
private:
	const std::chrono::steady_clock::time_point start_time;
public:
	Timer();
	int64_t since() const;
};

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
/* Logger                                                                                         */
/**************************************************************************************************/
/**
 * @brief Simple loger class to log the FL training.Can be manipulated with the ENABLE_LOGGING, VERDOSE_LOGGING & DISABLE_MESSAGE_INFO flags.
 * Logs event level, +time (ms) from the start of the program and text descibing the event.
 * If VERDOSE_LOGGING is enabled, function, file and code line of the event are also logged.
 */
class Logger {
public:
	/**
	 * @brief Level of logging events. Can be used to block certain events from being logged.
	 */
	enum class Level
	{
		initialization,
		message_info,
		fl_info,
		warning,
		error
	};

	Logger();
	Logger( std::string filename );

	void operator()( Level level , const std::string& description, const char* function , const char* file , int line ) const;

private:
	std::ofstream output_file;
	std::ostream& output_sink; // Output stream, can be anything with a write() function. File, std::cout etc.
	Timer timer;
};


/**
 * @brief Construct a new Logger object that outputs in terminal
 *
 */
Logger::Logger() : output_sink( std::cout ) , timer() {}

/**
 * @brief Construct a new Logger object that outputs in a file
 *
 * @param std::string target output file
 */
Logger::Logger( std::string filename ) : output_file( filename ) , output_sink( output_file ) , timer() {}


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
	output_sink
		<< "[" << static_cast<int>(level) <<  "]"
		<< GREEN << std::setw(10) << timer.since() << RESET << "	"
		//<< description.length() << " "
		<< std::setw(80) << std::left << description << std::right
		#if VERDOSE_LOGGING
			<< std::setw(4) << function
			<< std::setw(11) << file
			<< std::setw(5) << line
		#endif
		<< std::endl;
}


// Hacky macro to add logger functionality with minimum code. Blocks unwanted messages.
#define LOG( logger_ , level_ , Message_ ) \
	if( DISABLE_NON_CRITICAL && level_ < Logger::Level::warning )\
		do {} while(0);\
	else if( DISABLE_MESSAGE_INFO && level_ == Logger::Level::message_info )\
		do {} while(0);\
	else\
		logger_( level_ , static_cast<std::ostringstream&>( std::ostringstream().flush() << Message_ ).str() , __func__ , __FILE__ , __LINE__ )\

// used to enable/disable all logging
#if ENABLE_LOGGING
	#define LOGGING( level_ , message_ ) LOG( g_logger , level_ , message_ )//use the global logger
#else 
	#define LOGGING( _1 , _2 ) do {} while(0)
#endif

// Global Logger that logs the FL training. Need to be used in multiple files may arise, so define it here with extern.
extern Logger g_logger;
