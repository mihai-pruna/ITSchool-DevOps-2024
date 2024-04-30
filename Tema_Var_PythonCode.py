# Acest script Python generează o listă de 10 numere aleatoare între 1 și 100.
# Pentru fiecare număr, se afișează dacă este par sau impar.
# Se calculează suma numerelor pare și a celor impare, precum și valoarea maximă și minimă.
# Rezultatele sunt afișate la sfârșit.

import random


def generate_random_numbers():
    nums = [random.randint(1, 100) for _ in range(10)]
    print("Original array:", nums)
    return nums


def calculate_sums_and_extremes(nums):
    sum_even = 0
    sum_odd = 0
    max_num = nums[0]
    min_num = nums[0]

    for num in nums:
        if num % 2 == 0:
            print(num, "is even")
            sum_even += num
        else:
            print(num, "is odd")
            sum_odd += num

        max_num = max(max_num, num)
        min_num = min(min_num, num)

    return sum_even, sum_odd, max_num, min_num


def main():
    nums = generate_random_numbers()
    sum_even, sum_odd, max_num, min_num = calculate_sums_and_extremes(nums)
    print("Sum of even numbers:", sum_even)
    print("Sum of odd numbers:", sum_odd)
    print("Max number:", max_num)
    print("Min number:", min_num)


if __name__ == "__main__":
    main()
