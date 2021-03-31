#!/bin/bash

NUM_A=$1
NUM_B=$2
NUM_C=$3

array=({-1000000..1000000} "one" "two" "three")


if ! [[ " ${array[*]} " == *" $NUM_A "* ]] ; then
	echo "A is not in array"
fi

if ! [[ " ${array[*]} " == *" $NUM_B "* ]]; then
	echo "B is not in array"
fi

if ! [[ " ${array[*]} " == *" $NUM_C "* ]]; then
	echo "C is not in array"
fi

