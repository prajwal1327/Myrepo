#!/bin/bash
a=`awk 'NR==4 {print $3}' menu`
echo $a
