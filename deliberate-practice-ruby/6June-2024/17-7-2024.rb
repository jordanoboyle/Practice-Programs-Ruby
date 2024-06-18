
# 6. Convert an array of strings into a hash with keys for each string in the array and values for the number of times the string appears in the array.
# For example, ["do", "or", "do", "not"] becomes {"do" => 2, "or" => 1, "not" => 1}.
words = ["do", "or", "do", "not"]
words_hash = {}

words.each do |word|
  if words_hash[word] == nil
    words_hash[word] = 1
  else
    words_hash[word] += 1
  end
end

p words_hash

# 7. Convert a hash into a flat array containing all the hash’s keys and values.
# For example, {"a" => 1, "b" => 2, "c" => 3, "d" => 4} becomes ["a", 1, "b", 2, "c", 3, "d", 4].
letters_numbers = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
array_ln = []
letters_numbers.each do |key, value|
  array_ln.push(key, value)
end
p array_ln

# 8. Combine data from a hash with names and prices and an array of hashes with names, colors, and weights to make a new hash.
# For example, {"chair" => 75, "book" => 15} and [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}] becomes {"chair" => {price: 75, color: "red", weight: 10}, "book" => {price: 15, color: "black", weight: 1}}.

item_price = {"chair" => 75, "book" => 15}
items = [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}]
item_details = {}

items.each do |item|
  item[:price] = item_price[item[:name]]
  item_details[item[:name]] = item
  item_details[item[:name]].delete(:name)
end

p item_details


#  Challenge
# Objective: Given an array of strings representing numbers and other values, filter out non-numeric strings, convert them to integers, and then compute the sum of all integers in the array.
data = ["1", "2", "3", "four", "5", "six", "7", "eight", "9", "10"]
integers_one = []

data.each do |element|
  if element.match(/\A\d+\z/)
    integers_one << element.to_i
  end
end

p integers_one.sum

#other option
sum = 0
data.each do |element|
  if element.match(/\A\d+\z/)
    sum += element.to_i
  end
end
p "This is the sum using regex #{sum}"