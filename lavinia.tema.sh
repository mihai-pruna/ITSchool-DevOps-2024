#!/bin/bash

nums=()
for i in {1..10}; do
    nums+=( $((1 + RANDOM % 100)) )
done

echo "Original array: ${nums[@]}"

for num in "${nums[@]}"; do
    if (( $num % 2 == 0 ));
    echo "$num is even"
    else 
    echo "$num is odd"
    fi
done

# Sum of all even numbers
# initialize the sum of even number with 0
# Loop trought the array
# Check if element in even or not
# if number is even then add to the sum of even numbers
# print sum of even number

###How to get the sum of even number###
sum=0
for ((i=0; i<100; i+=2)); do
   sum=$((sum + i))
   done
   echo "Sum of even number below 100: $sum"

# Sum of all odd numbers
# Similar to above process/logic we will check for the odd condition
# if (( $num % 2 != 0 ));

###How to get the sum of odd number###
sum=1
for ((i=1; i<100; i+=2)); do
     sum=$((sum + i))
 done
   echo "Sum of odd number below 100: $sum"

# Get the max number of a list
# initialize max with the first element of the array 
# max = ${nums[0]} 
# Loop trough the array
# check condition if (( $max  > num ))
# then max=$num

###How to get the max number from a array###
max=0
 for ((i=1; i<=$max; i++)); do
    if [ $num -gt $max]
  then 
     max = $num
 fi
done
echo "Max number is: $max"


# Get the min number of a list
# initialize min with the first element of the array
# ${nums[0]} 
# Loop trough the array
# check condition if (( $min  < num ))
# then min=$num

###How to get the min number from a array###
min=0
 for ((i=1; i<=$min; i++)); do
    if [ $num -lt $min]
  then 
     min = $num
 fi
done
echo "Min number is: $min"





###How to get the even/odd number####
 echo "Enter the number:"
  if [ $((num%2)) -eq 0 ]
 then
     echo "even number"
else 
     echo "odd number"
 fi