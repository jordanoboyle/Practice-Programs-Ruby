# SET 2 Write Nested Loops
# 1. Use a nested loop to convert an array of number pairs into a single flattened array.
# For example, [[1, 3], [8, 9], [2, 16]] becomes [1, 3, 8, 9, 2, 16].
nest_nums = [[1, 3], [8, 9], [2, 16]]
flat_nums = []

nest_nums.each do |sm_array|
  sm_array.each do |num|
    flat_nums << num
  end
end
p flat_nums

# 2. Use a nested loop with two arrays of strings to create a new array of strings with each string combined.
# For example, ["a", "b", "c"] and ["d", "e", "f", "g"] becomes ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"].
letters1 = ["a", "b", "c"]
letters2 = ["d", "e", "f", "g"]
nested_letters = []
letters1.each do |m|
  letters2.each do |n|
    nested_letters << m + n
  end
end
p nested_letters
p "------------------"
# 3. Use a nested loop with one array of strings to create a new array that contains every combination of each string with every other string in the array.
# For example, ["a", "b", "c", "d"] becomes ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"].

get_combo = ["a", "b", "c", "d"]
combo = []
i = 0
while i < get_combo.length
  i2 = 0 
  while i2 < get_combo.length
    combo.append(get_combo[i] + get_combo[i2])
    i2 += 1
  end
  i += 1
end

p combo
p '--------------------'
# 4. Use a nested loop to find the largest product of any two different numbers within a given array.
# For example, [5, -2, 1, -9, -7, 2, 6] becomes 63.
numbers1 = [5, -2, 1, -9, -7, 2, 6]
largest = 0

i = 0
while i < numbers1.length
  i2 = 0
  while i2 < numbers1.length
    if numbers1[i] == numbers1[i2]
      largest = largest
    elsif numbers1[i] * numbers1[i2] > largest
      largest = numbers1[i] * numbers1[i2]
    end
    i2 += 1
  end
  i += 1
end
p largest
p '------------------'
# 5. Use a nested loop to compute the sum of all the numbers in an array of number pairs.
# For example, [[1, 3], [8, 9], [2, 16]] becomes 39.
find_sum = [[1, 3], [8, 9], [2, 16]]
sum = 0

i = 0 
while i < find_sum.length
  i2 = 0
  while i2 < find_sum[i].length
    sum += find_sum[i][i2]
    i2 += 1
  end
  i += 1
end
p sum
p '--------------'
# 6. Use a nested loop with two arrays of numbers to create a new array of the sums of each combination of numbers.
# For example, [1, 2] and [6, 7, 8] becomes [7, 8, 9, 8, 9, 10].
nums1 = [1, 2]
nums2 = [6, 7, 8]
combined2 = []
nums1.each do |n|
  nums2.each do |m|
    combined2.append(n + m)
  end
end
p combined2
p '------------------------'

# 7. Use a nested loop with an array of numbers to compute an array with every combination of products from each number.
# For example, [2, 8, 3] becomes [4, 16, 6, 16, 64, 24, 6, 24, 9].

nums3 = [2, 8, 3]
products1 = []
i = 0
while i < nums3.length
  i2 = 0
  while i2 < nums3.length
    products1.append(nums3[i] * nums3[i2])
    i2 += 1
  end
  i += 1
end
p products1

p "-----------------"
# 8. Use a nested loop to find the largest sum of any two different numbers within an array.
# For example, [1, 8, 3, 10] becomes 18.

nums4 = [1, 8, 3, 10]
max = 0

nums4.each do |n|
  nums4.each do |m|
    if n == m
      max = max
    elsif n + m > max
      max = n + m
    end
  end
end
p max
p "======================="
# 9. Use nested loops with an array of numbers to compute a new array containing the first two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.
# For example, [2, 5, 3, 1, 0, 7, 11] becomes [3, 7].
array = [2, 5, 3, 1, 0, 7, 11]
add_to_ten = []

i = 0
while i < array.length
  i2 = 0
  # p array[i]
  while i2 < array.length
    # p [array[i], array[i2]]
    if array[i] != array[i2] && array[i] + array[i2] == 10
      add_to_ten << array[i]
      add_to_ten << array[i2]
    end
    i2 += 1
  end
  if add_to_ten.empty? == false
    break
  end
  i += 1
end
if add_to_ten.empty? == true
  p false
else
  p add_to_ten
end
p '-============='
# 10. Use a nested loop to convert an array of string arrays into a single string.
# For example, [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]] becomes "amanaplanacanalpanama".
string_array = [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]]
combined = ''

string_array.each do |array|
  array.each do |string|
    combined += string
  end
end
p combined
