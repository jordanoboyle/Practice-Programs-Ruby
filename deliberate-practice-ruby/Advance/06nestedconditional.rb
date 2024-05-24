def space_bar
  space = ""
  20.times do
    space += "#"
  end
  return puts space
end

space_bar()
# 1. Write a program that stores a customer's age and a movie's time in two separate variables. Then calculate the price of a movie ticket based on the following conditions:

# If the age is 12 years old or younger, the ticket price is $5.
# If the age is between 13 and 59 years old and the movie is before 6 PM, the ticket price is $7. After 6 PM, the ticket price is $10.
# If the customer is 60 years old or older, the ticket price is $7. 

def movie_ticket_elegible(age, movie_time = 12)
  ticket_price = 0
  if age <= 12
    ticket_price = 5
  elsif age > 12 && age < 60
    if movie_time <= 18
      ticket_price = 7
    else
      ticket_price = 10
    end
  else
    ticket_price = 7
  end
  return puts "Your ticket is #{ticket_price} dollars plus tax."
end

movie_ticket_elegible(59, 19)

space_bar()
# 2. Write a program to store the type of book (regular, reference, or special collection) and the number of days its overdue. Then calculate the fine amount based on the following conditions:

# If the book is a regular book and overdue by up to 7 days, the fine is $1 per day.
# If the book is a regular book and overdue by more than 7 days, the fine is $2 per day.
# If the book is a reference book, there is no fine, regardless of the number of days overdue.
# If the book is a special collection book, the fine is $5 per day, regardless of the number of days overdue.



def book_fine(book_type, days_overdue)
  fine = 0
  if book_type == "regular" 
    if days_overdue <= 7
      fine = days_overdue * 1
    else
      fine = days_overdue * 2
    end
  elsif book_type == "reference"
    fine = fine
  else
    fine = days_overdue * 5

  end
  
  return puts "Your overdue fine is $#{fine} plus tax."
end
book_fine("special collection", 10)
# BONUS: write a method that generates a random book type, and random number of days for overdue to test your other method. 
def gen_random_book_test
  rand_book = ["reference", "regular", "special collection"]
  days_overdue = rand(1...15)
  book = rand_book[rand(0...rand_book.length)]

  return [book, days_overdue]
end

p gen_random_book_test().join(", ")

book_fine((gen_random_book_test())[0], (gen_random_book_test())[1])
# 3. Write a program that stores a person's order value and membership level (regular or premium). Then calculate a discount amount based on the following conditions:

# If the total order value is less than $50, there is no discount.
# If the total order value is between $50 and $100, the discount is 5% for regular customers and 10% for premium customers.
# If the total order value is greater than $100, the discount is 10% for regular customers and 15% for premium customers.

# 4. Write a Ruby program that stores the weight of a package and the destination (domestic or international). Then calculate the shipping fee based on the following conditions:

# If the destination is domestic:
# If the weight is less than or equal to 1 kg, the shipping fee is $5.
# If the weight is greater than 1 kg, the shipping fee is $10.
# If the destination is an international shipment:
# If the weight is less than or equal to 1 kg, the shipping fee is $15.
# If the weight is greater than 1 kg, the shipping fee is $25.
