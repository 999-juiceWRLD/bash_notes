#!/opt/homebrew/bin/bash

HERO=hero
ADMINISTRATOR=administrator
HELP=help
ELSE=something_else

echo "try for $HERO"
./login.sh "$HERO"

echo "try for $ADMINISTRATOR"
./login.sh "$ADMINISTRATOR"

echo "try for $HELP"
./login.sh "$HELP"

echo "try for $ELSE"
./login.sh "$ELSE"

echo "try for more than two arguments"
./login.sh "$HERO $ADMINISTRATOR"
