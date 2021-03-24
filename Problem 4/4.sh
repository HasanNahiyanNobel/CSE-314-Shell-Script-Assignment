#!/bin/bash

template_file="template.txt"
guests_list_file="guests.txt"

# Loop through the file containing guest names
while read -r line
do
	guestname="$line"
	echo -en "" > "invite_$guestname.txt" # Clear the file (-en means echo would not insert a new line)
	
	# Loop through the template file and look for <guestname> in each line
	while read -r template_line
	do
		changed_line="${template_line/<guestname>/$guestname}" # Change the line if it contains <guestname>
		echo $changed_line >> "invite_$guestname.txt" # Append the line to file
	done < "$template_file"
done < "$guests_list_file"

