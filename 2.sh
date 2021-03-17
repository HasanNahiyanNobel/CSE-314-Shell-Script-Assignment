#!/bin/bash

OIFS="$IFS"
IFS=$'\n'
for file in `find . -type f -name "*.cpp"`
do
	chmod 444 $file # Make read-only
	mv "$file" "$(basename "$file" .cpp).c" # Change extention
done
IFS="$OIFS"
