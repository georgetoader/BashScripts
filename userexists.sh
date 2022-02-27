#!/bin/bash

echo -e "Enter username to check: \c"
read user
grep $user /etc/passwd > /dev/null

if [ $? -eq 0 ]; then
	grep $user /etc/passwd 
	echo "User '$user' exists."
else
	echo "User '$user' does not exist."
fi
