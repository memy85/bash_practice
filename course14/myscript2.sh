#!/bin/bash

# what if there is no argmument?
# you need to check if you need one

lines=$(ls -lh $1 | wc -l)
# wc -l counts the line
# piping the $1 to a ls command with word cunt

if  [ $# -ne 1 ]
# $# returns the number of arguments that is input into the code
then
    echo "This script requires exactly one directory path passed to it."
    echo "Please try again"
    exit 1
fi

echo "You have $(($lines-1)) objects in the $1 directory"


