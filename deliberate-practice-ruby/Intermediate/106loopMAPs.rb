# SET 2 MAP AN ARRAY TO A NEW ARRAY WITH SOME COMPUTATION PERFORMED ON EACH ITEM

# # 1 Start with an array of numbers and create a new array with each number times 3. For example, [1, 2, 3, 4] becomes [3, 6, 9, 12].

nums1 = [1, 2, 3, 4]
map_here = nums1.map {|n| n * 3}
p map_here
p "-----------------"

# # 2 Start with an array of strings and create a new array with each string upcased. For example, ["hello", "goodbye", "later"] becomes ["HELLO", "GOODBYE", "LATER"].

words1 = ["hello", "goodbye", "later"]
words1_upper = words1.map {|n| n.upcase}
p words1_upper
p "-----------------"

# # 3 Start with an array of hashes and create a new array of string values from each hash's :name key. For example, [{name: "Alice", age: 27}, {name: "Blane", age: 16}, {name: "Cloud", age: 25}] becomes ["Alice", "Blane", "Cloud"].
names_ages = [{name: "Alice", age: 27}, {name: "Blane", age: 16}, {name: "Cloud", age: 25}]

names_only = names_ages.map {|n| n[:name]}
p names_only
p "-----------------"


# # 4 Start with an array of numbers and create a new array with each number plus 7. For example, [1, 2, 3] becomes [8, 9, 10].

nums2 = [1, 2, 3]
add_seven = []

i = 0
while i < nums2.length 
  add_seven << nums2[i] + 7
  i += 1
end
p add_seven
p "-----------------"


# # 5 Start with an array of strings and create a new array with each string's length. For example, ["hello", "goodbye", "frog"] becomes [5, 7, 4].

words2 = ["hello", "goodbye", "frog"]
length_of = []

words2.each do |w|
  length_of.append(w.length)
end

p length_of
p "-----------------"

# # 6 Start with an array of hashes and create a new array of number values from each hash's :age key. For example, [{name: "Alice", age: 27}, {name: "Blane", age: 16}, {name: "Cloud", age: 25}] becomes [27, 16, 25]. (bonus: use string interpolation to print out a coherent sentence)

names_ages2 = [{name: "Alice", age: 27}, {name: "Blane", age: 16}]

ages = []
names_ages2.each do |a| 
  ages << a[:age]
end
p ages
p "-----------------"
# # 7 Start with an array of numbers and create a new array with each number divided by 2. For example, [1, 2, 3, 4] becomes [0.5, 1.0, 1.5, 2.0]. (BONUS) Try making an array of hashes like this {1: {0.5: "Is 1 / 2"}}

nums3 = [1, 2, 3, 4]
hash_div_table = {}

i = 0
while i < nums3.length
  hash_div_table[nums3[i]] = {((nums3[i].to_f) / 2) => "Is #{nums3[i]} / 2"}  
  i += 1
end

p hash_div_table
p "-----------------"

# # 8 Start with an array of strings and create a new array with each string's first letter only. For example, ["hello", "goodbye"] becomes ["h", "g"]. BONUS: make a hash yielding [{first_l: "h", last_l: "o", whole: "hello"}]

words3 = ["hello", "goodbye"]

first_ls = words3.map {|w| w[0]}
p first_ls

word_info_array = []
i = 0 
while i < words3.length
  word_info_array << {first: words3[i][0], last: words3[i][-1], whole: words3[i]}
  i += 1
end
p word_info_array
p "-----------------"
# # 9 Start with an array of hashes and create a new array of number values from each hash's :age key times 2. For example, [{name: "Alice", age: 27}, {name: "Blane", age: 16}, {name: "Barret", age: 33}] becomes [54, 32, 66].
names_ages3 = [{name: "Alice", age: 27}, {name: "Blane", age: 16}, {name: "Barret", age: 33}]

ages_times_two = []

names_ages3.each do |elem|
  ages_times_two.append(elem[:age] * 2)
end
p ages_times_two

p "-----------------"
# # 10 Start with an array of numbers and create a new array with each number converted into a string. For example, [1, 2, 3, 4] becomes ["1", "2", "3", "4"].
nums4 = [1, 2, 3, 4]

string_of_nums = nums4.map do |n|
  n.to_s
end
p string_of_nums
p "-----------------"

# SET 3 SELECT ITEMS FROM AN ARRAY INTO A NEW ARRAY WITH ITEMS THAT MATCH A CERTAIN CONDITION

# # 1 Start with an array of numbers and create a new array with only the numbers less than 20. For example, [2, 32, 80, 18, 12, 3] becomes [2, 18, 12, 3].
nums5 = [2, 32, 80, 18, 12, 3] 

less_than_twenty = nums5.select {|n| n < 20}
p less_than_twenty
p "-----------------"
# # 2 Start with an array of strings and create a new array with only the strings that start with the letter "w". For example, ["winner", "winner", "chicken", "dinner"] becomes ["winner", "winner"].
words4 = ["winner", "winner", "chicken", "dinner"]

w_start = []

i = 0
while i < words4.length
  if words4[i][0].downcase == "w"
    w_start << words4[i]
  end
  i += 1
end

p w_start

p "-----------------"
# # 3 Start with an array of hashes and create a new array with only the hashes with prices greater than 5 (from the :price key). For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes [{name: "chair", price: 100}].

p "-----------------"
# # 4 Start with an array of numbers and create a new array with only the even numbers. For example, [2, 4, 5, 1, 8, 9, 7] becomes [2, 4, 8].

# # 5 Start with an array of strings and create a new array with only the strings shorter than 4 letters. For example, ["a", "man", "a", "plan", "a", "canal", "panama"] becomes ["a", "man", "a", "a"].

# # 6 Start with an array of hashes and create a new array with only the hashes with names shorter than 6 letters (from the :name key). For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes [{name: "chair", price: 100}, {name: "book", price: 4}].

# # 7 Start with an array of numbers and create a new array with only the numbers less than 10. For example, [8, 23, 0, 44, 1980, 3] becomes [8, 0, 3].

# # 8 Start with an array of strings and create a new array with only the strings that don't start with the letter "b". For example, ["big", "little", "good", "bad"] becomes ["little", "good"].

# # 9 Start with an array of hashes and create a new array with only the hashes with prices less than 10 (from the :price key). For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes [{name: "pencil", price: 1}, {name: "book", price: 4}].

# # 10 Start with an array of numbers and create a new array with only the odd numbers. For example, [2, 4, 5, 1, 8, 9, 7] becomes [5, 1, 9, 7].