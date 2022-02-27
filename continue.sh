#!/bin/bash

opt=y

while [ $opt = y -o $opt = Y ]
do
	echo -e "Enter a number (<50): \c"
	read -r num
	if [ $num -le 50 ]; then
		sq=`expr $num \* $num`
		echo "Square of provided number $num: $sq"
	else
		echo "Number not in the given range."
	fi

	echo -e "Do you want to continue [y/n]: \c"
	read -r opt
done
