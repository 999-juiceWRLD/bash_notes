#!/opt/homebrew/bin/bash

number1=20
number2=5

echo $(expr $number1 + $number2)
echo $(expr $number1 - $number2)
echo $(expr $number1 / $number2)
echo $(expr $number1 % $number2)
echo $(expr $number1 \*  $number2) # when using expr, you have to use
# backslash for asterisk (*).
# echo $(expr $number1 \*\* $number2) # expr command doesn't support exponentiation operator
# instead, do this:
echo $((number1 ** number2))
