# Loops

A `while` loop simply keeps runnning as long as a condition is met. Syntax for `while` loops:

```sh
while [ CONDITION ]; then
do
    # code goes here...
done
```

`until` loop is used to run as long as a given condition is **false**.

```sh
until [ CONDITION ]
do
    # code goes here...
done
```

## The `continue` Command

`continue` statement skips the remaining commands inside the loop for the current iteration and passes to next iteration. The `continue` command is used to step over a particular entry, or test whether the iterator matches that entry.

## The `break` Command

The `break` loop breaks out of that loop and prevents any more processing.

`select` loop is used for simple text-based menus in scripts. It is a handy tool when programmers ask users to choose one or more items from a list of options.

Syntax for `select` loop is:

```sh
select variable_name in var1 var2 ... varN

do
    # code goes here...
done
```

The `select` loop will iterate through each variable of the `var1` `var2` ... `varN` list one by one and execute the command inside the code block for each variable from the variables list.

Check out `select_loop.sh`:

```sh
$ ./select_loop.sh

1) paris
2) lyon
3) marseille
4) bordeaux
#? 4

Ma ville préférée est bordeaux
```

associative arrays?