#!/bin/bash
# producer 2
for (( i=1; i<=10; i++ ))
do
	uid="$(uuidgen)"
	echo "${uid}"
done
