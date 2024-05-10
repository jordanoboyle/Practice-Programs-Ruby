# 2. Write a program to store the type of book (regular, reference, or special collection) and the number of days its overdue. Then calculate the fine amount based on the following conditions:

# If the book is a regular book and overdue by up to 7 days, the fine is $1 per day.
# If the book is a regular book and overdue by more than 7 days, the fine is $2 per day.
# If the book is a reference book, there is no fine, regardless of the number of days overdue.
# If the book is a special collection book, the fine is $5 per day, regardless of the number of days overdue.



book1 = {book_type: "regular", days_overdue: 3}
book2 = {book_type: "reference", days_overdue: 7}
book3 = {book_type: "special collection", days_overdue: 6}
book4 = {book_type: "regular", days_overdue: 10}



# p book1, book2, book3

def book_overdue_rate(book_info) #hash parameter
  fine = 0
  type = book_info[:book_type]
  over = book_info[:days_overdue]

  if type == "regular"
    if over <= 7
      fine = over
    else 
      fine = over * 2
    end
  elsif type == "special collection" 
    fine = over * 5
  else
    fine = 0
  end
  
  if type == "regular" || type == "special collection"
    return "Since you check out a #{type} classification book, and it is #{over} days overdue, the fine is #{fine} plus tax."
  else
    return "Due to this being a #{type} classification, there is no fine for overdue, but please try to return the book on time."
  end
  
end

p book_overdue_rate(book4)
p book_overdue_rate(book2)

#test method
# define book types in method (possible later function)
# use day and fine parameters to write conditionals



# Bonus = write program to generate random book, and number of days it is over due (method)