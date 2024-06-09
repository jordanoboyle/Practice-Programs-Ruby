# SET 4 REDUCE AN ARRAY TO A SINGLE VALUE BASED ON SOME COMPUTATION

# 1 Start with an array of numbers and compute the sum of all the numbers. For example, [5, 10, 8, 3] becomes 26.
array_to_compute = [5, 10, 8, 3]
sum = 0

for num in array_to_compute
  sum += num
end

p sum

# 2 Start with an array of strings and combine them all into a single string. For example, ["volleyball", "basketball", "badminton"] becomes "volleyballbasketballbadminton".

array_of_strings = ["volleyball", "basketball", "badminton"]
single_string = ''

array_of_strings.each {|word| single_string += word}

pp single_string

# 3 Start with an array of hashes and compute the sum of the prices (from the :price key). For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes 105.

items_prices = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]




# 4 Start with an array of numbers and compute the the minimum number. For example, [5, 10, 8, 3, 9] becomes 3.

# 5 Start with an array of strings and compute the total length of all the strings. For example, ["volleyball", "basketball", "badminton"] becomes 29.

# 6 Start with an array of hashes and find the hash with the lowest price (from the :price key). For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "pencil", price: 1}.

# 7 Start with an array of numbers and compute product of all the numbers. For example, [5, 10, 8, 3] becomes 1200.

# 8 Start with an array of strings and combine them all into a single string, separated by dashes. For example, ["volleyball", "basketball", "badminton"] becomes "-volleyball-basketball-badminton-".

# 9 Start with an array of hashes and find the hash with the shortest name (from the :name key). For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "book", price: 4}.

# 10 Start with an array of numbers and compute the maximum number. For example, [5, 10, 8, 3] becomes 10.