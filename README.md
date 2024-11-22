# Bash Notes

An introduction to Bash. I used the resources (but not limited to):

1. [Linux Handbook](https://linuxhandbook.com/bash/)
2. [Linux Hint](https://linuxhint.com/what_is_bash_script/)
3. [GNU Software Manual](https://www.gnu.org/software/bash/manual/html_node/index.html)
4. [Javatpoint](https://www.javatpoint.com/bash)
5. [Bash Scripting Tutorial for Beginners](https://www.youtube.com/watch?v=tK9Oc6AEnR4&t=333s)
6. [Linux Simply](https://www.linuxsimply.com)

`tree -d -L 2 .`: To control the depth of the tree use the `-L` option.

Just make some reference notes for me. Nothing much.

Parts of this repository:

1. Basic commands, how to make a script and make it executable.
2. Defining variables, getting a user input and unsetting a variable.
3. Positional arguments.
4. Pipes, `grep` function, output redirection.
5. Input redirection, here-doc, here-string.
6. `if-elif-else` conditionals.
7. Arithmetic operators, test condition operators, `case` statements.
8. Arrays and introductory for loops. Looping through an array - obviously.
9. Other types of loops.
10. Functions.

Simple tasks to do (not started yet). These are going to be simple projects to practice what I've learned & extend.

- Beginner:
    - File Organizer:
        - Write a script that organizes files in a directory into subdirectories based on their extensions.
        - For example, move all `.txt` files into a `TextFiles/` directory, `.jpg` files into an `Images/` directory, etc.
    - Basic Calculator:
        - Create a script that accepts two numbers and an operator (`+`, `-,` `*`, `/`) as command-line arguments and performs the calculation.
    - File Line Calculator:
        - Write a script that takes a filename as an argument and prints the number of lines in the file.
    - Simple Backup
        - Create a script that takes a source directory and a destination directory as arguments and copies all files from the source to the destination.

- Intermediate:
    - To-Do List Manager:
        - Write a script that lets users add, view, and delete tasks from a simple text-based to-do list. Store tasks in a `todo.txt` file.
    - System Monitor:
        - Create a script that displays the current date, time, CPU usage, memory usage, and disk space in a nicely formatted output.
        - Add an option to save the output to a log file.
    - Custom Grep Tool:
        - Write a script that takes a directory and a search term as input and searches for the term in all text files within the directory.
        - Display matching lines with line numbers.
    - Backup & Compress:
        - Create a script that archives and compresses a specified directory, names the archive based on the current date and time, and stores it in a `backups/` directory.