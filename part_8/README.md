# Arrays

Arrays can contain different data types. Syntax for declaring an array in bash is:

```sh
array_name=(element1 element2 element3 element4)
```

To access any element of an array:
```sh
${array[index]}
```

Print out all the array elements at once:
```sh
echo ${array[*]}
```

You can update the value of any element:
```sh
array[index]="updated content"
```

Get the size of the array:
```sh
${#array[@]}
```

A way of appending an element to an array is:
```sh
array+=(element)
```

To delete N'th element:
```sh
unset array[N]

# also deleting all the array is simply `unset array`
```

**NOTE:** The `-e` option enables the interpretation of escape sequences in the string.

## For Loops

To run a `for` loop in command line directly:

```sh
for i in 1 2 3 4 5; do echo $i; done

# 1
# 2
# 3
# 4
# 5
```

Numbers don't need to be in ascending order, they can be in any order:

```sh
for i in 3 43 44 11 9; do echo $i; done

# 3
# 43
# 44
# 11
# 9
```

brace expansion?

The syntax of a for loop with brace expansion is as follows:

```
for i in {START..END}
for i in {START..END..INCREMENT/DECREMENT}
```

For loops using filenames:

```sh
#!/bin/bash
for file in word-list.sh number-range.sh number-range2.sh filenames.sh
do 
 ls -lh "$file"
done
```

It would be pretty pointless to have a script that only does what ls can do, but it does demonstrate how to access filenames inside the loop body.

## `for` Loops Using Command Line Parameters

We can add some more flexibility by passing in the filename pattern on the command line. The `$*` variable represents all of the command line parameters passed to the script.

### `$*` Variable

The `$*` variable represents each command-line argument as a single string. The arguments are separated by spaces and aren’t joined together.

```sh
# experimental.sh

for arg in $*
do
    echo $arg
done

$ ./experimental.sh arg1 arg2 arg3 aye whats up boo boo # if you put ' it won't work until you put the other '.

# output:
# arg1
# arg2
# arg3
# aye
# whats
# up
# boo
# boo
```

### Using `"$*"`

Enclosing the variable with `$*` with double quotes means all arguments will be treated as a single string jointly.

```sh
# experimental.sh

for arg in "$*"
do
    echo $arg
done

$ ./experimental.sh its a wonderful day in california # don't use apostrophe

# Output: its a wonderful day in california
```

using `$@` and `"$@"` ?

Check out `fl_cli.sh`:

```sh
$ ./fl_cli.sh .
total 88
-rw-r--r--  1 ankaraunifedaisi  staff   1.6K Nov 20 15:28 README.md
-rwxr--r--  1 ankaraunifedaisi  staff   600B Nov 18 20:40 arrays.sh
-rwxr--r--  1 ankaraunifedaisi  staff   199B Nov 19 18:18 bracexpansion.sh
-rwxr--r--  1 ankaraunifedaisi  staff   1.0K Nov 19 19:07 create_files.sh
-rwxr--r--  1 ankaraunifedaisi  staff    84B Nov 19 18:21 cstyle_loop.sh
-rwxr--r--  1 ankaraunifedaisi  staff   131B Nov 20 09:47 eval_loop.sh
-rwxr--r--  1 ankaraunifedaisi  staff    67B Nov 20 15:31 fl_cli.sh
-rwxr--r--  1 ankaraunifedaisi  staff   346B Nov 20 10:00 loop_in_array.sh
-rwxr--r--  1 ankaraunifedaisi  staff   157B Nov 19 18:11 loops.sh
-rwxr--r--  1 ankaraunifedaisi  staff    76B Nov 19 18:12 range_loop.sh
-rwxr--r--  1 ankaraunifedaisi  staff   119B Nov 19 18:10 word_list.sh
$ ./fl_cli.sh ../..
total 0
drwxr-xr-x  16 ankaraunifedaisi  staff   512B Apr 30  2024 base_env
drwxr-xr-x  12 ankaraunifedaisi  staff   384B Nov 18 20:17 bash_tutorial
drwxr-xr-x  13 ankaraunifedaisi  staff   416B Oct 24 15:44 lab
drwxr-xr-x  20 ankaraunifedaisi  staff   640B Aug 19  2022 tensorflow_env
$ ./fl_cli.sh ../
total 8
-rw-r--r--   1 ankaraunifedaisi  staff   987B Nov 19 19:20 README.md
drwxr-xr-x   5 ankaraunifedaisi  staff   160B Nov 16 19:23 part_1
drwxr-xr-x   6 ankaraunifedaisi  staff   192B Nov 16 20:21 part_2
drwxr-xr-x   5 ankaraunifedaisi  staff   160B Nov 16 20:56 part_3
drwxr-xr-x   6 ankaraunifedaisi  staff   192B Nov 17 12:28 part_4
drwxr-xr-x   4 ankaraunifedaisi  staff   128B Nov 17 13:35 part_5
drwxr-xr-x   8 ankaraunifedaisi  staff   256B Nov 18 20:16 part_6
drwxr-xr-x   9 ankaraunifedaisi  staff   288B Nov 18 20:05 part_7
drwxr-xr-x  13 ankaraunifedaisi  staff   416B Nov 20 15:31 part_8
```

**NOTE:** You can enter more than one argument for `fl_cli.sh`. It will print out all paths entered.
