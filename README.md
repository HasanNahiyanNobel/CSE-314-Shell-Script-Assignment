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
    * 0 successful completion
    * 1 invalid number of arguments
    * 2 one or both of the FILEs do not exist
    * 3 one or both of the FILEs exist but are not regular
    * 4 one or both of FILEs are not readable and writeable
    * 5 some other error occurred
