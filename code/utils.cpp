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
}
/**************************************************************************************************/
/* Timer                                                                                          */
/**************************************************************************************************/
/**
 * @brief Construct a new timer::timer object. Sets current time as starting time.
 * 
 */
Timer::Timer()
{
	set_start_time();
}

/**
 * @brief Sets the starting point of the timer.
 * 
 */
void Timer::set_start_time()
{
	start_time = std::chrono::steady_clock::now();
}

/**
 * @brief Calculates and returns elapsed time.
 * 
 * @return int64_t elapsed time in milliseconds
 */
int64_t Timer::since()
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
Logger::Logger( std::ostream* target )
{
	out = target;
}

/**
 * @brief Overide of the () operator. Used to log events
 * 
 * @param Level level of the event 
 * @param std::string& info about the event 
 * @param char* function where the event occured 
 * @param char* file where the event occured
 * @param int the line where the event occured
 */
void Logger::operator()( Level level , const std::string& description, const char* function , const char* file , int line )
{
	*(this->out)
		<< '[' << static_cast<int>(level) <<  ']'
		<< GREEN << std::setw(10) << g_timer.since() << RESET << "	"
		//<< description.length() << " "
		<< std::setw(70) << std::left << description << std::right 
		#if VERDOSE_LOGGING
			<< std::setw(4) << function
			<< std::setw(11) << file
			<< std::setw(5) << line
		#endif
		<< std::endl;
}