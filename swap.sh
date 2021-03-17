#!/bin/bash

file1=$1
file2=$2

temp_name1="_an_unexpected_name_.txt"
temp_name2="_another_unexpected_name_.txt"

mv $file1 $temp_name1
mv $file2 $temp_name2

mv $temp_name1 $2
mv $temp_name2 $1
