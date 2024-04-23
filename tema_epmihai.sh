#!/bin/bash

nums=()
for i in {1..10}; do
    nums+=( $((1 + RANDOM % 100)) )
done

echo "Original array: ${nums[@]}"

# Initialize variables for sum of even and odd numbers, max, and min
sum_even=0
sum_odd=0
max=${nums[0]}
min=${nums[0]}

for num in "${nums[@]}"; do
    if (( $num % 2 == 0 )); then
        echo "$num is even"
        ((sum_even += num))  # Add even number to sum_even
    else 
        echo "$num is odd"
        ((sum_odd += num))    # Add odd number to sum_odd
    fi

    # Update max if num is greater
    if (( num > max )); then
        max=$num
    fi

    # Update min if num is smaller
    if (( num < min )); then
        min=$num
    fi
done

# Print sum of even and odd numbers, max, and min
echo "Sum of even numbers: $sum_even"
echo "Sum of odd numbers: $sum_odd"
echo "Max number: $max"
echo "Min number: $min"
