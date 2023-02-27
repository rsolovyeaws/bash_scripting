#!/bin/bash

# Exercise_12 - Write a shell script that consists of a function 
# that displays the number of files in the present working directory. 
# Name this function “file_count” and call it in your script. 
# If you use variable in your function, remember to make it a local variable.

# Exercise_13 - Modify the script from the previous exercise. 
# Make the “file_count” function accept a directory as an argument. 
# Next, have the function display the name of the directory followed by a colon. 
# Finally display the number of files to the screen on the next line. 
# Call the function three times. 
# First on the “/etc” directory, next on the “/var” directory and finally on the “/usr/bin” directory.

file_count(){
directory=$1
echo "$directory : "
count=$(ls -lh $directory | wc -l)
echo "Number of files: $(($count - 1))"
}

file_count "/etc";
file_count "/var";
file_count "/usr/bin";
