#!/bin/bash
# producer 3
PIPE="pipe.fifo"
if [[ ! -p ${PIPE} ]]
then
	mkfifo ${PIPE}
fi
while true
do
	for (( i=1; i<=10; i++ ))
	do
		uid="$(uuidgen)"
		echo "${uid}"
		echo "${uid}" > "${PIPE}"
		sleep 1s
	done
done
