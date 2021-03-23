#!/bin/bash 
set -e

function num_compare {
if [[ "$NUM_A" -eq "$NUM_B" ]] && [[ "$NUM_A" -eq "$NUM_C" ]]; then
        echo "A equal B equal C";

elif [[ "$NUM_A" -eq "$NUM_C" ]] && [[ "$NUM_B" -gt "$NUM_C" ]]; then
        echo "A equal C and B is a greater C";

elif [[ "$NUM_A" -eq "$NUM_C" ]] && [[ "$NUM_B" -lt "$NUM_C" ]]; then
        echo "A equal C and B less than C";

elif [[ "$NUM_A" -eq "$NUM_B" ]] && [[ "$NUM_C" -gt "$NUM_B" ]]; then
        echo "A equal B and C is a greater B";

elif [[ "$NUM_A" -eq "$NUM_B" ]] && [[ "$NUM_C" -lt "$NUM_B" ]]; then
        echo "A equal B and C less than B";

elif [[ "$NUM_B" -eq "$NUM_C" ]] && [[ "$NUM_A" -gt "$NUM_C" ]]; then
        echo "B equal C and A is a greater C";

elif [[ "$NUM_B" -eq "$NUM_C" ]] && [[ "$NUM_A" -lt "$NUM_C" ]]; then
        echo "B equal C and A less than C";

elif [[ "$NUM_B" -gt "$NUM_A" ]] && [[ "$NUM_B" -gt "$NUM_C" ]] && [[ "$NUM_A" -lt "$NUM_C" ]]; then
        echo "B is greater than A, B is a greater than C , A less than C";

elif [[ "$NUM_B" -gt "$NUM_A" ]] && [[ "$NUM_B" -gt "$NUM_C" ]] && [[ "$NUM_A" -gt "$NUM_C" ]]; then
        echo "B is greater than A, B is a greater than C , A greater than C";
	
elif [[ "$NUM_A" -gt "$NUM_B" ]] && [[ "$NUM_A" -gt "$NUM_C" ]] && [[ "$NUM_B" -lt "$NUM_C" ]]; then
        echo "A is greater than B , A is a greater than C, B less than C";

elif [[ "$NUM_A" -gt "$NUM_B" ]] && [[ "$NUM_A" -gt "$NUM_C" ]] && [[ "$NUM_B" -gt "$NUM_C" ]]; then
        echo "A is greater than B , A is a greater than C, B greater than C";

elif  [[ "$NUM_C" -gt "$NUM_A" ]] && [[ "$NUM_C" -gt "$NUM_B" ]] && [[ "$NUM_A" -lt "$NUM_B" ]]; then
        echo "C is greater than B and A, A less than B";

elif  [[ "$NUM_C" -gt "$NUM_A" ]] && [[ "$NUM_C" -gt "$NUM_B" ]] && [[ "$NUM_B" -lt "$NUM_A" ]]; then
        echo "C is greater than B and A, A greater than B";
fi
}  

declare -i one=1
declare -i two=2
declare -i three=3
declare -i four=4
declare -i five=5

array=("one" "two" "three" "four" "five")

read -p "Please enter a number A	" A       
read -p "Please enter a number B	" B    
read -p "Please enter a number C	" C

re='^[0-9]+$'
NUM_A=${A,,}
NUM_B=${B,,}
NUM_C=${C,,}


function not_number {
if [[ " ${array[*]} " == *" $NUM_A "* && " ${array[*]} " == *" $NUM_B "* && " ${array[*]} " == *" $NUM_C "* ]]; then
	num_compare
else
	echo "enter a number from 1 to 5"
fi
}

function not_num_A {
if [[ " ${array[*]} " == *" $NUM_A "* ]] ; then
	num_compare
else
	echo "A enter a number from 1 to 5"
fi
}

function not_num_B {
if [[ " ${array[*]} " == *" $NUM_B "* ]] ; then
	num_compare
else
	echo "B enter a number from 1 to 5"
fi
}

function not_num_C {
if [[ " ${array[*]} " == *" $NUM_C "* ]] ; then
	num_compare
else
	echo "C enter a number from 1 to 5"
fi
}

if ! [[ "${NUM_A}" =~ $re || "${NUM_B}" =~ $re || "${NUM_C}" =~ $re ]] ; then
	not_number
elif [[ "${NUM_A}" =~ $re && "${NUM_B}" =~ $re && "${NUM_C}" =~ $re ]] ; then
	num_compare
elif ! [[ "${NUM_A}" =~ $re ]] ; then
	not_num_A
elif ! [[ "${NUM_B}" =~ $re ]] ; then
	not_num_B
elif ! [[ "${NUM_C}" =~ $re ]] ; then
	not_num_C
else 
	echo "err"
fi





