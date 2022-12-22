#!/bin/bash

echo "Wha is your name?"
read name # saves the input to name

if [ $name ]; then
    echo "$name sounds alright to me"
else 
    echo "No, its not a name. sounds bad"
fi 


