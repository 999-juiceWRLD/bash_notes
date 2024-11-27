# What is `awk` in Bash

`awk` is a text processing tool and programming language used to manipulate data and generate reports. It is particularly useful for working with structured text data, such as log files or CSV files. `awk` processes input line-by-line and splits each line into fields, allowing users to perform actions on each field or line based on patterns or conditions. Knowing `awk` pays off well as a lot of output filtering & reformatting is done in Bash.

The code below will print the first field (first column of each line) of `ps` command:
```sh
$ ps | awk '{print $1}'

# PID
# 4443
# 15196
# 4585
# Note that `ps | awk '{print $0}'` means to print out everything.
```

- Each input line is divided into fields, accessible via `$1`, `$2`, ..., `$NF` (where `NF` is the number of fields in the line).
- The default field separator is whitespace, but you can customize it using the `-F` option or by setting `FS`.

```sh
$ cat /etc/passwd

# nobody:*:-2:-2:Unprivileged User:/var/empty:/usr/bin/false
# root:*:0:0:System Administrator:/var/root:/bin/sh
# daemon:*:1:1:System Services:/var/root:/usr/bin/false
# ...

$ awk -F ":" '{print $1}' /etc/passwd

#nobody
# root
# daemon
# ...
```

Printing out more than just a column:

```sh
$ awk -F ":" '{print $1 $6 $7}' /etc/passwd

# nobody/var/empty/usr/bin/false
# root/var/root/bin/sh
# daemon/var/root/usr/bin/false
# ...
```

Which is not readable, and that's because we didn't provide any spacing information.

```sh
$ awk -F ":" '{print $1" "$6" "$7}' /etc/passwd

# nobody /var/empty /usr/bin/false
# root /var/root /bin/sh
# daemon /var/root /usr/bin/false
```

Instead of putting spaces, using tabs between fields look better:

```sh
$ awk -F ":" '{print $1"\t"$6"\t"$7}' /etc/passwd

# nobody	/var/empty	/usr/bin/false
# root	/var/root	/bin/sh
# daemon	/var/root	/usr/bin/false
```

```sh
$ awk -F ":" '{print NR, NF, $1}' /etc/passwd
# it's the same with: awk -F ":" '{print NR" "NF" "$1}' /etc/passwd

# 11 7 nobody
# 12 7 root
# 13 7 daemon
```

In `awk`, `FS` (Field Separator) and `OFS` (Output Field Separator) are two key variables used for handling and formatting fields in text processing.

`FS`:
    - Purpose: Determines how `awk` splits input lines into fields.
    - Default Value: A space or tab. If multiple spaces or tabs separate fields, `awk` treats them as a single separator by default.
    - Usage: You can set FS directly in an AWK script or on the command line. Use it to specify a custom delimiter for splitting fields.

`OFS` (Output Field Separator):
    - `OFS` defines the output field separator, used when `awk` reconstructs output lines.
    - By default, `OFS` is a single space.

```sh
$ echo "name,age,location" | awk 'BEGIN{FS=","; OFS=" | "} {print $1,$2,$3}' # not print $0 as it will print in default state
# name | age | location
```

Another example:

```sh
$ awk 'BEGIN {FS=":"; OFS=" | "} {print $1, $6, $7}'
# it's the same with: awk -F ":" 'BEGIN {OFS=" | "} {print $1, $6, $7}'

# nobody | /var/empty | /usr/bin/false
# root | /var/root | /bin/sh
# daemon | /var/root | /usr/bin/false
```

Now let's look at `/etc/shells`:

```sh
$ cat /etc/shells

# List of acceptable shells for chpass(1).
# Ftpd will not allow users to connect who are not using
# one of these shells.

/bin/bash
/bin/csh
/bin/dash
/bin/ksh
/bin/sh
/bin/tcsh
/bin/zsh
/opt/homebrew/bin/bash
```

In order to print the lines which start with a slash, enter:

```sh
$ awk -F "/" '/^\// {print $NF}' /etc/shells

bash
csh
dash
ksh
sh
tcsh
zsh
bash
```

Here, `$NF` stands for the value of the last field. `NF` stands for *number of fields*, and contains the total number of fields in the current line. `$NF` refers to the value of the last field in the line. It is particularly useful when the number of fields varies across lines.

Check out the input.txt:

```txt
apple orange banana
cat dog
hello world example test
```

Example usage:
```sh
$ awk '{print $NF}' data.txt

# banana
# dog
# test
```

Combined usage of `NF` and `$NF`:

```sh
$ awk '{print "Fields:", NF, "Last Field:", $NF}' input.txt

Fields: 3 Last Field: banana
Fields: 2 Last Field: dog
Fields: 4 Last Field: test
```

`length()` function returns the number of characters in given string. To see which lines have more characters than any given number in `/etc/shells`:

```sh
$ awk 'length($0) > 7' /etc/shells

# /bin/bash
# /bin/csh
# /bin/dash
# /bin/ksh
# /bin/tcsh
# /bin/zsh
# /opt/homebrew/bin/bash

$ awk 'length($0) < 7' /etc/shells
# Output is an empty line

$ awk 'length($0) < 8' /etc/shells
# Output: /bin/sh
```

Simple if condition with `awk`:

```sh
$ echo -e "10\n25\n50\n75\n100" | awk '{if($1 > 50) print $NF}'
# 75
# 100
$ echo -e "10\n25\n50\n75\n100" | awk '{if ($1 > 49) print $NF}'
# 50
# 75
# 100
```

Or using a file:

```sh
$ awk '{ if($1 > 50) print $1}' numbers.txt
```

### Looping in `awk`

```sh
$ awk 'BEGIN{ for (i = 1; i <= 10; i++) print "The square root of", i, "is", i * i }'

# The square root of 1 is 1
# The square root of 2 is 4
# The square root of 3 is 9
# The square root of 4 is 16
# The square root of 5 is 25
# The square root of 6 is 36
# The square root of 7 is 49
# The square root of 8 is 64
# The square root of 9 is 81
# The square root of 10 is 100
```

**How to print out all directories/files that start & end with a character or string?**

### Files Starting with a Certain String