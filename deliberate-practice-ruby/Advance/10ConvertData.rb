def space_bar
  space = ""
  20.times do 
    space += "%"
  end
  return p space
end

# 3. Convert a string into a hash with keys for each letter in the string and values for the number of times the letter appears in the string.
# For example, "bookkeeper" becomes {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1}.
word_one = "bookkeeper"
letter_tracker = {}

word_one.split('').each do |letter|
  if letter_tracker[letter] == nil
    letter_tracker[letter] = 1
  else
    letter_tracker[letter] += 1
  end
end

p letter_tracker 

space_bar()

# 4. Convert a hash into an array of arrays.
# For example, {"chair" => 100, "book" => 14} becomes [["chair", 100], ["book", 14]].
item_hash = {"chair" => 100, "book" => 14}
item_price_array = []

item_hash.each do |item, price|
  item_price_array << [item, price]
end

p item_price_array

item_price_array2 = []
i = 0
while i < item_hash.keys.length
  item_price_array2 << [item_hash.keys[i], item_hash[item_hash.keys[i]]]
  i += 1
end
p item_price_array2

space_bar()

# 5. Convert a hash into an array of hashes using the keys from each hash as the :id key in each of the array's hashes.
# For example, {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}} becomes [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}].
id_hash = {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}}
name_age = []

id_hash.each do |id, hash|
  hash[:id] = id
  name_age << hash
end

p name_age



person = {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}}
name_age2 = []

k = 0
while k < person.keys.length
  key = person.keys[k]
  if person[key][:id] == nil
    person[key][:id] = key
  end
  name_age2.push(person[key])
  k += 1
end
p name_age2