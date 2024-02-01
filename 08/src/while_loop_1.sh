#!/bin/bash
#asking the user for the maximum value
printf "Provide the maximum value: "
read max
#starting the loop
printf "Listing numbers in descending order... \n"
while [ $max -gt 0 ]
do
	printf " %s" $max
	max=$[ $max - 1]
done
printf "%s\n"
