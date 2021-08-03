CC = g++
CFLAGS = -O2 -Wall -pedantic
SOURCES = server.cpp client.cpp utils.cpp messages.cpp unit_tests.cpp
OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLES = server client test

all: $(OBJECTS) server client

test : messages.o
	$(CC) $(CFLAGS) -c unit_tests.cpp -o unit_tests.o
	$(CC) $(CFLAGS) unit_tests.o messages.o -o $@

server : server.o utils.o messages.o
	$(CC) $(CFLAGS) server.o utils.o messages.o -o $@

client : client.o utils.o messages.o
	$(CC) $(CFLAGS) client.o utils.o messages.o -o $@

.cpp.o: *.h
	$(CC) $(CFLAGS) -c $< -o $@

clean : 
	-rm -f $(OBJECTS) $(EXECUTABLES)

.PHONY: all clean test