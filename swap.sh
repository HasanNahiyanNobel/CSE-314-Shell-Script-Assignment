#!/bin/bash

temp_name1="_an_unexpected_name_.txt"
temp_name2="_another_unexpected_name_.txt"

mv $1 $temp_name1
mv $2 $temp_name2

mv $temp_name1 $2
mv $temp_name2 $1

exit 0
