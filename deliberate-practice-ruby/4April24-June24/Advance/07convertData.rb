# Convert data from one type  to another type

# 6. Convert an array of strings into a hash with keys for each string in the array and values for the number of times the string appears in the array.
# For example, ["do", "or", "do", "not"] becomes {"do" => 3, "or" => 1, "not" => 2}.

count_this = ["do", "or", "do", "not", "not", "do"]
word_count_hash = {}
count_this.each do |word|
  if word_count_hash[word] == nil
    word_count_hash[word] = 1
  else
    word_count_hash[word] = word_count_hash[word] + 1
  end
end

p word_count_hash
#or
word_num_hash = Hash.new(0)   # this initializes a hash with unknown keys equaling 0
count_this.each do |word|
  word_num_hash[word] += 1
end
p word_num_hash

# 7. Convert a hash into a flat array containing all the hash’s keys and values.
# For example, {"a" => 1, "b" => 2, "c" => 3, "d" => 4} becomes ["a", 1, "b", 2, "c", 3, "d", 4].
flatten_this = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
array_flattened = []

i = 1
while i < flatten_this.length
  array_flattened << flatten_this.key(i)
  array_flattened << flatten_this[flatten_this.key(i)]
  i += 1
end
p array_flattened

# 8. Combine data from a hash with names and prices and an array of hashes with names, colors, and weights to make a new hash.
# For example, {"chair" => 75, "book" => 15} and [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}] becomes {"chair" => {price: 75, color: "red", weight: 10}, "book" => {price: 15, color: "black", weight: 1}}.
items_price = {"chair" => 75, "book" => 15}
item_info = [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}]
item_hash = {}
item_info.each do |item|
  item[:price] = items_price[:name]
  item_hash[item[:name]] = item
  item_hash[item[:name]].delete(:name)
end
p item_hash
# 9. Convert an array of hashes into a hash of arrays, using the author as keys and the titles as values.
# For example, [{author: "Jeff Smith", title: "Bone"}, {author: "George Orwell", title: "1984"}, {author: "Jeff Smith", title: "RASL"}] becomes {"Jeff Smith" => ["Bone", "RASL"], "George Orwell" => ["1984"]}.
books = [{author: "Jeff Smith", title: "Bone"}, {author: "George Orwell", title: "1984"}, {author: "Jeff Smith", title: "RASL"}];
authors = {}
j = 0
while j < books.length
  if authors[books[j][:author]] == nil
    authors[books[j][:author]] = [books[j][:title]]
  else
    authors[books[j][:author]] << books[j][:title]
  end
  j += 1
end
p authors
# 10. Given a hash, create a new hash that has the keys and values switched.
# For example, {"a" => 1, "b" => 2, "c" => 3} becomes {1 => "a", 2 => "b", 3 => "c"}.
letter_to_number = {"a" => 1, "b" => 2, "c" => 3}
num_to_let = {}

letter_to_number.each do |key, value|
  num_to_let[value] = key
end

p num_to_let
