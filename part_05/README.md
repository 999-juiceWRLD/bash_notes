# Input Redirecton (`<`)

`<` (less than symbol): It is known as Input Redirection and is used to take input from a file rather than typing instructions manually.

```sh
$ cat input.txt
yes
$ ./input.sh < input.txt
# this is going to take "yes" as an input argument for ./input.sh
```

# Heredoc (Here-document) Redirection (`<<`)

The `<<` operator is used for multiple lines of input directly in the script or command, instead of using a file. The basic rule of defining here-document is (`command << DELIMITER`).

```sh
command << EOF
line1
line2
line3
EOF
```

`EOF` (or any custom marker) defines the start and end of the multi-line input.

```sh
$ cat << EOF
> naber
> kanka
> bro
> hello
> EOF
naber
kanka
bro
hello
```

Let's look at another example:

```sh
$ cat > output.txt << END
> this is going to be the first line of my file, output.txt
> as long as you don't type END
> it will work!
> let's say END now
> END
$ cat output.txt 
this is going to be the first line of my file, output.txt
as long as you don't type END
it will work!
let's say END now
```

# Here-string (`<<<`)

A here string (`<<<`) is a form of input redirection that allows you to pass a string directly as input to a command. It is a simpler alternative to using a heredoc (`<<`) when you only need a single string or short input.

The syntax for here-string is:
```sh
$ command <<< "string"
```

The string is passed as standard input (`stdin`) to the command.

```sh
$ wc -w <<< "blue plane is flying over the sky"
# output:    7
```

The main difference between `<` and `<<<` is, input redirection (`<`) reads input from a file where here-string `<<<` reads input from a string.

## When to Use `<<<`

- Quick testing: When you don’t want to create a file for input.
- String manipulation: When passing variables or literals directly to commands.
- Simpler syntax: For commands requiring short inputs.

Test expressions?