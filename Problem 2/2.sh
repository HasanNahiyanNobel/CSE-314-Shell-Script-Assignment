#!/bin/bash

# Concept taken from:
## For recursive function: https://unix.stackexchange.com/a/494146
## For current directory path: https://stackoverflow.com/a/246128

number_of_cpp_files=0

walk_dir () {	
	# shopt -s nullglob dotglob

	for pathname in "$1"/*
	do
		if [ -d "$pathname" ]; then # $pathname is a directory, do the same thing recursively
			walk_dir "$pathname"
		else # $pathname is a file
			case "$pathname" in
				*.cpp)	mv -- "$pathname" "${pathname%.cpp}.c"
						number_of_cpp_files=`expr $number_of_cpp_files + 1`;;
			esac
		fi
	done
}

directory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

walk_dir "$directory"

echo "Total count of .cpp files = $number_of_cpp_files"

