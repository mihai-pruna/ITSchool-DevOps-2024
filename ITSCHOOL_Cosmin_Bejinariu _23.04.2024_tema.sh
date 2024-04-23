#!/bin/bash

nums=()
for i in {1..10}; do
    nums+=( $((1 + RANDOM % 100)) )
done

echo "Original array: ${nums[@]}"

# Sum of all even numbers
# initialize the sum of even number with 0
# Loop trought the array
# Check if element in even or not
# if number is even then add to the sum of even numbers
# print sum of even number
sumEvenNumbers=0
for num in "${nums[@]}"; do
	if (( num % 2 == 0 )); then
		sumEvenNumbers=$(( sumEvenNumbers + num ))
	fi
done

echo "The sum of all the even numbers in the array is $sumEvenNumbers"

# Sum of all odd numbers
# Similar to above process/logic we will check for the odd condition
# if (( $num % 2 != 0 ));
sumOddNumbers=0
for num in "${nums[@]}"; do
	if (( num % 2 != 0 )); then
		sumOddNumbers=$(( sumOddNumbers + num ))
	fi
done

echo "The sum of all the even numbers in the array is $sumOddNumbers"

# Get the max number of a list
# initialize max with the first element of the array
# max = ${nums[0]} 
# Loop trough the array
# check condition if (( $max  > num ))
# then max=$num
maxNumber=($(for num in "${nums[@]}"; do echo $num; done | sort -n -r))
echo "The highest number in the array is $maxNumber"

# Get the min number of a list
# initialize min with the first element of the array
# ${nums[0]} 
# Loop trough the array
# check condition if (( $min  < num ))
# then min=$num
minNumber=($(for num in "${nums[@]}"; do echo $num; done | sort -n))
echo "The lowest number in the array is $minNumber"