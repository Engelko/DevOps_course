#!/bin/bash
        echo "Please enter a number A "
read NUM_A

        echo "Please enter a number B "
read NUM_B

        echo "Please enter a number C "
read NUM_C

if (($NUM_A == $NUM_B)) && (($NUM_A == $NUM_C)); then
        echo "A equal B equal C";

elif (($NUM_A == $NUM_C)) && (($NUM_A != $NUM_B)); then
        echo "C equal A and not equal B"

elif (($NUM_A == $NUM_B)) && (($NUM_B != $NUM_C)); then
        echo "A equal B and not equal C"

elif (($NUM_B == $NUM_C)) && (($NUM_A != $NUM_C)); then
        echo "B equal C and not equal A"

elif (($NUM_B > $NUM_A)) && (($NUM_B > $NUM_C)); then
        echo "B is greater than A and B is a greater than C";

elif (($NUM_A > $NUM_B)) && (($NUM_A > $NUM_C)); then
        echo "A is greater than B and A is a greater than C";
else
        echo "C is greater than B and A";
fi
