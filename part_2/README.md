# Variables

A shell variable is a character string in a shell that stores some value. It could be an integer, filename, string, or some shell command itself. Basically, it is a pointer to the actual data stored in memory.

It must be noted that no other special character except underscore (_) can be used in a variable name because all other special characters have special meanings in shell scripting.

The variable definition syntax is:
```sh
variable_name=<variable data>
```

To access a variable, put $ in front of it ($VAR_NAME).

```sh
NAME=john
LAST_NAME=doe

echo my name is $NAME $LASTNAME
```

Invalid variable names:
```sh
2_AN
!ABD
$ABC
&QAID
```

## Getting a User Input

With `read` keyword, you can create an input variable and use it.

```sh
echo enter something here
read varname

echo you entered $varname
```

## Unsetting a Variable

The unset command directs a shell to delete a variable and its stored data from list of variables. It can be used as follows:

```sh
#!/bin/bash

var1="some name with double quotes"
var2=23
echo $var1 $var2

unset var1

echo $var1 $var2

# output:
# some name with double quoutes 23
# 23
```

Variables can hold different types of data; variables can store integers, strings, and characters.

```sh
favorite_color="red"
interest_rate=16.6
next_year=2025
```

Creating a constant variable which cannot be changed during the execution.

```sh
readonly e=2.718281828459
```

* command substitution in bash?
$(...) and (``) ?