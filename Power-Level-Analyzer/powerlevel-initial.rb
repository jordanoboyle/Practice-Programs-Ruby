# QUESTION 1
# Write a method called `check_power_level` that asks the user to enter a number.
# If the number is greater than 9000, it will print "BIG" to the screen.
# Otherwise, it will print "SMALL" to the screen.
# Then run the method to see the result.

'''Someone really likes Dragonball Z here ;-)'''

def check_power_level
  puts "What is your power level?"
  power_level = gets.chomp.to_i

  if power_level > 9000
    puts "#{power_level}, that is astounding!"
  else
    puts "Below 9000, pathetic!"
  end
end


# You could have fun by creating a method that provides a random power-level

def create_p_level
  power_level = 0
  races = ["namekian", "saiyan", "human", "android"]
  while true
    puts "What race are you: Namekian, Saiyan, Human, Android"
    race = gets.chomp.downcase
    if races.include?(race) == true
      if race == "namekian" || race == "android"
        power_level = rand(7000...10001)
      elsif race == "human"
        power_level = rand (6000...9200)
      elsif race == "saiyan"
        power_level = rand(8500...14000)
      end
      break
    else 
      puts "I do not have the capacity to analyze your powerlevel. Try another race."
    end
  end
  return power_level
end

pp create_p_level