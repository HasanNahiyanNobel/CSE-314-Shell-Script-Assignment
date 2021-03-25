#!/bin/bash

exit_with_code_5()
{
	# echo "Some other error occurred."
	echo 5
	exit 5
}


if [ $# -ne 2 ]; then
	exit_code=1 #Invalid number of arguments
	# echo "Invalid number of arguments."
	echo $exit_code
	
	
elif [ ! -e $1 ] || [ ! -e $2 ]; then
	exit_code=2 #At least one file does not exist
	# echo "At least one file does not exist."
	echo $exit_code
	
	
elif [ ! -f $1 ] || [ ! -f $2 ]; then
	exit_code=3 #At least one of the files is not regular
	# echo "At least one of the files is not regular."
	echo $exit_code
	
	
elif ([ ! -r $1 ] || [ ! -w $1 ]) || ([ ! -r $2 ] || [ ! -w $2 ]); then
	exit_code=4 #At least one of the files is not readable and writable
	# echo "At least one of the files is not readable and writable."
	echo $exit_code
	
	
else	
	temp_name1="_an_unexpected_name_.txt"
	temp_name2="_another_unexpected_name_.txt"

	if ! mv $1 $temp_name1 ; then
		exit_with_code_5		
	fi
	
	if ! mv $2 $temp_name2 ; then
		exit_with_code_5
	fi
	
	if ! mv $temp_name1 $2 ; then
		exit_with_code_5
	fi
	
	if ! mv $temp_name2 $1 ; then
		exit_with_code_5
	fi
	
	exit_code=0
	# echo "Swapped successfully."
	echo $exit_code
fi

exit $exit_code
