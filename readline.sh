#!/bin/bash
echo "enter the file name"
read file
n=1
while read line
do 
	ch=`echo $line |wc -c`
	echo "Number of charecters present in $n in $ch"
done
n=`expr $n - 1`

