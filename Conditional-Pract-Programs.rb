def ninety_nine_bottle()
    counter = 99
    while counter >= 0
        if counter > 1
            puts ''+counter.to_s+' bottles of beer on the wall, '+counter.to_s+' bottles of beer.'
            puts 'Take one down, pass it around, '+(counter - 1).to_s+' bottles of beer on the wall.'
            counter -= 1
        elsif counter == 1
            puts ''+counter.to_s+' bottle of beer on the wall, '+counter.to_s+' bottle of beer.'
            puts 'Take the damn thing down, pass it around, no more bottles of beer on the wall.'
            counter -= 1
        
        else
            puts "Zero damn bottles of beer, and " + "hell no we are not doing the reverse song!".upcase
            break
        end 
    end
        
end

#ninety_nine_bottle()

def deaf_grandma()
    puts "Grandma, it's "
    name = gets.chomp
    say_to_grandma = ''
    puts 'Oh, hi there '+name+'!'
    bye_count = 0
    while grandma_deaf = true
        puts 'What is that you need dear?!'
        say_to_grandma = gets.chomp
        
        if say_to_grandma != "BYE" and say_to_grandma == say_to_grandma.downcase
            puts "huh?! Speak up sweety,  I can't hear you!".upcase
            bye_count -= 1
        
        elsif say_to_grandma != "BYE"  and say_to_grandma == say_to_grandma.upcase
            puts ('No, not since '+(rand(1930..1950)).to_s+'!').upcase
            bye_count -= 1
        
        elsif bye_count < 3
            puts "Can you check on Mittens for me!".upcase
            bye_count += 1
        
        else
            puts "Oh....you're gone. Now I am lonely."
            break
        end
        # we need if else to determine different responses
    end
end

#deaf_grandma()

def leap_year_array()
    puts "This is a leap year lister. We want a list of leap years between 2 given points in time."
    puts "Give me a starting year: "
    start_year = gets.chomp.to_i
    puts " Give me an ending year: "
    end_year = gets.chomp.to_i

    leap_array = []
    for year in (start_year..end_year)
        if year % 4 == 0 and not year % 100 == 0
            leap_array.push(year)
       
        elsif year % 400 == 0
            leap_array.push(year)
        
        else
            next
        end
    end
    return leap_array
end

puts leap_year_array()
