#!/bin/bash

# Generate an array of 10 random numbers between 1 and 100
nums=()
for ((i = 0; i < 10; i++)); do
    nums+=( $((1 + RANDOM % 100)) )
done

# Display the original array
echo "Original array: ${nums[@]}"

# Check if each number in the array is even or odd
for num in "${nums[@]}"; do
    if (( num % 2 == 0 )); then
        echo "$num is even"
    else 
        echo "$num is odd"
    fi
done

# Calculate the sum of all even numbers
sum_even=0
for num in "${nums[@]}"; do
    if (( num % 2 == 0 )); then
        (( sum_even += num ))
    fi
done
echo "Sum of even numbers: $sum_even"

# Calculate the sum of all odd numbers
sum_odd=0
for num in "${nums[@]}"; do
    if (( num % 2 != 0 )); then
        (( sum_odd += num ))
    fi
done
echo "Sum of odd numbers: $sum_odd"

# Find the maximum number in the array
max=${nums[0]}
for num in "${nums[@]}"; do
    if (( num > max )); then
        max=$num
    fi
done
echo "Max number: $max"

# Find the minimum number in the array
min=${nums[0]}
for num in "${nums[@]}"; do
    if (( num < min )); then
        min=$num
    fi
done
echo "Min number: $min"
