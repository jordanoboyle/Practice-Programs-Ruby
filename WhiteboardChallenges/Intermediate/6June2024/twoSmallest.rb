# 7) Write a function that takes in an array of numbers and returns the two smallest numbers.
# return smallest, second_smallest

numbers_two   = [11, 13, 44, 14, 14, 12, 45, -1] # == > -1,  11
numbers_three = [-11, -5, -13, 59, -3, 20] #       == > -13, -11
numbers_four  = [100, 99.23, 98.99, 100.1, 99.01 ] # == > 98.99, 99.01

def twoSmallest(num_array)
  smallest = num_array[0]
  second_smallest = num_array[0]

  num_array.each do |num|
    if num == smallest
      second_smallest = smallest
    elsif num < smallest
      second_smallest = smallest
      smallest = num
    elsif num < second_smallest && num != smallest
      second_smallest = num
    end
  end
  return smallest, second_smallest
end

p twoSmallest(numbers_two)
p twoSmallest(numbers_three)
p twoSmallest(numbers_four)