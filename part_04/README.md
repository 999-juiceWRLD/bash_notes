# Piping

Piping is a technique used to pass the output of one command directly as input to another command. This is accomplished using the pipe symbol (`|`).

# `grep` Function

- `-i` (`--ignore-case`): Ignore case distinctions in patterns and input data.
- `-v`: (`--invert-match`): Select the non-matching lines of the provided input pattern.
- `-n`: (`--line-number`): Prefix each line of the matching output with the line number in the input file.
- `-w`: Find the exact matching word from the input file or string.
- `-c`: Count the number of occurrences of the provided pattern.

1. `$ grep -i "brown fox" sample.txt`
```sh
1. The quick brown fox jumps over the lazy dog.
5. The quick brown fox is agile and fast.
8. THE QUICK BROWN FOX jumps over the dog again.
10. The quick BROWN fox.
```

2. `$ grep -v "fox" sample.txt `
```sh
2. A journey of a thousand miles begins with a single step.
3. To be or not to be, that is the question.
4. Whether 'tis nobler in the mind to suffer the slings and arrows.
6. Never underestimate the power of a kind word.
7. Life is what happens when you're busy making other plans.
8. THE QUICK BROWN FOX jumps over the dog again.
9. Kindness is the language which the deaf can hear and the blind can see.
```

3. `$ grep -i -v "fox" sample.txt`
```sh
2. A journey of a thousand miles begins with a single step.
3. To be or not to be, that is the question.
4. Whether 'tis nobler in the mind to suffer the slings and arrows.
6. Never underestimate the power of a kind word.
7. Life is what happens when you're busy making other plans.
9. Kindness is the language which the deaf can hear and the blind can see.
```

4. `$ grep -w "is" sample.txt`
```sh
3. To be or not to be, that is the question.
5. The quick brown fox is agile and fast.
7. Life is what happens when you're busy making other plans.
9. Kindness is the language which the deaf can hear and the blind can see.
```

5. `$ grep -i "fox" sample.txt`
```sh
1. The quick brown fox jumps over the lazy dog.
5. The quick brown fox is agile and fast.
8. THE QUICK BROWN FOX jumps over the dog again.
10. The quick BROWN fox.
```

6. `$ grep -i -c "fox" sample.txt`
```sh
4
```

# Output Redirection

- `>` symbol to write to a file
- `>>` to append to a file

Example use case:
- Logging to a logfile (for example using timestamps)
- Dynamically creating (config) files

```sh
$ echo hey there > testfile
$ cat testfile 
hey there

$ echo a new message to append here > testfile
$ cat testfile 
a new message to append here

# it overwrote to existing file. to append, use >>

$ rm -rf testfile 
$ echo first line of the file > testfile
$ echo this is going to be the second line. >> testfile 
$ echo maybe we can add more stuff here >> testfile 
$ cat testfile 
first line of the file
this is going to be the second line.
maybe we can add more stuff here
```

# Getting Word Count

1. To see how many words are there in a file, enter `wc -w <file_name>`:

```sh
$ wc -w testfile
# output: 20 testfile
# this means there are 20 word in testfle
```

The `wc` command automatically shows the name of the file questioned.

2. Count words in a string or text input: You can use `echo` or a pipe to count words in input text:
```sh
$ echo "The quick brown fox jumps over the lazy dog." | wc -w
       9
```

3. Count word across multiple files:
```sh
$ wc -w sample.txt testfile 
#     105 sample.txt
#      20 testfile
#     125 total
```

4. Word count from command output: 
```sh
$ grep -i "quick" sample.txt | wc -w
# 34
```

5. Using piping to achieve same thing:
```sh
$ cat sample.txt testfile | wc -w
#     124
$ cat sample.txt | wc -w
#     105
```

To avoid printing the file name, redirect file using `<`:
```sh
$ wc -w < testfile 
#      20
$ wc -w < sample.txt 
#     105
```

**NOTE:** You may need to remove spaces with `|`, because the bash terminal is sensitive to space when piping. I added spaces to improve readability. To handle this, create `~/.inputrc` and add the line

```sh
"\xC2\xA0": " "
```

Save and exit file. Then type `source ~/.inputrc` and it works (at least for me).