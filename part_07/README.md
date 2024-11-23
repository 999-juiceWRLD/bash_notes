# Arithmetic Operations

The syntax for arithmetic expressions is:

```sh
$((expression))
```

The syntax consists of:
- Compound notation `(())` which evaluates the expression.
- The variable operator `$` to store the result.

```sh
$ echo $((2 + 3))
# ouput: 5

$ echo $((2 - 3))
# ouput: -1

$ echo $((7 * 9))
# ouput: 63

$ echo $((33 / 8))
# ouput: 4

$ echo $((19 % 3))
# ouput: 1

$ echo $((2 ** 7))
# ouput: 128
```

Note that command substitution is not the same as arithmetic expansion:

```sh
$(( )) # arithmetic expansion
$( )   # command substitution
```

## Arithmetic Operations for Integer & Floating Point Numbers

| Operators | Operation           |
|-----------|---------------------|
| +         | Addition            |
| -         | Subtraction         |
| *         | Multiplication      |
| /         | Division            |
| %         | Modulus (Remainder) |
| **        | Exponentiation      |

## Test Condition Operators

| Condition   | Equivalent to true when                         |
|-------------|-------------------------------------------------|
| `$a -lt $b` | `$a < $b` (`$a` is less than `$b`)              |
| `$a -gt $b` | `$a > $b` (`$a` is greater than `$b`)           |
| `$a -le $b` | `$a <= $b` (`$a` is less or equal than `$b`)    |
| `$a -ge $b` | `$a >= $b` (`$a` is greater or equal than `$b`) |
| `$a -eq $b` | `$a` is equal to `$b`                           |
| `$a -ne $b` | `$a` is not equal to `$b`                       |

If you are comparing strings, you can use these test conditions:

| Condition  | Equivalent to true when     |
|------------|-----------------------------|
| `$a = $b`  | `$a` is same as `$b`        |
| `$a == $b` | `$a` is same as `$b`        |
| `$a != $b` | `$a` is different from `$b` |
| `-z $a`    | `$a` is empty               |

- `string1 = string2` and `string1 == string2` - The equality operator returns true if the operands are equal.
  - Use the `=` operator with the test `[` command.
  - Use the `==` operator with the `[[` command for pattern matching.

There are also conditions for file type check:

| Condition | Equivalent to true when |
|-----------|-------------------------|
| `-f $a`   | `$a` is a file          |
| `-d $a`   | `$a` is a directory     |
| `-L $a`   | `$a` is a link          |

## `case` Statements

The syntax of the Bash `case` statement consists of the `case` keyword followed by the value to be matched, the `in` keyword, and one or more patterns with corresponding code blocks enclosed in `;;` statements.

```sh
case EXPRESSION in

  PATTERN_1)
    STATEMENTS
    ;;

  PATTERN_2)
    STATEMENTS
    ;;

  PATTERN_N)
    STATEMENTS
    ;;

  *)
    STATEMENTS
    ;;
esac
```