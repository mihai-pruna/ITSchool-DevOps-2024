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

# Sum of all even numbers
# Sum of all odd numbers

sum_even_numbers=0
sum_odd_numbers=0

for num in "${nums[@]}"; do
    if (( $num % 2 == 0 )); then
    ((sum_even_numbers += $num))
    else 
    ((sum_odd_numbers += $num))
    fi
done

    echo "sum of odd numbers is: $sum_odd_numbers"
    echo "sum of even numbers is: $sum_even_numbers"



# Get the max number of a list

max = ${nums[0]}
for num in "${nums[@]}"; do
    if((num > $max))
    max = $num
    fi
done

echo "maximum element of array is $max"

# Get the min number of a list

min = ${nums[0]}
for num in "${nums[@]}"; do
    if((num < $min))
    min = $num
    fi
done

echo "minimum element of array is $min"

