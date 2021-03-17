#!/bin/bash


if [ $# -ne 2 ]; then
	exit_code=1 #Invalid number of arguments
	echo "Invalid number of arguments."
elif [ ! -e $1 ] || [ ! -e $2 ]; then
	exit_code=2 #At least one file does not exist
    echo "At least one file does not exist."
elif [ ! -f $1 ] || [ ! -f $2 ]; then
	exit_code=3 #At least one of the files is not regular
	echo "At least one of the files is not regular."
else
	exit_code=0
	
	temp_name1="_an_unexpected_name_.txt"
	temp_name2="_another_unexpected_name_.txt"

	mv $1 $temp_name1
	mv $2 $temp_name2

	mv $temp_name1 $2
	mv $temp_name2 $1
fi

exit $exit_code
