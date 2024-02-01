#!/bin/bash
printf "\n"
printf "%s\n" "*** Random password generator ***"
printf "\n"
printf "%s" "Number of characters (we recommend >8): "
read n
printf "%s" "How many passwords you want to generate? "
read p
printf "\n"
for (( i=0 ; i<$p ; i++ ))
do
	if [ $n -le 8 ]
	then
		echo "The password is too short. Try again please!"
		exit 1
	else
		openssl rand -base64 $n
	fi
done
printf "\n"
