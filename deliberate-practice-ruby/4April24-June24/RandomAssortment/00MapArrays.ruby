# 8 Start with an array of strings and create a new array with only the strings that don't start with the letter "b". For example, ["big", "little", "good", "bad"] becomes ["little", "good"].
words_one = ["big", "little", "good", "bad"]
words_without_b = []

words_without_b = words_one.select do |word|
  if word.downcase[0] != "b"
    word
  end
end

p words_without_b


# 9 Start with an array of hashes and create a new array with only the hashes with prices less than 10 (from the :price key). For example, [{name: "chair", price: 100}, {name: "bird feeder", price: 9},{name: "rubber duck", price: 10}, {name: "pencil", price: 1}, {name: "book", price: 4}]  becomes [{name: "bird feeder", price: 9}, {name: "pencil", price: 1}, {name: "book", price: 4}].

item_price = [{name: "chair", price: 100}, {name: "bird feeder", price: 9},{name: "rubber duck", price: 10}, {name: "pencil", price: 1}, {name: "book", price: 4}]

less_than_ten = []

less_than_ten = item_price.select do |item|
  if item[:price] < 10
    item 
  end
end
p less_than_ten


# 10 Start with an array of numbers and create a new array with only the odd numbers. For example, [2, 4, 5, 1, 8, 9, 7] becomes [5, 1, 9, 7].
numbers = [2, 4, 5, 1, 8, 9, 7]
odds = [] 

odds = numbers.select do |num|
  if num % 2 != 0
    num
  end
end
p odds

