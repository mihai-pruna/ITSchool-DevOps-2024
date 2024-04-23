#!/bin/bash

#Array with 10 random numbers
nums=()
for i in {1..10}; do
    nums+=( $((1 + RANDOM % 100)) )
done


#Display  array
echo "Original array: ${nums[@]}"


#Sum of all even numbers

even_sum=0
for num in "${nums[@]}"; do
	if (( num % 2 == 0 )); then
		even_sum=$(( even_sum + num ))
	fi
done


#Display the sum of even numbers

echo "Sum of all even numbers: $even_sum"


#Sum of all odd numbers

odd_sum=0
for num in "${nums[@]}"; do
	if (( num % 2 != 0 )); then
		odd_sum=$(( odd_sum + num ))
	fi
done

#Display the sum of odd numbers

echo "Sum of the odd numbers :$odd_sum"


#Find the max of the array

max=${nums[0]}
for num in "${nums[@]}"; do
	if (( num > max )) ; then
	    max=$num
     fi 
done


#Display the max of the arrawy

echo "Max of the array is:  $max"


#Find the min of the array

min=${nums[0]}
for num in "${nums[@]}" ; do
    if (( num < min  )) ; then
	min=$num
    fi
done

#Display the min of the array

echo "The min of the array is: $min"

