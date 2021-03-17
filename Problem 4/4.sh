#!/bin/bash

template_file="template.txt"
guests_list_file="guests.txt"
template_text=""

# Read from template file
{
    read
    while IFS=, read -r a_line
    do 
        template_text="${template_text}\n$a_line"
    done
} < $template_file



# Create invitation files
while read -r line; do
    name="$line"
    echo -en "" > "invite_$name.txt" # Clear the file    
    echo -en "Dear $name,$template_text" >> "invite_$name.txt" # Append the text
done < "$guests_list_file"

