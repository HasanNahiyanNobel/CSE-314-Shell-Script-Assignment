#!/bin/bash

filename="guests.txt"


while read -r line; do
    name="$line"
    
    echo -en "" > "invite_$name.txt" # Clear the file
    
    echo -en "Dear $name,
    
We welcome you to lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Viverra vitae congue eu consequat ac felis donec. Ultrices mi tempus imperdiet nulla.
    
Condimentum vitae sapien pellentesque habitant morbi tristique senectus et netus. Nisl pretium fusce id velit ut tortor pretium viverra suspendisse. Eu lobortis elementum nibh tellus molestie. Scelerisque fermentum dui faucibus in. Aliquam ut porttitor leo a diam. Sed augue lacus viverra vitae congue. Mi in nulla posuere sollicitudin.
    
Regards
Jon Doe
Department of Computer Science and Engineering,
Bangladesh University of Engineering and Technology" >> "invite_$name.txt"
    
done < "$filename"
