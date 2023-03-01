#!/bin/bash

# script to add 2 numbers together

# validate that number of arguments is 2

if [ $# -eq 2 ]
then 
	sum=`expr $1 + $2`
	echo $sum
else
	echo "Please enter valid number of args"
	exit 1;
fi
