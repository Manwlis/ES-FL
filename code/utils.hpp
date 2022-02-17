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

#include "definitions.hpp"

#include <iostream>	/* cout */
#include <ostream>	/* cout */
#include <string>	/*  */
#include <iomanip>	/* setw */
#include <chrono>	/* time_point, durration */

#include <stdio.h>	/* perror */
#include <stdlib.h>	/* exit, EXIT_FAILURE */


#define RESET	"\033[0m"
#define RED		"\033[31m"	/* Red */
#define GREEN	"\033[32m"	/* Green */
#define YELLOW	"\033[33m"	/* Yellow */
#define COMPLETED_MSG "	\033[33mcompleted\033[0m"


namespace Utils
{
	void error( const char* msg );

	int get_virtual_mem_used();
	int get_physical_mem_used();

	// wrong and useless, leave them alone till moving code in device. Then check about endianess and float ieee structure
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
}

/**************************************************************************************************/
/* Timer                                                                                          */
/**************************************************************************************************/
/**
 * @brief Ever
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

// Global timer that starts ticking at program start. Needs to be used in multiple files, so define it here with extern.
extern Timer g_timer;

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
		fl_info,
		message_info,
		warning,
		error
	};

	Logger( std::ostream& target );


	void operator()( Level level , const std::string& description, const char* function , const char* file , int line ) const;

private:
	// Output stream, can be anything with a write() function.
	std::ostream& output_sink;
};

#define LOG( logger_ , level_ , Message_ ) \
	if( DISABLE_MESSAGE_INFO && level_ == Logger::Level::message_info )\
		do {} while(0);\
	else\
		logger_( level_ , static_cast<std::ostringstream&>( std::ostringstream().flush() << Message_ ).str() , __func__ , __FILE__ , __LINE__ );\


// used to enable/disable all logging
#if ENABLE_LOGGING
	#define LOGGING( level_ , message_ ) LOG( g_logger , level_ , message_ )//use the global logger
#else 
	#define LOGGING( _1 , _2 ) do {} while(0)
#endif

// Global Logger that logs the FL training. Need to be used in multiple files may arise, so define it here with extern.
extern Logger g_logger;