# 4. Write a Ruby program that stores the weight of a package and the destination (domestic or international). Then calculate the shipping fee based on the following conditions:

# If the destination is domestic:
# If the weight is less than or equal to 1 kg, the shipping fee is $5.
# If the weight is greater than 1 kg, the shipping fee is $10.
# If the destination is an international shipment:
# If the weight is less than or equal to 1 kg, the shipping fee is $15.
# If the weight is greater than 1 kg, the shipping fee is $25.


pack_info1 = {dest: "domestic", weight: 0.5}
pack_info2 = {dest: "domestic", weight: 0.5}
pack_info3 = {dest: "international", weight: 0.5}
pack_info4 = {dest: "international", weight: 1.5}

# if pack_info1[:weight] < 1.0
#   p "your total will be 10"
# else
#   p "nothing to worry about"

# end

def ship_cost_calc(package_info)
  dest = package_info[:dest]
  wt   = package_info[:weight]
  cost = 0
  sales_tax = 0.08

  if dest == "domestic"
    if wt <= 1.0
      cost = 5
    else
      cost = 10
    end
  else
    if wt <= 1.0
      cost = 15
    else
      cost = 25
    end
  end

  return "With a #{dest} destination and a weight of #{wt}kg, your shipping cost will be #{sprintf("%20.2f",(cost + (cost * sales_tax)))} which includes tax."
end

# for pack_info4 I expect 27 to be the cost

p ship_cost_calc(pack_info4)

# pack info stored in hash JSON
# access the hash and compare its shipping fees