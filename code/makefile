CC = g++ -std=gnu++2a
CFLAGS = -O2 -Wall -pedantic

SOURCES = server.cpp client.cpp utils.cpp fake_data.cpp messages.cpp
TEST_SOURCES = unit_tests.cpp
OBJECTS = $(SOURCES:.cpp=.o) $(TEST_SOURCES:.cpp=.o)
ARCHIVES = lib.a
EXECUTABLES = server client test

all: $(OBJECTS) server client

# executables
server : server.o lib.a
	$(CC) $(CFLAGS) $^ -o $@
client : client.o lib.a
	$(CC) $(CFLAGS) $^ -o $@

# archive of object files / static library
lib.a : utils.o fake_data.o messages.o
	ar rcs $@ $^

# object files
.cpp.o : *.h
	$(CC) $(CFLAGS) -c $< -o $@

# clean up
clean : 
	-rm -f $(OBJECTS) $(ARCHIVES) $(EXECUTABLES)


test : $(OBJECTS) lib.a
	$(CC) $(CFLAGS) unit_tests.o lib.a -o test


.PHONY: all clean test