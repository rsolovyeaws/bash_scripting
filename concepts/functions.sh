#!/bin/bash

# define functions
function add()
{
a=$1
b=$2
sum=`expr $a + $b`
echo $sum;
}

function sub()
{
a=$1
b=$2
sum=`expr $a - $b`
echo $sum;
}

function mul()
{
a=$1
b=$2
sum=`expr $a \* $b`
echo $sum;
}

function div()
{
a=$1
b=$2
sum=`expr $a / $b`
echo $sum;
}

#call
#add 10 20;
#sub 10 20;
#mul 10 20;
#div 10 20;
