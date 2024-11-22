# `if-elif-else` in Bash

parameter expansion?

The most basic decision making structure is an if condition. The syntax of if conditions in Bash is:

```
if [ condition ]; then
    code
elif [ condition ]; then
    code
else 
    code
fi
```

**Attention:**
- There must be a space between the opening and closing brackets and the condition you write. Otherwise, the shell will complain of error.
- There must be space before and after the conditional operator (`=`, `==`, `<=`, etc). Otherwise, you'll see an error like "unary operator expected".

Files in this section:
- `check_root.sh`: Checks if the user is root or not.
- `ifelifelse.sh`: Greet user with respect to argument given.
- `iftest.sh`: This is a test for `ifelifelse.sh`, invokes that file and check for different arguments given, namely boss, help and something user enters.
- `is_even_or_odd.sh`: Checks if a number entered by a user is even or odd.

## Difference Between `[]` and `[[]]`


Fix the error with `bmi.sh`. there's no floating point arithmetic in bash?