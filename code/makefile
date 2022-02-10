CC = g++ -std=gnu++2a
CFLAGS = -O2 -Wall -pedantic

SOURCES = server.cpp client.cpp unit_tests.cpp utils.cpp unit_tests.cpp fake_data.cpp messages.cpp
OBJECTS = $(SOURCES:.cpp=.o)
ARCHIVES = lib.a
EXECUTABLES = server client tests

all: $(OBJECTS) $(EXECUTABLES)

# executables
server : server.o lib.a
	$(CC) $(CFLAGS) $^ -o $@
client : client.o lib.a
	$(CC) $(CFLAGS) $^ -lpython3.8 -o $@
tests : unit_tests.o lib.a
	$(CC) $(CFLAGS) $^ -o $@

# archive of object files / static library
lib.a : utils.o fake_data.o messages.o
	ar rcs $@ $^

# object files
.cpp.o :  *.hpp
	$(CC) $(CFLAGS) -I/usr/include/python3.8/ -c client.cpp -o client.o
	$(CC) $(CFLAGS) -c server.cpp -o server.o
	$(CC) $(CFLAGS) -c unit_tests.cpp -o unit_tests.o

	$(CC) $(CFLAGS) -c utils.cpp -o utils.o
	$(CC) $(CFLAGS) -c fake_data.cpp -o fake_data.o
	$(CC) $(CFLAGS) -c messages.cpp -o messages.o
#	$(CC) $(CFLAGS) -I/usr/include/python3.8/ -c $< -o $@

# clean up
clean : 
	-rm -f $(OBJECTS) $(ARCHIVES) $(EXECUTABLES)


.PHONY: all clean