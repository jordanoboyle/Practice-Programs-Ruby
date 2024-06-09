# SET 4 REDUCE AN ARRAY TO A SINGLE VALUE BASED ON SOME COMPUTATION

# Instructions, rotate solutions between each, times, select and while/for loops. 
# BONUS Learn to use .inject() method for basic mathematical operations to act on whole array
p "----------------"
# # 1 Start with an array of numbers and compute the sum of all the numbers. For example, [5, 10, 8, 3] becomes 26.

sum_this_array = [5, 10, 8, 3]
sum = 0

sum = sum_this_array.reduce {|sum, number| sum + number}
p sum

sum2 = sum_this_array.inject(:+)
p sum2
p "----------------"

# # 2 Start with an array of strings and combine them all into a single string. For example, ["volleyball", "basketball", "badminton"] becomes "volleyballbasketballbadminton".

combine_to_one = ["volleyball", "basketball", "badminton"]
complete_string = ''

complete_string = combine_to_one.reduce() do |complete_string, word|
  complete_string + word
end
p complete_string

complete_string2 = combine_to_one.inject(:+)
p complete_string2
p "----------------"

# # 3 Start with an array of hashes and compute the sum of the prices (from the :price key). For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes 105.

sum_the_price = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]

price_sum = sum_the_price.reduce(0) do |price_sum, item|
  price_sum += item[:price] 
end
p price_sum 

price_sum2 = 0
sum_the_price.each do |item|
  price_sum2 += item[:price]
end
p price_sum2
p "----------------"


# # 4 Start with an array of numbers and compute the the minimum number. For example, [5, 10, 8, 3, 9] becomes 3.

find_min = [5, 10, 8, 3, 9]
min = 99999
min2 = 9999 

i = 0
while i < find_min.length
  if find_min[i] < min
    min = find_min[i]
  end
  i += 1
end
p min

for n in find_min
  if n < min2
    min2 = n
  end
end
p min2
p "----------------"


# # 5 Start with an array of strings and compute the total length of all the strings. For example, ["volleyball", "basketball", "badminton"] becomes 29.
combine_the_length = ["volleyball", "basketball", "badminton"]
sum_len1 = 0
sum_len2 = 0

sum_len1 = combine_the_length.reduce(0) do |sum, word|
  sum += word.length
end 
p sum_len1

combine_the_length.each do |word|
  sum_len2 += word.length
end
p sum_len2

p "----------------"


# # 6 Start with an array of hashes and find the hash with the lowest price (from the :price key). For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "pencil", price: 1}.
item_price = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]

cheapest = item_price.reduce(item_price[0]) do |cheapest, item|
  if item[:price] < cheapest[:price]
    item
  else
    cheapest
  end
end
p cheapest

cheapest_item = item_price[0]
item_price.each do |item|
  if item[:price] < cheapest_item[:price]
    cheapest_item = item
  else
    cheapest_item = cheapest_item
  end
end
p cheapest_item
p "----------------"

# # 7 Start with an array of numbers and compute product of all the numbers. For example, [5, 10, 8, 3] becomes 1200.
get_product = [5, 10, 8, 3]

total_product = get_product.reduce(1) {|total_product, num| total_product * num }
p total_product

total_product2 = get_product.inject(:*)
p total_product2

total_product3 = 1
get_product.each do |num|
  total_product3 *= num
end 
p total_product3
p "----------------"

# # 8 Start with an array of strings and combine them all into a single string, separated by dashes. For example, ["volleyball", "basketball", "badminton"] becomes "-volleyball-basketball-badminton-".

hiphen_this = ["volleyball", "basketball", "badminton"]

start = hiphen_this.reduce("-") {|start, word| start + (word + "-")}
p start

start2 = "-"
i = 0
while i < hiphen_this.length
  start2 += (hiphen_this[i] + '-')
  i += 1
end
p start2
p "----------------"

# # 9 Start with an array of hashes and find the hash with the shortest name (from the :name key). For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "book", price: 4}.
find_short = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]

shortest_name = find_short.reduce(find_short[0]) do |shortest_name, item|
  if item[:name].length < shortest_name[:name].length
    item
  else
    shortest_name
  end
end
p shortest_name

shortest_name2 = find_short[0] 
find_short.each do |item|
  if item[:name].length < shortest_name2[:name].length
    shortest_name2 = item
  else
    shortest_name2 = shortest_name2
  end
end
p shortest_name2
p "----------------"

# # 10 Start with an array of numbers and compute the maximum number. For example, [5, 10, 8, 3] becomes 10.
find_max = [5, 10, 8, 3]

max_num1 = find_max.reduce(find_max[0]) do |max_num1, num|
  if num > max_num1
    num
  else
    max_num1
  end
end

p max_num1

max_num2 = find_max[0]
find_max.each do |num|
  if num > max_num2
    max_num2 = num
  else
    max_num2 = max_num2
  end
end
p max_num2
