#!/bin/bash
echo "Enter maximum sequence: "
read max
echo "Enter the value to skip: "
read skp
echo "Starting the iteration..."
for (( i = 0; i <= $max; i++ ))
do
	if [ $i -eq $skp ]
	then
		continue
	fi
echo $i
done
