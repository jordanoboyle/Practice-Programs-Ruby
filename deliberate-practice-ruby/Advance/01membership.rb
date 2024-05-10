# 3. Write a program that stores a person's order value and membership level (regular or premium). Then calculate a discount amount based on the following conditions:

# If the total order value is less than $50, there is no discount.
# If the total order value is between $50 and $100, the discount is 5% for regular customers and 10% for premium customers.
# If the total order value is greater than $100, the discount is 10% for regular customers and 15% for premium customers.

member_visit1 = {mem_status: "regular", order_total: 180}
member_visit2 = {mem_status: "premium", order_total: 70}
member_visit3 = {mem_status: "premium", order_total: 200}


# discount_total = member_visit2[:order_total] - (member_visit2[:order_total] * 0.05)
# p discount_total

def member_discount(member_info)
  five_percent    = 0.05
  ten_percent     = 0.10
  fifteen_percent = 0.15

  total  = member_info[:order_total]
  status = member_info[:mem_status]
  actual_total = 0
  
  if total < 50
    actual_total = total
  elsif total >= 50 and total <= 100
    if status == "regular"
      actual_total = total - (total * five_percent)
    else 
      actual_total = total - (total * ten_percent) 
    end
  else
    if status == "regular"
      actual_total = total - (total * ten_percent)
    else
      actual_total = total - (total * fifteen_percent)
    end
  end

  return "Thank you for your purchase today, due to your membership status your total will be #{actual_total}."
end

p member_discount(member_visit3)

total = 200
fifteen_percent = 0.15
total = total - (total * fifteen_percent)
p total
# store membership status and order value in hash
# show the hash value in console
# show that we can adjust an order for a certain percentage discount 
# write conditional according to information details.
# prove conditional show discount  