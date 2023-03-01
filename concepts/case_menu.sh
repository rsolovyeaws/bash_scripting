#!/bin/bash

#import functions.sh
. functions.sh

#ask for operation

echo "Enter your choice
		1. Addition
		2. Subtraction 
		3. Multiplication
		4. Division"
read n;

case $n in
1) echo "Enter 2 numbers"
	read a b
	add $a $b ;;
2) echo "Enter 2 numbers"
        read a b
        sub $a $b ;;
3) echo "Enter 2 numbers"
        read a b
        mul $a $b ;;
4) echo "Enter 2 numbers"
        read a b
        div $a $b ;;
*) echo "Invalid input"
	exit 1 ;;
esac
 
