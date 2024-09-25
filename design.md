# SimpleShell Design Document

SimpleShell is a basic Unix shell implementation in C, developed as part of [Your Course/Project Name].

## Features

- Basic command execution
- Command piping
- Background process execution
- Command history tracking
- Execution of shell scripts

## Supported Commands

SimpleShell can execute most standard Unix commands. Here's a list of some common commands that are supported:

1. `ls`: List directory contents
   - Example: `ls -l`

2. `echo`: Display a line of text
   - Example: `echo Hello, World!`

3. `cat`: Concatenate and display file content
   - Example: `cat file.txt`

4. `grep`: Search for patterns in files
   - Example: `grep "pattern" file.txt`

5. `wc`: Word, line, character, and byte count
   - Example: `wc -l file.txt`

6. `sort`: Sort lines of text
   - Example: `sort file.txt`

7. `uniq`: Report or omit repeated lines
   - Example: `uniq file.txt`

8. `ps`: Report process status
   - Example: `ps aux`

9. `top`: Display system processes
   - Example: `top`

10. `mkdir`: Make directories
    - Example: `mkdir new_directory`

11. `rm`: Remove files or directories
    - Example: `rm file.txt`

12. `cp`: Copy files and directories
    - Example: `cp file1.txt file2.txt`

13. `mv`: Move or rename files and directories
    - Example: `mv old_name.txt new_name.txt`

14. `chmod`: Change file permissions
    - Example: `chmod 644 file.txt`

15. `ping`: Send ICMP ECHO_REQUEST to network hosts
    - Example: `ping google.com`

16. `history`: Display command history
    - Example: `history`

Note: The ability to execute these commands depends on their availability in the system where SimpleShell is running. Some commands might require additional permissions or installations.

SimpleShell also supports:
- Piping these commands: `command1 | command2`
- Running commands in background: `command &`
- Executing shell scripts: `./script.sh`


## Group Members and Contributions
M Rayhankhan 2022269 	Raunak Kumar Giri  2023427

## SimpleShell Implementation Details

### Overview
SimpleShell is a basic Unix shell implemented in C. It provides a command-line interface for users to execute commands, supports piping, background processes, and maintains a command history.

### Key Components

1. **Main Loop**: Continuously prompts for user input, processes commands, and executes them.

2. **Command Parsing**: 
   - `parse_command()`: Splits the input string into command and arguments.
   - `is_valid_command()`: Checks for invalid characters in the command.

3. **Command Execution**:
   - `execute_command()`: Handles execution of single commands.
   - `execute_piped_commands()`: Manages execution of piped commands.
   - `execute_bash()`: Executes commands from a bash script.

4. **History Management**:
   - `struct History`: Stores up to 20 most recent commands.
   - `struct History2`: Stores execution details (PID, time, duration) for each command.
   - `add_to_history()`: Adds commands to the history.

5. **Background Process Handling**: Supports running commands in the background using '&'.

### Error Handling
The implementation includes error checking for system calls like fork(), execvp(), pipe(), and file operations. Errors are reported using perror() for system call failures.

### Limitations
1. Maximum 99 arguments per command.
2. History limited to 20 commands.
3. No support for shell built-ins like cd, export, etc.
4. Limited error handling for complex scenarios.
5. No support for input/output redirection.

## Link to Private GitHub Repository
https://github.com/mrayhankhan/shell
