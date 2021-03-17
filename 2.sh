#!/bin/bash

OIFS="$IFS"
IFS=$'\n'
for file in *.cpp
do
	chmod 444 $file
	mv "$file" "${file%.cpp}.c"
done
IFS="$OIFS"
