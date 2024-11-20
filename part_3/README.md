# Positional Arguments

Positional arguments are the arguments passed to a script or function when it is invoked. They are accessed using special variables `$1`, `$2`, `$3`, and so on, where the number corresponds to the position of the argument.

`posargu.sh` prints first and second variables, and then in a newline prints all the other positional arguments.

```sh
./posargu.sh john doe crazy 12 token 77 llama 80b 3.5 float

# Hello john doe
# script name: ./posargu.sh
# All arguments can be found here: john doe crazy 12 token 77 llama 80b 3.5 float
```

buraya iki sayı ve mult div sum sub komutlarını içeren 3 pos arg.'lık bir script yaz.