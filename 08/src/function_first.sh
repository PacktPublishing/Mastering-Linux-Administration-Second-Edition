#!/bin/bash
#this is our first function
sorting () {
	printf "Provide the maximum value: "
	read max
	printf "Sorting numbers in descending order... \n"
	while [ $max -gt 0 ]
	do
		printf " %s" $max
		max=$[ $max - 1 ]
	done
	printf "%s\n"
}
#provide a message before calling the function called "sorting"
echo "We will run our first function now... "
sorting
echo "The function ended... "
