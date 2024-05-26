require "tty-prompt"
# 3: Even or Odd Sum: Write a program that calculates the sum of all even or odd numbers from 1 to a given positive integer n, based on user input. For example, if the user chooses to sum even numbers and n is 5, the output should be 6 (2 + 4).

def odd_even()
  prompt = TTY::Prompt.new
  pick_odd_even = prompt.select("Do you want sum of odd or even numbers?", %w(odd even))
  puts "Pick a number (preferably less that 50): "
  number_choice = gets.chomp.to_i
  
  sum = 0
  if pick_odd_even.to_s == "odd"
    array_to_sum = (1...number_choice + 1).to_a
    array_to_sum.each do |num|
      if num % 2 != 0
        sum += num
      end
    end  
  else
    array_to_sum = (1...number_choice + 1).to_a
    array_to_sum.each do |num|
      if num % 2 == 0
        sum += num
      end
    end    
  end
  return sum
end

puts odd_even()

# sum = 0
# array_to_sum = (1...10 + 1).to_a
# array_to_sum.each do |num|
#   if num % 2 == 0
#     sum += num
#   end
# end

# p sum
