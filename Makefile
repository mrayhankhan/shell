CC=gcc
CFLAGS=-Wall -Wextra -pedantic -std=c99
TARGET=simple-shell

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c

.PHONY: clean

clean:
	rm -f $(TARGET)