# Standard Technical:
def space
  space = ""
  20.times do
    space += "%"
  end
  return p space
end
space()
# 1) Write a function that takes in an array of numbers and returns its sum.
numbers = [3, -6, 6, 7, 10] # => 20
def sum_of_array(num_array)
  sum = 0
  num_array.each do |num|
    sum += num
  end
  return sum
end

p sum_of_array(numbers)
space()

# 2) Write a function that takes in an array of strings and returns the smallest string.
words = ["rubber", "duck", "noctis", "harley", "supercalifragalisticexpialidocious", "spider"] # => duck

def smallest(string_array)
  small = string_array[0]
  for str in string_array
    if str.length < small.length
      small = str
    end
  end
  return small
end
p smallest(words)
space()

# 3) Write a function that takes in an array of numbers and returns a new array with the numbers in reverse order.
reverse_this = [1, 2, 3, 4, 5, 6]

def reverse(num_array)
  reverse_array = []
  holder = num_array.length - 1
  while holder >= 0
    reverse_array << num_array[holder]
    holder -= 1
  end
  return reverse_array
end
p reverse(reverse_this)

def reverse2(num_array)
  reverse_array = []
  holder = -1
  while holder > -(num_array.length + 1)
    reverse_array << num_array[holder]
    holder -= 1
  end
  return reverse_array
end
p reverse2(reverse_this)
space()

# 4) Write a function that takes in an array of words and returns the number of words that begin with the letter “a”.


# 5) Write a function that takes in an array of strings and joins them together to make a single string separated by commas.

# 6) Write a function that takes in an array of numbers and returns the product of all the numbers (each number multiplied by each other).

# 7) Write a function that takes in an array of numbers and returns the two smallest numbers.

# 8) Write a function that takes in an array of numbers and returns a count of how many zeros are in the array.

# 9) Write a function that takes in an array of numbers and returns true if all the numbers are bigger than 10, otherwise returns false.
numbers_2 = [34, 21, 9, 13, 24, 35]

def greater_than_ten(num_array)
  greater_than = true
  num_array.each do |num|
    if num <= 10
      greater_than = false
    end
  end
  return greater_than
end

p greater_than_ten(numbers_2)
space()
# 10) Write a function that takes in an array of words and returns the number of times the letter “a” appeared in total.
num_of_a = ["thanks", "bat", "appeared", "array", "a"] # => 7

def a_number(word_array)
  sum_of_a = 0
  word_array.each do |word|
    word.split("").each do |letter|
      if letter == "a"
        sum_of_a += 1
      end
    end
  end
  return sum_of_a
end

p a_number(num_of_a)
