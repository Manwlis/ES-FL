CC = g++
CFLAGS = -c -O2
SOURCES = server.cpp utils.cpp
OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLE = server.out

all: $(OBJECTS) $(EXECUTABLE)

$(EXECUTABLE) : $(OBJECTS)
		$(CC) $(OBJECTS) -o $@  

.cpp.o: *.h
	$(CC) $(CFLAGS) $< -o $@

clean : 
	-rm -f $(OBJECTS) $(EXECUTABLE)

.PHONY: all clean