#!/bin/bash

# Exercise_6 - write a shell script that prompts the user for a name of a file or directory 
# and reports if it is a regular file, a directory, or another type of file. 
# Also perform an ls command against the file or directory with the long listing option.

echo "Enter the name of file or directory"
read name

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
