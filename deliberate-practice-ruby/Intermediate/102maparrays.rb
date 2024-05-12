# SET 2 MAP AN ARRAY TO A NEW ARRAY WITH SOME COMPUTATION PERFORMED ON EACH ITEM
# Rules...do two different methods per challenge

pp "-----------"

# # 1 Start with an array of numbers and create a new array with each number times 3. For example, [1, 2, 3] becomes [3, 6, 9].

change_this = [1, 2, 3]
map_to1 = []
map_to2 = []

for i in change_this
  map_to1.push(i * 3)
end
p map_to1

map_to2 = change_this.map {|i| i * 3}

p map_to2

pp "-----------"

# # 2 Start with an array of strings and create a new array with each string upcased. For example, ["hello", "goodbye"] becomes ["HELLO", "GOODBYE"].

greet_bye = ["hello", "goodbye"]
map_to3 = []
map_to4 = []

greet_bye.each do |i|
  map_to3 << i.upcase
end
p map_to3

map_to4 = greet_bye.map do |i|
  i.capitalize
end
p map_to4

pp "-----------"

# # 3 Start with an array of hashes and create a new array of string values from each hash's :name key. For example, [{name: "Alice", age: 27}, {name: "Blane", age: 16}] becomes ["Alice", "Blane"].

name_age    = [{name: "Alice", age: 27}, {name: "Blane", age: 16}]
name_array1 = []
name_array2 = []

i = 0
while i < name_age.length
  name_array1.push(name_age[i][:name])
  i += 1
end
p name_array1

name_age.each {|n| name_array2.push(n[:name])}
p name_array2

pp "-----------"

# # 4 Start with an array of numbers and create a new array with each number plus 7. For example, [1, 2, 3, 4] becomes [8, 9, 10, 11].

add_to_these = [1, 2, 3, 4]
plus_array1 = []
plus_array2 = []

add_to_these.each do |n|
  plus_array1.push(n + 7)
end

p plus_array1

plus_array2 = add_to_these.map do |n|
  n + 7
  p rand(1...11)
end

p plus_array2
pp "-----------"

# # 5 Start with an array of strings and create a new array with each string's length. For example, ["hello", "goodbye", "later gator"] becomes [5, 7, 11].

salutations = ["hello", "goodbye", "later gator"]
sal_length1 = []
sal_length2 = []

sal_length1 = salutations.map {|n| n.length}
p sal_length1

for i in salutations
  sal_length2.push(i.length)
  p "This is repetitive"
end
p sal_length2

pp "-----------"

# # 6 Start with an array of hashes and create a new array of number values from each hash's :age key. For example, [{name: "Alice", age: 27}, {name: "Blane", age: 16}, {name: "Tifa", age: 28}] becomes [27, 16, 28].

name_age2 = [{name: "Alice", age: 27}, {name: "Blane", age: 16}, {name: "Tifa", age: 28}]
ages1 = []
ages2 = []

i = 0
while i < name_age2.length
  ages1 << name_age2[i][:age]
  i += 1  
end
p ages1

ages2 = name_age2.map {|a| a[:age]}
p ages2

name_age2.each do |a|
  if a[:name].downcase == "tifa"
    p "#{a[:name]} is a character in FF7."
  else  
    p "#{a[:name]} is #{:age} years old."
  end
end

pp "-----------"

# # 7 Start with an array of numbers and create a new array with each number divided by 2. For example, [1, 2, 3, 4] becomes [0.5, 1.0, 1.5, 2.0].
divide_these = [1, 2, 3, 4]
floats1 = []
dividend_hash = {}

divide_these.each do |n|
  dividend_hash[n] = {(n.to_f) / 2 => "Is #{n} / 2" }
end
p dividend_hash

pp "-----------"

# # 8 Start with an array of strings and create a new array with each string's first letter only. For example, ["hello", "goodbye", "later"] becomes ["h", "g", "l"].

need_first_l = ["hello", "goodbye", "later"]
first_letter1 = []
first_last_hash = []

first_letter1 = need_first_l.map {|n| n[0]}
p first_letter1

index = 1
for i in need_first_l
  hash_insert = {}
  hash_insert[:first_l] = i[0]
  hash_insert[:last_l]  = i[-1]
  hash_insert[:whole]   = i
  first_last_hash << hash_insert
end
p first_last_hash

pp "-----------"

# # 9 Start with an array of hashes and create a new array of number values from each hash's :age key times 2. For example, [{name: "Alice", age: 27}, {name: "Blane", age: 16}] becomes [54, 32].
name_age3 = [{name: "Alice", age: 27}, {name: "Blane", age: 16}]
age_times  = []
age_times1 = []

age_times = name_age3.map {|n| (n[:age] * 2)}
p age_times

name_age3.each {|n| age_times1 << n[:age] * 2} 
p age_times1
pp "-----------"

# # 10 Start with an array of numbers and create a new array with each number converted into a string. For example, [1, 2, 3, 4] becomes ["1", "2", "3", "4"].

convert_to_string = [1, 2, 3, 4] 
string_nums1 = []
string_nums2 = []

string_nums1 = convert_to_string.map do |n|
  n.to_s * 2
end
p string_nums1

convert_to_string.each do |n|
  string_nums2 << n.to_s * 3  
end
p string_nums2  