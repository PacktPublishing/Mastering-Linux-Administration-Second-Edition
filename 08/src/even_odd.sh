#!/bin/bash
echo "Enter a number:"
read number
if [ $(( number % 2 )) == 0 ]
then
	printf "%s\n" "The number $number is even."
else
	printf "%s\n" "The number $number is odd."
fi
