import random

# generates a list of 10 unique random numbers between 1 and 100
nums = random.sample(range(1, 101), 10)
print("Original array:", nums)


def sum_even_odd_numbers(nrs):
    sum_even = 0
    sum_odd = 0

    for num in nrs:
        if num % 2 == 0:
            sum_even += num
        else:
            sum_odd += num

    print("Sum of even numbers:", sum_even)
    print("Sum of odd numbers:", sum_odd)


sum_even_odd_numbers(nums)


def find_min_max(numbers):
    max_num = numbers[0]
    min_num = numbers[0]

    for num in numbers:
        if num > max_num:
            max_num = num
        if num < min_num:
            min_num = num

    print("Max number:", max_num)
    print("Min number:", min_num)


find_min_max(nums)
