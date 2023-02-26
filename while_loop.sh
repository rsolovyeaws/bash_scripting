#!/bin/bash

# Debug
# set -x

# initialize
i=0
while [ $i -lt 10 ]
do
echo $i
# update_condition
i=`expr $i + 1`
done
