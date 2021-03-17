#!/bin/bash

number=$1

length=${#number}
sum=0

for(( i=0; i<=$length; i++ ))
do
	digit=${number:i:1}
	sum=$((sum+digit))
done

echo $sum
