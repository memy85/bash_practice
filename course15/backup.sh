#!/bin/bash

# Check to make sure the user has entered exactly two arguments.
if [ $# -ne 2 ]
then 
    echo "Usage: backup.sh <source_directory> <target_directory>"
    echo "Please try again."
    exit 1
fi

# Check to see if rsync is installed.
if ! command -v rsync > /dev/null 2>&1
# the output is sent to /dev/null  both the standard input and output
then   
    echo "This script requires rsync to be installed."
    echo "Please use your distribution's package manager to install it and try again."
    exit 2
    # you should have different exit code for different errors
fi

# capture the current date, and store it in the format YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

# rsync_options="-avb --backup-dir $2/$current_date --delete --dry-run"
rsync_options="-avb --backup-dir $2/$current_date --delete"
# a : archive mode, v : verbose, b : don't override the file
# backup-dir : argument for the backup directory($2) with the current date($current_date)
# delete : 
# dry run : it does not copy anythin to anywhere. This is a demo run. If you letting this script out, remove the --dry-run

$(which rsync) $rsync_options $1 $2/$current_date >> backup_$current_date.log
# you should code this way $(which command)