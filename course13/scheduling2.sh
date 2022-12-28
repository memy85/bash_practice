#!/bin/bash

logfile=job_results.logfile

/usr/bin/echo "The script ran at the following time: $(/usr/bin/date)" > $logfile
# the full path of a command is important. 
# because, this way it will run the right command that the programmer intended.

# we will learn how to schedule jobs using crontab
# crontab -e ; here e means edit

# crontab -u wonseok -e
# -u stands for user
