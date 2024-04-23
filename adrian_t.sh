#!/bin/bash

nums=()
for i in {1..10}; do
    nums+=( $((1 + RANDOM % 100)) )
done

echo "Original array: ${nums[@]}"

for num in "${nums[@]}"; do
    if (( $num % 2 == 0 )); then
    echo "$num is even"
    else 
    echo "$num is odd"
    fi
done

# 1. Sum of all even numbers


# Initialize the sum of even numbers with 0
sum_even=0

# Loop through the array
for num in "${nums[@]}"; do
    # Check if element is even
    if (( $num % 2 == 0 )); then
        # If number is even, add it to the sum
        ((sum_even += num))
    fi
done

# Print the sum of even numbers
echo "Sum of even numbers: $sum_even"


# 2.Sum of all odd numbers
# Initialize the sum of odd numbers with 0
sum_odd=0

# Loop through the array
for num in "${nums[@]}"; do
    # Check if element is odd
    if (( $num % 2 != 0 )); then
        # If number is odd, add it to the sum
        ((sum_odd += num))
    fi
done

# Print the sum of odd numbers
echo "Sum of odd numbers: $sum_odd"

# 3.Get the max number of a list
# Initialize max with the first element of the array
max=${nums[0]}

# Loop through the array
for num in "${nums[@]}"; do
    # Check condition if current number is greater than max
    if (( num > max )); then
        # Update max if the current number is greater
        max=$num
    fi
done

# Print the maximum number
echo "Maximum number: $max"

# 4. Get the min number of a list
# Initialize min with the first element of the array
min=${nums[0]}

# Loop through the array
for num in "${nums[@]}"; do
    # Check condition if current number is smaller than min
    if (( num < min )); then
        # Update min if the current number is smaller
        min=$num
    fi
done

# Print the minimum number
echo "Minimum number: $min"

