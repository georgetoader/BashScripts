#!/bin/bash

echo -e "Please enter the IP Address to ping: \c"
read -r ip
until ping -c 3 $ip
do
	echo "Host $ip is still down."
	sleep 5
done

echo "Host $ip is up now."
