#REVERSE A CONTENT OF FILE

#!/bin/bash
echo "enter the file name"
read file
count=`cat $file | wc -l`
while [ $count -gt 0 ]
do 
	head -$count $file | tail -1 | rev
	count=`expr $count - 1`
done

