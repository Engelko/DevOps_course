#!/bin/bash
echo "Please enter a number A "
read NUM_A
echo "Please enter a number B "
read NUM_B
if (( $NUM_A > $NUM_B )); then 
	echo "A greater than B";
elif (( $NUM_A == $NUM_B)); then 
	echo "A equal B";
else 
	echo "A is less than B";
fi

