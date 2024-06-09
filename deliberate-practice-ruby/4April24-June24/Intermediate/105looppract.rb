# SET 1: LOOP PROBLEM SET THAT CAN BE SOLVED ANY WAY DESIRED. THESE SHOULD BETWEEN BASIC AND INTERMEDIATE
# DEPENDING ON THE LANGUAGE, DIFFERENT LOOP TYPES CAN BE USED IN ORDER TO SOLVE THESE PROBLEMS. 


# 1: Sum of Numbers: Write a program that calculates the sum of all numbers from 1 to a given positive integer n.
sum = 0
n = 20
Array(1..n).each do |i|
  sum += i 
end
p sum 
p "-------------------"
# 2: Factorial: Write a program that calculates the factorial of a given positive integer n. The factorial of n, denoted as n!, is the product of all positive integers from 1 to n.
k = 12
factorial = 1
i = 0
while i < Array(1..k).length
  if Array(1..k)[i] % 2 == 0
    factorial *= Array(1..k)[i]
  end
  i += 1
end
p factorial

# 3: Fibonacci Sequence: Write a program that generates the first n numbers in the Fibonacci sequence. The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the two preceding numbers.  
# we should try to use recursion here. 
n = 20
fibo = [0, 1]
i = 0
while n > fibo.length - 1
  fibo << fibo[i] + fibo[i + 1]
  i += 1
end
p fibo

# 4: Multiplication Table: Write a program that generates the multiplication table for a given integer n. The table should display the products of n multiplied by each integer from 1 to 10.
mult_table = {}
base_array = Array(1...11)
table_num = 3
base_array.each do |n|
  mult_table["#{n} * #{table_num}"] = (n * table_num) 
end
p mult_table

# 5: Prime Numbers: Write a program that determines whether a given integer n is a prime number. A prime number is a positive integer greater than 1 that has no positive integer divisors other than 1 and itself.