# SET 2 Write Nested Loops
# 1. Use a nested loop to convert an array of number pairs into a single flattened array.
# For example, [[1, 3], [8, 9], [2, 16]] becomes [1, 3, 8, 9, 2, 16].

number_pairs = [[1, 3], [8, 9], [2, 16]]
flattened_array = []

number_pairs.each do |num_pair|
  num_pair.each do |num|
    flattened_array << num
  end
end
p flattened_array

# 2. Use a nested loop with two arrays of strings to create a new array of strings with each string combined.
# For example, ["a", "b", "c"] and ["d", "e", "f", "g"] becomes ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"].
first_three = ["a", "b", "c"]
next_letters = ["d", "e", "f", "g"]
combine_letters = []

index1 = 0
while index1 < first_three.length
  index2 = 0
  while index2 < next_letters.length
    combine_letters.push(first_three[index1] + next_letters[index2])
    index2 += 1
  end
  index1 += 1
end
p combine_letters



# 3. Use a nested loop with one array of strings to create a new array that contains every combination of each string with every other string in the array.
# For example, ["a", "b", "c", "d"] becomes ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"].
letters = ["a", "b", "c", "d"]
letters_combine = []

letters.each do |letter1|
  letters.each do |letter2|
    if letter1 != letter2
      letters_combine << letter1 + letter2
    end
  end
end
p letters_combine


# 4. Use a nested loop to find the largest product of any two different numbers within a given array.
# For example, [5, -2, 1, -9, -7, 2, 6] becomes 63.
numbers2 = [5, -2, 1, -9, -7, 2, 6];
largest_product = 1

i1 = 0
while i1 < numbers2.length
  i2 = 0
  while i2 < numbers2.length
    if numbers2[i1] != numbers2[i2]
      if numbers2[i1] * numbers2[i2] > largest_product
        largest_product = numbers2[i1] * numbers2[i2]
      end
    end
    i2 += 1
  end
  i1 += 1
end
p largest_product

# 5. Use a nested loop to compute the sum of all the numbers in an array of number pairs.
# For example, [[1, 3], [8, 9], [2, 16]] becomes 39.
number_pairs2 = [[1, 3], [8, 9], [2, 16]]
sum_of_all = 0

number_pairs2.each do |pair|
  pair.each do |num|
    sum_of_all += num
  end
end
p sum_of_all

