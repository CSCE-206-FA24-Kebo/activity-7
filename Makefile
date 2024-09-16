# Makefile

# Compiler settings
CC = gcc
CFLAGS = -Wall -Wextra -std=c99

# Source files
SRC = car-choice.c

# Output executable name
TARGET = car-choice

# Default target
all: $(TARGET)

# Rule to build the executable
$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

# Clean rule
clean:
	rm -f $(TARGET)

# Run rule
run: $(TARGET)
	./$(TARGET)

# Phony targets
.PHONY: all clean run