def spacebar
  space = ""
  20.times do
    space += "%"
  end
  return puts space
end

# 4. Write a Contact class that stores the name, age, and contact_info, where contact_info is a hash that stores any additional information about the contact.

class Contact 
  attr_writer :name, :age, :contact_info
  attr_reader :name, :age, :contact_info
  
  def initialize(name, age, contact_info = {phone: "", email: ""})
    @name = name
    @age = age
    @contact_info = contact_info
  end

  def enter_contact_info(phone = "", email = "")
    @contact_info[:phone] = phone
    @contact_info[:email] = email
  end

  def show_email
    return @contact_info[:email]
  end

  def list_employee_info
    return "Name: #{@name} \n
    Age: #{@age} \n
    Email: #{@contact_info[:email]} \n
    Phone: #{@contact_info[:phone]}"
  end
end

person1 = Contact.new("Jordan", 35)

p person1

person1.enter_contact_info("3307149638", "jordan@email.com")
p person1

p "My email is #{person1.contact_info[:email]}."
p "My email is #{person1.show_email}"

puts person1.list_employee_info

spacebar()


# 6. Convert an array of strings into a hash with keys for each string in the array and values for the number of times the string appears in the array.
# For example, ["do", "or", "do", "not"] becomes {"do" => 2, "or" => 1, "not" => 1}.
do_or_not = ["do", "or", "do", "not"]
hash_this = Hash.new

do_or_not.each do |i|
  if hash_this[i] == nil
    hash_this[i] = 1
  else
    hash_this[i] += 1
  end
end
puts hash_this

puts hash_this

spacebar()

# 7. Convert a hash into a flat array containing all the hash’s keys and values.
# For example, {"a" => 1, "b" => 2, "c" => 3, "d" => 4} becomes ["a", 1, "b", 2, "c", 3, "d", 4].
array_this_hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
mario = Array.new

index = 0
while index < array_this_hash.length
  mario << array_this_hash.keys[index]
  mario << array_this_hash.values[index]
  index += 1
end
p mario

mario = Array.new

mario = array_this_hash.map do |key, value|
  [key, value]
end
p mario.flatten

spacebar()

# 8. Combine data from a hash with names and prices and an array of hashes with names, colors, and weights to make a new hash.
# For example, {"chair" => 75, "book" => 15} and [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}] becomes {"chair" => {price: 75, color: "red", weight: 10}, "book" => {price: 15, color: "black", weight: 1}}.
item_price = {"chair" => 75, "book" => 15}
prod_info = [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}]
combine = {}

i = 0
prod_info.each do |p|
  p[:price] = item_price.values[i]
  combine[item_price.keys[i]] = p 
  i += 1
end
p combine



# 3. Write a program that stores a person's order value and membership level (regular or premium). Then calculate a discount amount based on the following conditions:

# If the total order value is less than $50, there is no discount.
# If the total order value is between $50 and $100, the discount is 5% for regular customers and 10% for premium customers.
# If the total order value is greater than $100, the discount is 10% for regular customers and 15% for premium customers.

def discount(membership_level, order_value)
  total = 0

  if order_value < 50
    total = order_value
  elsif order_value > 50 && order_value < 100
    if membership_level == "prem"
      total = order_value * (0.90)
    else
      total = order_value * (0.95) 
    end
  else
    if membership_level == "prem"
      total = order_value * (0.85)
    else
      total = order_value * (0.90)
    end

  end
  
  if membership_level == "prem"
    return "Thank you for being a member, your total is #{total} plus tax."
  else
    return "Thank you for shopping today. Your total is #{total} plus tax."
  end
end

p discount("prem", 100) # => 90
p discount("prem", 200) # => 170
p discount("reg", 100) # => 95
p discount("reg", 200) # => 180
