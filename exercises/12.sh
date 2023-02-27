#!/bin/bash

# Exercise_12 - Write a shell script that consists of a function 
# that displays the number of files in the present working directory. 
# Name this function “file_count” and call it in your script. 
# If you use variable in your function, remember to make it a local variable.

file_count(){
count=$(ls -lh | wc -l)
echo "Number of files: $(($count - 1))"
}

file_count;
