# Dylan Zingler
# Project 02 CMSC 417 NETWORKING

# Credit given to Yanick Rochon
# Some of the format/variables were taken for linking and compiling the code

# Variables
TARGET   = server
rm       = rm -f

# Compiler
CC       = gcc -c
CFLAGS = -ansi -pedantic-errors -Wall -Werror -pedantic -D_BSD_SOURCE -std=gnu99 -g 

# Linker
LINKER   = gcc -o
LFLAGS = -ansi -pedantic-errors -Wall -Werror -pedantic -D_BSD_SOURCE -std=gnu99

# File Groups
SOURCES  := $(wildcard *.c)
OBJECTS  := $(SOURCES:.c=*.o)
EDITED_FILES  := $(wildcard *~)
TESTS := $(wildcard test*.sh)
OUTPUT_FILES := $(wildcard *.out)
TEXT_FILES := $(wildcard *.txt)

# Generate Target (LINKING STAGE)
$(TARGET): obj
	$(LINKER) $(TARGET) $(LFLAGS) $(OBJECTS)
	echo "Linking complete!"

# Compiling Stage (Generatingv.o Files)
obj: $(SOURCES) 
	$(CC) $(CFLAGS) $(SOURCES) 
	echo "Compilation complete!"

# Testing   
test:
	./tests.sh

# Compression	
zip:
	zip $(TARGET) ./tests.sh $(SOURCES) ./Makefile config.csv
# Clean-Up
clean:
	$(rm) $(TARGET) $(OBJECTS) $(EDITED_FILES) $(OUTPUT_FILES) $(TEXT_FILES)
	echo "Cleanup complete!"
