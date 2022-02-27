#!/bin/bash

echo -e "Enter first number: \c"
read -r a
echo -e "Enter second number: \c"
read -r b

echo "Enter your choice: "
echo "1. Addition"
echo "2. Substraction"
echo "3. Multiplication"
echo "4. Division"
read -r ch

case $ch in
   1) res=`echo $a + $b | bc`
   ;;
   2) res=`echo $a - $b | bc`
   ;;
   3) res=`echo $a \* $b | bc`
   ;;
   4) res=`echo "scale=2; $a / $b" | bc`
   ;;
esac

echo "Result: $res"


