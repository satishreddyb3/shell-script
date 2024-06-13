#!/bin/bash
#FRUITS=("Apple" "Banana" "Mango")
#echo " First value: ${FRUITS[0]}"
#echo " second value: ${FRUITS[1]}"
#echo " third value: ${FRUITS[2]}"
#echo " all fruits value: ${FRUITS[@]}"


NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Total:: $SUM"

echo "How many args passed:: $#"

echo "All args passed:: $@"

echo "Script name:: $0"