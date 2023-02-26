#!/bin/bash

# check if return code is equal to 0

ls -ltr > out_file

if [ $? -eq 0 ]
then
	echo "Command was sucessfull"
else
	echo "Command had failed"
fi

lsasd -ltr 2> /dev/null

if [ $? -eq 0 ]
then
        echo "Command was sucessfull"
else
        echo "Command had failed"
fi
