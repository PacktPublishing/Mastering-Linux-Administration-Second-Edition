#!/bin/bash
# consumer 4
SOCKET="/var/tmp/ipc.sock"
nc -U "${SOCKET}"
