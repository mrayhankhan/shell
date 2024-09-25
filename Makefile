CC=gcc
CFLAGS=-Wall -Wextra -pedantic -std=c99
TARGET=simple_shell

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c

.PHONY: clean run

clean:
	rm -f $(TARGET)

run: $(TARGET)
	./$(TARGET)