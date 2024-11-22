# Functions in Bash

Functions are simple code blocks to be called multiple times. Functions can be declared in two different ways. 

1. First syntax for declaring a bash function is:

```sh
function_name() {
    # code goes here...
}
```

Single line version:

```sh
function_name() { commands; }
```

2. Second syntax for declaring a bash function is:

```sh
function function_name() {
    # code goes here...
}
```

Single line version:

```sh
function function_name() { commands; }
```

Passing parameters to a function:

```sh
function_name "$arg1" "$arg2"
```

```sh
greet_user() {
    echo hey there $1
}

greet_user "stinky joe!"
```