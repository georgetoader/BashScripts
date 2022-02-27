#!/bin/bash

echo -e "Please Enter Maths Marks: \c"
read -r m
echo -e "Please Enter Physics Marks: \c"
read -r p
echo -e "Please Enter Chemistry Marks: \c"
read -r c

if [ $m -ge 35 -a $p -ge 35 -a $c -ge 35 ]; then
	total=`expr $m + $p + $c`
	avg=`expr $total / 3`
	echo "Total Marks = $total"
	echo "Average Marks = $avg"
	if [ $avg -ge 60 ]; then
		echo "PASSED"
	fi
else
	echo "FAILED"
fi
