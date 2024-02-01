#!/bin/bash
#asking for array length
echo "total array elements:"
read n
#asking user to provide the numbers
echo "enter numbers:"
for (( i = 0; i < $n; i++ ))
do
	read num[$i]
done
#start the sorting
for (( i = 0; i < $n; i++ ))
do
	for (( j = $i; j < $n; j++ ))
	do
		if [ ${num[$i]} -gt ${num[$j]} ]
		then
			k=${num[$i]}
			num[$i]=${num[$j]}
			num[$j]=$k
		fi
	done
done
#print sorted array
printf "%s\n" "Sorted array is:"
for (( i = 0; i < $n; i++ ))
do
	echo ${num[$i]}
done
