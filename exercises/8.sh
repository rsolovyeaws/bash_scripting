#!/bin/bash

# Exercise_6 - write a shell script that prompts the user for a name of a file or directory 
# and reports if it is a regular file, a directory, or another type of file. 
# Also perform an ls command against the file or directory with the long listing option.
# Exercise_7 - Modify the previous script to that it accepts the file or directory name as an argument instead of prompting the user to enter it.
# Exercise_8 - Modify the previous script to accept an unlimited number of files and directories as arguments.

if [ $# -eq 0 ]
then 
    echo "Invalid number of arguments"
    exit 1;
fi

names=$@

for name in $names
do
    if [ -f $name ]
    then 
        echo "$name is a regular file"

    elif [ -d $name ]
    then
        echo "$name is a directory"

    else
        echo "$name is another file type"
    fi

    ls -l $name
done
