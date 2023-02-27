# bash_scripting

Repository for scripting tutorials and exercises.

```
#!/bin/bash
set -x #debud 
```
Debug from command line:

bash -vx sample.sh

comparison operators
```
-gt, -ge, -eq, -le, -lt, -ne 
-f #(true if file is present at the location) 
-d #(true if directory is present at the location)
```

```
$# --> count command line args
$? --> return code of the command (0 = success)
$@ --> list of command line arguments 
files=$(ls) --> subshell runs comand and stores output into a variable 
```
redirection of the output
```
> - write output to file (overwrites), but show error 
>> - append output to file
2> - append error and output to the file
2> /dev/null - redirect error to "nothing" / don't show output 
```

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
for 
```
#!/bin/bash

for i in 1 2 3 4 5
do
echo $i
done

for ((i=0;i<5;i++))
{
echo $i
}
```

case
```bash
choice=1
case $choice in
  1) echo "one" ;;
  2) echo "two" ;;
  *) echo "$choice is not a valid choice"
ecas
```

for loop iterating through files
```bash
for file in logfiles/*.log
do
        tar -czvf $file.tar.gz $file
done
```
