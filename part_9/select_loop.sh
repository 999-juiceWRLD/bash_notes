#!/opt/homebrew/bin/bash

select fav in  paris lyon marseille bordeaux

do
    echo "Ma ville préférée est ${fav}"
    break
done
