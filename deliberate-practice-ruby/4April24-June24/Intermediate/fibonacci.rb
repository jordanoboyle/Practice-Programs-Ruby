
fib_array = [0, 1]
i = 1
while i < 21
  fib_array.push(fib_array[i] + fib_array[i - 1])
  i += 1
end

p fib_array