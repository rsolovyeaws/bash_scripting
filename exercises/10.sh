#!/bin/bash

# Exercise_10 - Write a shell script that accepts a file or directory name as an argument. Have the script report if it is reguler file, a directory, or another type of file. If it is a directory, exit with a 1 exit status. If it is some other type of file, exit with a 2 exit status.

if [ $# -ne 1 ]
then 
    echo "Invalid number of arguments"
    exit 999;
fi

name=$1

if [ -f $name ]
then 
    echo "$name is a regular file"

elif [ -d $name ]
then
   echo "$name is a directory"
   exit 1;

else
   echo "$name is another file type"
   exit 2;

fi


