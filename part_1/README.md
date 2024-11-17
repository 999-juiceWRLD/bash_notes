# Most Fundamental Commands in Bash

The commands are:
- `echo`
- `cat`
- `nano`
- `touch`
- `mv`
- `pwd`

1. `echo`: used to display text or variables on the terminal.

```sh
echo "hello"
# output: hello
```

```sh
echo hey there
# output: hey there
```

```sh
echo 'another text message'
# output: another text message
```

2. `cat`: displays the content of a file.
```sh
cat text_cat.txt
# output:
# all right, you should see this text if you run cat command in terminal.

# there's more by the way. read all the lines with cat.

```

3. `nano`: creates and opens up a file.
```sh
nano some_file.txt
```

4. `touch`: creates a file. unlike `nano`, it doesn't open that file on default editor.

5. `mv`: move or rename a file/folder.
```sh
mv oldname newname
mv SOURCE DEST
mv olddir newdir
mv old-file new-file
```

6. `pwd`: stands for *print working directory*, which prints the current directory that you're in.
```sh
pwd
# output: /Users/ankaraunifedaisi/developer/bash_tutorial/part_1
```

## How to make a script?

`#!/bin/bash` is called shebang line indicates that the Bash shell executes.

After putting `#!/bin/bash` at the top of the file, the permission is denied when you try to run it (by `./shelltest.sh`), because files need to have a permission to run as an executable file. To address this issue, type `chmod +x <file_name>` (which adds the execution permission for all categories of users) or `chmod u+x <file_name>` (this one adds execute permission only for the file's owner).

When you list all the content in a folder, generally it should look something like this:
```sh
total 24
-rw-r--r--  1 ankaraunifedaisi  staff  1040 Nov 16 19:07 fundamentals.md
-rw-r--r--  1 ankaraunifedaisi  staff    73 Nov 16 18:59 shelltest.sh
-rw-r--r--  1 ankaraunifedaisi  staff   128 Nov 16 18:49 textfile.txt
```

After making `shelltest.sh` executable (by `chmod u+x shelltest.sh`)
```sh
total 24
-rw-r--r--  1 ankaraunifedaisi  staff  1606 Nov 16 19:12 fundamentals.md
-rwxr--r--  1 ankaraunifedaisi  staff    73 Nov 16 18:59 shelltest.sh
-rw-r--r--  1 ankaraunifedaisi  staff   128 Nov 16 18:49 textfile.txt
```

Notice the second line has changed as
```sh
-rwxr--r--  1 ankaraunifedaisi  staff    73 Nov 16 18:59 shelltest.sh
```
(execute permission added for the owner only).

Now execute with `./shelltest.sh`:
```sh
This is a random shell test file
Another line
```

**What about preventing a file from being an executable?**

To remove the executable permission from a file is:
```sh
chmod -x file_name
```

**NOTE:** When you run `echo $SHELL`, it shows which shell is set as your default login shell. If the output is `/bin/bash`, it means Bash is your default shell.