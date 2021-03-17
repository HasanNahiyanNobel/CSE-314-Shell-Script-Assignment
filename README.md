# Problem Specifications



## Problem 1
Write a bash script which takes a number as argument and print its sum of digits.

|	Argument	|	Output	|
|:---------:|:-------:|
|121				|4				|
|3456				|18				|



## Problem 2
Write a bash script which will rename all the `.cpp` files in current directory and its subdirectories to `.c` files and make them read-only.



## Problem 3
Write a bash script, `swap.sh`, that takes two file names as parameters and swaps the two files.

**Synopsis:** `swap.sh FILE1 FILE2`

**Description:**
1. Swaps the specified files without leaving a temporary file.
2. Both FILEs must be regular files, and must already exist and be readable and writable.
3. Exit codes (value shown on screen after you run the script):
    * 0 for successful completion
    * 1 for invalid number of arguments
    * 2 for one or both of the FILEs do not exist
    * 3 for one or both of the FILEs exist but are not regular
    * 4 for one or both of FILEs are not readable and writeable
    * 5 for some other error occurred



## Problem 4
Suppose you have a list of guests in `guests.txt` file to whom you need to send invitation emails. You also have an invitation template named `template.txt`. Assume both are in current directory. Now write a script which will use the template and generate `invite_<guestname>.txt` for all the guests. The placeholder `<guestname>` in the `template.txt` will be replaced by the appropriate guest’s name.

Sample file contents:
|  tempalte.txt  |  guests.txt  |
|:---------------|:------------:|
|  Dear \<guestname\>,<br><br>We welcome you to CSE, BUET<br><br>Regards<br>CSE, BUET. |  Alice<br>Bob<br>Trudy<br>Curl |

After execution of the script the following files will be generated:
1. `invite_Alice.txt`
2. `invite_Bob.txt`
3. `invite_Trudy.txt`
4. `invite_Curl.txt`

Sample content of `invite_Alice.txt`:

>Dear Alice,
>
>We welcome you to CSE, BUET.
>
>Regards<br>
>CSE, BUET
