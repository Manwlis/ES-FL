
#include <iostream>		/* << */
#include <bitset>

using namespace std;



unsigned char* serialize_int( unsigned char *buffer , int value )
{
	/* Write big-endian int value into buffer; assumes 32-bit int and 8-bit char. */
	buffer[0] = value >> 24;
	buffer[1] = value >> 16;
	buffer[2] = value >> 8;
	buffer[3] = value;
	return buffer + 4;
}

unsigned char * deserialize_int( unsigned char *buffer, int *value )
{

	*value = (buffer[0] << 24) | (buffer[1] << 16) | (buffer[2] << 8) | (buffer[3]);

	return buffer - 4;
}

int main( int argc , char** argv )
{
	int value = 1000000;
	int rv;

	unsigned char buffer[4], *ptr;

	ptr = serialize_int( buffer , value );
	deserialize_int( buffer , &rv );

	cout << hex << value << dec << endl;

	for (const auto &item : buffer ) {
		cout << hex << int(item) << " ";
    }
    cout << endl;

	cout << hex << rv << dec << endl;


    std::cout << "a = " << std::bitset<32>(value)  << std::endl;
    std::cout << "b = " << std::bitset<32>(rv)  << std::endl;

	cout << value << endl;
	cout << rv << endl;

	return 0;
}