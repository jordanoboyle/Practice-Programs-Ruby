# 1. Write a program that stores a customer's age and a movie's time in two separate variables. Then calculate the price of a movie ticket based on the following conditions:

# If the age is 12 years old or younger, the ticket price is $5.
# If the age is between 13 and 59 years old and the movie is before 6 PM, the ticket price is $7. After 6 PM, the ticket price is $10.
# If the customer is 60 years old or older, the ticket price is $7. 
def movie_price
  puts "What is your age?"
  cust_age = gets.chomp.to_i
  puts "What time is your movie?"
  movie_time = gets.chomp.to_i
  ticket_price = 0

  if cust_age <= 12
    ticket_price = 5
  elsif cust_age >= 13 and cust_age <= 59
    if movie_time < 18
      ticket_price = 7
    else
      ticket_price = 10
    end
  else
    ticket_price = 7
  end
  return "Your ticket will be #{ticket_price.to_f}. Enjoy the movie."
end

p movie_price


#write an if statement that prints both customer age and movie time
# add gate logic to allows for only certain aged customers to see a movie. (need random number gen)
# don't forget that time needs to be in military time