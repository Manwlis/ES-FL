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

#include <string>   /* string */
#include <time.h>   /* time, localtime, strftime */
#include <stdio.h>  /* perror */
#include <stdlib.h> /* exit, EXIT_FAILURE */

using namespace std;

#define TRUE  1
#define FALSE 0

#define RESET   "\033[0m"
#define RED     "\033[31m"  /* Red */
#define GREEN   "\033[32m"  /* Green */
#define YELLOW   "\033[33m"  /* Yellow */

#define CURRENT_TIME GREEN << current_time() << RESET

void error( const char* msg );

string current_time();