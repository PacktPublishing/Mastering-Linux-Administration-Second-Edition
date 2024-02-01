#!/bin/bash
#testing if a filename is indeed a file
echo "Enter a file name using absolute path:"
read filename
if [[ -z $filename ]]
then
	printf "%s\n" "no filename entered..."
	exit 1
else
	printf "The filename you entered is: %s\n" "$filename"
fi
printf "%s\n" "Testing if "$filename" is a file..."
test -f "$filename"
if (( $?==0 ))
then
	printf "%s %d\n" "The "$filename" represents a file (0=true):" $?
else
	printf "%s %d\n" "The "$filename" is not a file. (1=false):" $?
fi
