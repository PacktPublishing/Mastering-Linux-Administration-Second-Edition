#!/bin/bash
# producer 4
SOCKET="/var/tmp/ipc.sock"
rm -rf "${SOCKET}"
while true
do
	uuidgen;
	sleep 1s;
done | tee /dev/tty | nc -lu "${SOCKET}"
