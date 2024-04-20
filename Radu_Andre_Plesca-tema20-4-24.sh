#!/bin/bash

nums=()
sumeven=0
sumodd=0
for i in {1..10}; do
    nums+=( $((1 + RANDOM % 100)) )
done
echo "Original array: ${nums[@]}"

max=${nums[0]}
min=${nums[0]}

for num in "${nums[@]}"; do
# Get the max number of a list
    if (( num > max )); then
        max=$num
    fi
#Get the min number of a list
    if (( num < min )); then
        min=$num
    fi
# Sum of all even numbers
    if (( $num % 2 == 0 )); then
        sumeven=$((sumeven+num))
        echo "$num is even"
    else
# Sum of all odd numbers
        sumodd=$((sumodd+num))
        echo "$num is odd"
    fi
done

echo "The sum of even numbers is $sumeven"
echo "The sum of odd numbers is $sumodd"
echo "The max number is $max"
echo "The min number is $min"
