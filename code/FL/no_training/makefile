CC = g++ -std=gnu++2a
CFLAGS = -O3 -Wall -pedantic

SOURCES = server.cpp client.cpp utils.cpp
OBJECTS = $(SOURCES:.cpp=.o)
ARCHIVES = lib.a
EXECUTABLES = server client

all: $(OBJECTS) $(EXECUTABLES)

# executables
server : server.o lib.a
	$(CC) $(CFLAGS) $^ -o $@
client : client.o lib.a
	$(CC) $(CFLAGS) $^ -o $@

# archive of object files / static library
lib.a : utils.o
	ar rcs $@ $^

# object files
%.o : %.cpp  *.hpp
	$(CC) $(CFLAGS) -c client.cpp           -o client.o
	$(CC) $(CFLAGS) -c server.cpp           -o server.o

	$(CC) $(CFLAGS) -c utils.cpp            -o utils.o

# clean up
clean : 
	-rm -f $(OBJECTS) $(ARCHIVES) $(EXECUTABLES)


.PHONY: all clean