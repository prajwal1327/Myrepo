#factorial of n numbers

#!/bin/bash
array="5 8 9 20 30 40"
for i in $array
do 
	temp=$i
	result=1
	while [ $i -gt 0 ]
	do
		result=`expr $result \* $i`
		i=`expr $i - 1`
	done
	echo "the factorial of $temp is $result"
done

#SUM OF N NUMBERS

#!/bin/bash
echo "enter the number"
read n
sum=0
while [ $n -gt 0 ]
do 
        sum=`expr $sum + $n`
	n=`expr $n - 1`
done
echo "the sum of number is $sum"



