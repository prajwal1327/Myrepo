#!/bin/bash
var=/home/ubuntu/log
n=$2
echo "$n"
ls -lrt $var | awk 'NR>5 {print $NF}' >output
total=`cat output | wc -l`
echo "$total"
while read line
do 
	if [ $total -gt $n ]
	then
		rm -rf $var/$lin4
		total=`expr $total -1`
	fi
done<output
