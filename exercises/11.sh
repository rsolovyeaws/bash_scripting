#!/bin/bash

# Exercise_11 - Write a script that executes the command “usr/bin/ls”. 
# If the command return a 0 exit status, report “command succeeded” and exit with a 0 exit status.
# If the command returns a non-zero exit status, report “Command failed” and exit with a 1 exit status.

/usr/bin/ls 
if [ $? -eq 0 ]
then 
   echo "command succeeded"
   exit 0;
else 
   echo "command failed"
   exit 1;
fi
