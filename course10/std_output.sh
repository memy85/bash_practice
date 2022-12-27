#!/bin/bash

# standard output : output that does not contain error
# standard error : error output
ls /notexist
echo $? # this will show 2. Which indicates that there was an error

find /etc -type -f # find all the files in the etc directotry
# however this returns the standard output and error at the same time

# how can we distinguish between standard input and error?
find /etc -type f 2> /dev/null # there are no single errors in the output
# 2> means redirecting the error to /dev/null -> dev, null is a black hole it erases the input files. 
# this does not mean that there isn't error
echo $?

find /etc -type > /dev/null 
# actually the standard output are sent to the /dev/null
# except the standard error

find /ect -type 1> /dev/null
# 1 means standard output

# -----
# standard output is an output that is shared to the screen that is not an error
# standard error is a error that is printed to the screen
# -----


find /etc -type f &> file.txt 
# this prints nothing. because all the std output and error are written to file.txt


find /etc -type f 1> find_results.txt 2> find_errors.txt
# send std output to find results.txt and std errors to find_errors.txt