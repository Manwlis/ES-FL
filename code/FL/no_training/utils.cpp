/**
 * @file utils.cpp
 * @author Emmanouil Petrakos
 * @brief File with generic helper functions
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

	void read_server_info ( std::string filename , std::string& SERVER_IP , uint16_t& SERVER_PORT )
	{
		std::ifstream file( filename );
		std::string line;

		std::getline( file , SERVER_IP );
		std::getline( file , line );
		SERVER_PORT = static_cast<uint16_t>( stoi( line ) );

		file.close();
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