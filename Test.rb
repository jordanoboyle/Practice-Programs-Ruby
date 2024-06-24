
numbers = [1, 2, 3, 4, 5]

two_dimensions = []
basic_arr = []

numbers.each do |num|
  basic_arr << num
  two_dimensions << basic_arr
end

p two_dimensions