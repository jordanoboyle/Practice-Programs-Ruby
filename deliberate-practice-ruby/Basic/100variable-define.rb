# Set 1: Writing number and string variables with built-in methods

# # 1 Write a program that uses a variable to store a number, then prints that number plus 10.
num = 10 
p 10 + 10

# # 2 Write a program that uses a variable to store a word, then prints that word with all capital letters.
name = "this will be as capital"
p name.upcase
# # 3 Write a program that uses variables to store two numbers, then prints the numbers added together.
number1 = 10
number2 = 25

p number1 + number2

# # 4 Write a program that uses a variable to store a word, then prints that word in reverse order.

name2 = "This will be printed in reverse."
p name2.reverse

# method to reverse by other means. 
need_to_join = []
index = -1
while index >= -name2.length
  need_to_join << name2.split('')[index]
  index = index - 1
end

p need_to_join.join('')


# # 5 Write a program that uses a variable to store a number, then prints the number times 10.

print_five_times = "Harley Bear"

puts (print_five_times + " ") * 5

5.times do
  p print_five_times
end

# # 6 Write a program that uses variables to store two words, then prints both words on the same line in all capital letters.

item1 = "Rubber Duck"
item2 = "Pokemon Card"

p "#{item1} and #{item2}".upcase

# # 7 Write a program that uses a variable to store a word, then prints the number of letters in the word.

string1 = "This method actually counts the characters in the string"

p string1
p string1.length

# # 8 Write a program that uses a variable to store a number with decimals, then prints the number as an integer.

phi = 1.618
proper_even = 2

proper_odd = 3

p phi * proper_even
p phi / proper_even
p phi + proper_even
p phi - proper_even

p (proper_even * proper_odd)
p (proper_even.to_f / proper_odd)  # this is important in recognizing that you need to have floats to get proper decimal answers
p proper_even + proper_odd
p proper_even - proper_odd

# # 9 Write a program that uses a variable to store two numbers, then prints the two numbers multiplied together.

number_float = 3.5
number_int = 5
num_turn_to_float = 6

puts "This is what happens when you mult integers #{number_int * num_turn_to_float}"
puts "This is what happens when you multi a float and an integer #{number_float * number_int}"

pp "No let's convert the divide an integer by a greater integer #{number_int / num_turn_to_float}. This does not actually equal zero"
pp "Let's make the change here #{number_int.to_f / num_turn_to_float}. See result"


# # 10 Write a program that uses a variable to store a word, then prints the word with all lowercase letters.

legend = "This is the Legend of Zelda BOTW"

p legend.downcase
