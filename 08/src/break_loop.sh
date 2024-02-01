#!/bin/bash
echo "Enter maximum sequence: "
read max
echo "Enter break value: "
read brk
echo "Starting the iteration..."
for (( i = 0; i <= $max; i++ ))
do
	echo $i
	if [ $i -eq $brk ]
	then
		break
	fi
done
