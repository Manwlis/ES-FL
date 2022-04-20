CC = g++ -std=gnu++2a
CFLAGS = -O3 -Wall -pedantic

SOURCES = server.cpp client.cpp unit_tests.cpp utils.cpp unit_tests.cpp fake_data.cpp messages.cpp computation_unit.cpp
OBJECTS = $(SOURCES:.cpp=.o)
ARCHIVES = lib.a
EXECUTABLES = server client tests

all: $(OBJECTS) $(EXECUTABLES)

# executables
server : server.o lib.a
	$(CC) $(CFLAGS) $^ -lpython3.10 -o $@
client : client.o lib.a
	$(CC) $(CFLAGS) $^ -lpython3.10 -o $@
tests : unit_tests.o lib.a
	$(CC) $(CFLAGS) $^ -o $@

# archive of object files / static library
lib.a : utils.o fake_data.o messages.o computation_unit.o
	ar rcs $@ $^

# object files
.cpp.o :  *.hpp
	$(CC) $(CFLAGS) -I /usr/include/python3.10/ -c client.cpp -o client.o
	$(CC) $(CFLAGS) -I /usr/include/python3.10/ -c server.cpp -o server.o
	$(CC) $(CFLAGS) -c unit_tests.cpp -o unit_tests.o

	$(CC) $(CFLAGS) -c utils.cpp -o utils.o
	$(CC) $(CFLAGS) -c fake_data.cpp -o fake_data.o
	$(CC) $(CFLAGS) -c messages.cpp -o messages.o
	$(CC) $(CFLAGS) -I /usr/include/python3.10/ -c computation_unit.cpp -o computation_unit.o
#	$(CC) $(CFLAGS) -I/usr/include/python3.10/ -c $< -o $@

# clean up
clean : 
	-rm -f $(OBJECTS) $(ARCHIVES) $(EXECUTABLES)


.PHONY: all clean