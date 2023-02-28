#!/bin/bash

# Exercise_15 - Write the script that renames files based on the file extension. 
# Next,It should ask the user what prefix to prepend to the file name(s). 
# By default, the prefix should be the current date in YYYY-MM-DD format. 
# If the user simply press enter,the current date will be used. 
# Otherwise,whatever the user entered will be used as the prefix. 
# Next,it should display the original file name and new name of the file. 
# Finally,it should rename the file.

prefix=$(date +%F)

# Prompt user for prefix
echo "Please enter extension: "
read new_extension

echo "Please enter prefix (default prefix: $prefix): "
read new_prefix

# save new_prefix length to a variable
length=${#new_prefix}

if [ $length -ne 0 ]
then
    prefix=$new_prefix
fi

for file in *.$new_extension
do
    # Display original file name
    new_name="$prefix-$file"
    echo "Renaming: $file to: $new_name"
    mv $file $new_name
done
