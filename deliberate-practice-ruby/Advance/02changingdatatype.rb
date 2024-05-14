# SET 4 CONVERT DATA FROM ONE DATA TYPE TO ANOTHER. 

p "-------------------"

# 1. Convert an array of arrays into a hash.
# For example, [[1, 3], [8, 9], [2, 16]] becomes {1 => 3, 8 => 9, 2 => 16}.

convert_this = [[1, 3], [8, 9], [2, 16]]

num_hash = {}
i = 0
while i < convert_this.length
  num_hash[convert_this[i][0]] = convert_this[i][1]
  i += 1
end
p num_hash

# 2. Convert an array of hashes into a hash using the :id key from the array's hashes as the keys in the new hash.
# For example, [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}] becomes {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}.
conversion = [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}]
hash_key_transfer = {}

conversion.each do |element|
  hash_key_transfer[element[:id]] = element
end
p hash_key_transfer
p "-------------------"


# 3. Convert a string into a hash with keys for each letter in the string and values for the number of times the letter appears in the string.
# For example, "bookkeeper" becomes {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1}.

hash_the_letters = "bookkeeper"
letter_hash = {}

for n in hash_the_letters.split('')
  if letter_hash[n] == nil
    letter_hash[n] = 1
  else
    letter_hash[n] += 1
  end
end
p letter_hash
p "-------------------"

# 4. Convert a hash into an array of arrays.
# For example, {"chair" => 100, "book" => 14} becomes [["chair", 100], ["book", 14]].

items_hash = {"chair" => 100, "book" => 14}
item_array = []

items_hash.each do |key, value|
  item_array << [key, value]
end
p item_array
p "-------------------"

# 5. Convert a hash into an array of hashes using the keys from each hash as the :id key in each of the array's hashes.
# For example, {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}} becomes [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}].

name_age_hash = {
  321 => {name: "Alice", age: 31},
  322 => {name: "Maria", age: 27}
}
name_age_array = []

for key, person in name_age_hash
  person[:id] = key
  name_age_array.push(person)
end
p name_age_array

name_age_array2 = []
name_age_hash.each do |key, person|
  person[:id] = key
  name_age_array2 << person
end
p name_age_array2

p "-------------------"


# 6. Convert an array of strings into a hash with keys for each string in the array and values for the number of times the string appears in the array.
# For example, ["do", "or", "do", "not"] becomes {"do" => 2, "or" => 1, "not" => 1}.

count_this = ["do", "or", "do", "not"]
counted_strings = {}

count_this.each do |string|
  if counted_strings[string] == nil
    counted_strings[string] = 1
  else
    counted_strings[string] += 1
  end
end
p counted_strings

# 7. Convert a hash into a flat array containing all the hash’s keys and values.
# For example, {"a" => 1, "b" => 2, "c" => 3, "d" => 4} becomes ["a", 1, "b", 2, "c", 3, "d", 4].

alph_hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
alph_array = []


# 8. Combine data from a hash with names and prices and an array of hashes with names, colors, and weights to make a new hash.
# For example, {"chair" => 75, "book" => 15} and [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}] becomes {"chair" => {price: 75, color: "red", weight: 10}, "book" => {price: 15, color: "black", weight: 1}}.

# 9. Convert an array of hashes into a hash of arrays, using the author as keys and the titles as values.
# For example, [{author: "Jeff Smith", title: "Bone"}, {author: "George Orwell", title: "1984"}, {author: "Jeff Smith", title: "RASL"}] becomes {"Jeff Smith" => ["Bone", "RASL"], "George Orwell" => ["1984"]}.

# 10. Given a hash, create a new hash that has the keys and values switched.
# For example, {"a" => 1, "b" => 2, "c" => 3} becomes {1 => "a", 2 => "b", 3 => "c"}.