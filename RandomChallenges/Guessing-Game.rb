
# we are going to make a quick guessing game from memory here

puts "Let's play a guessing game."

secret_number = rand(1..100)

while true
    puts "Guess a number between 1 and 100: "
    guess = gets.chomp.to_i
    if guess > secret_number
        puts "To high, guess again"
    elsif guess < secret_number
        puts "To low, guess again"
    else
        puts "Great guess, you win."
        break
    end
end

puts "Thanks for playing."