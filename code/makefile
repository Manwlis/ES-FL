CC = g++
CFLAGS = -O2 -Wall -pedantic
SOURCES = server.cpp client.cpp utils.cpp
OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLES = server client

all: $(OBJECTS) server client

server : server.o utils.o
	$(CC) $(CFLAGS) server.o utils.o -o $@

client : client.o utils.o
	$(CC) $(CFLAGS) client.o utils.o -o $@

.cpp.o: *.h
	$(CC) $(CFLAGS) -c $< -o $@

clean : 
	-rm -f $(OBJECTS) $(EXECUTABLES)

.PHONY: all clean