#!/bin/bash

exit_if_previous_command_was_unsuccessful()
{
	echo "Entered"
	if [ ! $? -eq 0 ]; then #Previous command was not successfull
		exit_code=5 #Some other error occurred
		echo "Some other error occurred."
		exit $exit_code
	fi
}


if [ $# -ne 2 ]; then
	exit_code=1 #Invalid number of arguments
	echo "Invalid number of arguments."
	
	
elif [ ! -e $1 ] || [ ! -e $2 ]; then
	exit_code=2 #At least one file does not exist
    echo "At least one file does not exist."
    
    
elif [ ! -f $1 ] || [ ! -f $2 ]; then
	exit_code=3 #At least one of the files is not regular
	echo "At least one of the files is not regular."
	
	
elif ([ ! -r $1 ] && [ ! -w $1 ]) || ([ ! -r $2 ] && [ ! -w $2 ]); then
	exit_code=4 #At least one of the files is not readable and writeable
	echo "At least one of the files is not readable and writeable."
	
	
else	
	temp_name1="_an_unexpected_name_.txt"
	temp_name2="_another_unexpected_name_.txt"

	mv $1 $temp_name1
	exit_if_previous_command_was_unsuccessful
	
	mv $2 $temp_name2
	exit_if_previous_command_was_unsuccessful
	
	mv $temp_name1 $2
	exit_if_previous_command_was_unsuccessful
	
	mv $temp_name2 $1
	exit_if_previous_command_was_unsuccessful
	
	exit_code=0
	echo "Swapped successfully."
fi

exit $exit_code
