#!/bin/bash

echo "Testing SimpleShell commands..."

# Test ls
echo "ls" | ./simple-shell
echo "ls -l" | ./simple-shell

# Test echo
echo "echo Hello, World!" | ./simple-shell

# Test wc
echo "wc -l simple-shell.c" | ./simple-shell

# Test grep
echo "grep main simple-shell.c" | ./simple-shell

# Test cat and pipe
echo "cat simple-shell.c | grep int" | ./simple-shell

# Test sort
echo "sort test_file.txt" | ./simple-shell

# Test uniq
echo "uniq test_file.txt" | ./simple-shell

echo "All tests completed."
