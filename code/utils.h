/*
 * utils.h
 *
 * Description
 *
 * Created: 21/6/2021
 * Author : Emmanouil Petrakos
 * Developed with VS code on WSL
 */

#pragma once

#include <string>   /* string */
#include <time.h>   /* time, localtime, strftime */
#include <stdio.h>  /* perror */
#include <stdlib.h> /* exit, EXIT_FAILURE */

using namespace std;

void error( const char *msg );

const string current_time();