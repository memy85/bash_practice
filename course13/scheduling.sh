#!/bin/bash

# at is very useful in scripting
# at can run a particular script at a particular time

logfile=jot_results.log

echo "The script ran at the following time: $(date)" > $logfile

# atq : queue that is left
# atrm : remove atq with specific number

