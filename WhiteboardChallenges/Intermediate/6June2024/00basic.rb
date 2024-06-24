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
  holder        = -1
  while holder > -(num_array.length + 1)
    reverse_array << num_array[holder]
    holder -= 1
  end
  return reverse_array
end
p reverse2(reverse_this)
space()

# 4) Write a function that takes in an array of words and returns the number of words that begin with the letter “a”.
count_the_as = ["james", "harley", "emails", "alligator"]  # => 1

def find_start_a(word_array)
  sum_word_with_a = 0
  word_array.each do |w|
    if w[0] == "a"
      sum_word_with_a += 1
    end
  end
  return sum_word_with_a
end

p find_start_a(count_the_as)
space()
# 5) Write a function that takes in an array of strings and joins them together to make a single string separated by commas.
spaced_by_commas = ["cloud", "noctis", "clive", "tidus"]
def add_commas(string_array)
  comma_separated_string = ""
  string_array.each do |name|
    unless name.index(string_array[string_array.length-1])
      comma_separated_string += name + ", "
    else
      comma_separated_string += name
    end
  end
  return comma_separated_string
end
p add_commas(spaced_by_commas)
##Notes: this is a clever little solution using the unless. Accomplishes the goal with O(n) notation. Not bad.
space()


# 6) Write a function that takes in an array of numbers and returns the product of all the numbers (each number multiplied by each other).
get_the_product = [1, 2, 3, 4, 5]
def product_of(number_array)
  product = 1
  for i in number_array
    product = product * i
  end
  return product
end
p product_of(get_the_product)
space()
#Notes: This is O(n) where our solution doubles with relation to the amount of data in the array

# 7) Write a function that takes in an array of numbers and returns the two smallest numbers.
numbers_two = [11, 13, 44, 14, 14, 12, 45, -1] # ==> 22, 33
def two_smallest(number_array)
  smallest     = number_array[0]
  second_small = number_array[0]
  number_array.each do |num|
    if num == smallest
      second_small = smallest
      smallest = num
    elsif num < smallest
      second_small = smallest
      smallest = num
    elsif num < second_small && num != smallest
      second_small = num
    end
      
  end
  return smallest, second_small
end
p two_smallest(numbers_two)


space()

#Notes: this can be done with nested loops 0(n^2), but with one loop and conditionals we have 0(n)

# 8) Write a function that takes in an array of numbers and returns a count of how many zeros are in the array.
number_array_two = [0, 3, 4, 6, 2, 0, 0, 3, 5, 6, 8, 0] #==> 4
def count_zeroes(num_array)
  zero_count = 0
  for i in num_array
    if i == 0
      zero_count += 1
    end
  end
  return zero_count
end
p "answer to question 8"
p count_zeroes(number_array_two)
space()
# Notes: obviously you can do different basic methods here .count, and .select to use an array (use .length).

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
