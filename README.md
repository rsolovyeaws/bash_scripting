# bash_scripting

Repository for scripting tutorials and exercises.

```
#!/bin/bash
set -x #debud 
```
Debug from command line:

bash -vx sample.sh

comparison operators
gt, ge, eq, le, lt, ne 

$# - count command line args
$? - return code of the command
  - 0 = success

redirection of the output
> - write output to file (overwrites), but show error 
>> - append output to file
2> - append error and output to the file
2> /dev/null - redirect error to "nothing" / don't show output 

if
```
if [ condition ]
then
else
fi
```
while
```
#initialize
i=0
while [ $i -lt 10 ]
do
echo $i
# update_condition
i=`expr $i + 1`
done
```
