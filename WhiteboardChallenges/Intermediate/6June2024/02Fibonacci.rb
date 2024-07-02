# 3: Fibonacci Sequence: Write a program that generates the first n numbers in the Fibonacci sequence. The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the two preceding numbers.

def fibonacci(nums_desired)
  fib_array = [0, 1]
  dist = nums_desired - 1
  i = 1
  while i < dist
    fib_array << fib_array[i] + fib_array[i - 1]
    i += 1
  end
  p fib_array.length
  return fib_array
end

p fibonacci(15)