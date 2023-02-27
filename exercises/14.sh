#!/bin/bash

# Exercise_14 - Write the shell script that renames all files in the current directory that end in “.jpg” 
# to begin with today’s date in the following format: YYYY-MM-DD. 
# For example, if a picture of my cat was in the current directory and today was October 31,2016
# it would change name from “mycat.jpg” to “2016–10–31-mycat.jpg”.

current_date=$(date +%F)
for file in *.jpg
do
    echo "$current_date-$file" 
done

