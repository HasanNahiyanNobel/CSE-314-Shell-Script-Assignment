#!/bin/bash

template_file="template.txt"
guests_list_file="guests.txt"
template_text=""

## Read from template file
#{
#	while IFS=, read -r a_line
#	do
#		template_text="${template_text}\n$a_line"
#	done
#} < $template_file



# Create invitation files
while read -r line; do
	guestname="$line"
	echo -en "" > "invite_$guestname.txt" # Clear the file	
	# Append each line of template text to invitation file
	{
		while IFS=, read -r template_line
		do
			changed_line="${template_line/<guestname>/$guestname}" # Change the line if it contains <guestname>
			echo $changed_line >> "invite_$guestname.txt" # Append the line to file
		done
	} < $template_file
	# echo -en "Dear $guestname,$template_text" >> "invite_$guestname.txt" # Append the text
done < "$guests_list_file"

