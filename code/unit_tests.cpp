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

#include "utils.h"
#include "messages.h"
#include "fake_data.h"

using namespace std;


int endianess_test();


int main ( int argc , char** argv )
{
    assert( endianess_test );
    cout << "ok" << endl;
}


/**************************************************************************************************/
/* Test server to client message endianess change.                                                */
/**************************************************************************************************/
int endianess_test()
{
    // create dumb data
    struct server_to_client_msg stoc_msg;
    stoc_msg.epoch = 1;
    for ( int i = 0 ; i < WEIGHTS_NUM ; i++ )
    {
        stoc_msg.deltas[i] = 1;
    }

    // create clone
    struct server_to_client_msg stoc_msg_clone;
    memcpy( &stoc_msg_clone , &stoc_msg , sizeof(stoc_msg) );

    // change endianess on clone
    server_to_client_msg_big_endianess( stoc_msg_clone );
    server_to_client_msg_little_endianess( stoc_msg_clone );

    // check that clone remains the same
    if ( stoc_msg_clone.epoch != stoc_msg.epoch )
        return 0;
    for ( int i = 0 ; i < WEIGHTS_NUM ; i++ )
    {
        if ( stoc_msg_clone.deltas[i] != stoc_msg.deltas[i] )
            return 0;
    }
    return 1;
}