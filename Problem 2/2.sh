#!/bin/bash

number_of_cpp_files=0

walk_dir () { # Recursive concept from https://unix.stackexchange.com/a/494146
	for pathname in "$1"/*
	do
		if [ -d "$pathname" ]; then # $pathname is a directory, do the same thing recursively
			walk_dir "$pathname"
		else # $pathname is a file
			case "$pathname" in
				*.cpp)	new_pathname="${pathname%.cpp}.c"
						mv -- "$pathname" "$new_pathname"
						chmod 444 "$new_pathname"
						number_of_cpp_files=`expr $number_of_cpp_files + 1`;;
			esac
		fi
	done
}

directory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )" # From https://stackoverflow.com/a/246128

walk_dir "$directory"

echo "Total count of .cpp files = $number_of_cpp_files"

