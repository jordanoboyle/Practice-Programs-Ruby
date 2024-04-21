# dec_num_array = []
# dec_number = dec_number.to_s.split(//)
# for num in dec_number
#     dec_num_array.push(num.to_i)
# end

# number = 356

#dec_num_array = number.to_s.split(//).map {|num| num.to_i}

#pp number_array

# number = 678
# dec_num_array = number.to_s.split(//).map {|num| num.to_i}
# reference_numerals = {
#     "hundreds"=>{1=>"C", 2=>"CC", 3=>"CM", 4=>"CD", 5=>"D", 6=>"DC", 7=>"DCC", 8=>"DCCC", 9=>"CM"},
#     "tens"=>{1=>"X", 2=>"XX", 3=>"XC", 4=>"XL", 5=>"L", 6=>"LX", 7=>"LXX", 8=>"LXXX", 9=>"XC"},
#     "ones"=>{1=>"I", 2=>"II", 3=>"IX", 4=>"IV", 5=>"V", 6=>"VI", 7=>"VII", 8=>"VIII", 9=>"IX"}
# }

# place = ["hundreds", "tens", "ones"]


# roman_numeral = ''
# for key, value in Hash[place.zip(dec_num_array)]
#     roman_numeral += reference_numerals.dig(key, value) 
# end

# pp roman_numeral

# # number = 5

# # dec_num_array = number.to_s.split(//).map {|num| num.to_i}
# # length = dec_num_array.length
# # if length == 1
# #     dec_num_array.push(0, 0)
# #     dec_num_array = dec_num_array.reverse
# # elsif length == 2
# #     dec_num_array.push(0)
# #     dec_num_array = dec_num_array.reverse
# # else
# #     dec_num_array = dec_num_array
# # end

# # pp dec_num_array
# rome = {
#     one: "I", five: "V", 
#     ten: "X", fifty: "L", 
#     one_hundred: "C", 
#     five_hundred: "D", 
#     thousand: "M"
#     }
# place = ["hundreds", "tens", "ones"]    
# reference_numerals = {}
# for ref in place
#     if ref == "hundreds"
#         x, y, z = rome[:one_hundred], rome[:five_hundred], rome[:thousand]
#     elsif ref == "tens"
#         x, y, z = rome[:ten], rome[:fifty], rome[:one_hundred]
#     elsif ref == "ones"
#         x, y, z = rome[:one], rome[:five], rome[:ten]
#     end
#     reference_numerals[ref] = {}
    
#     for integer in Array(1..9)
#         numeral = ''
#         if integer == 0
#             numeral = numeral
#         elsif integer < 3
#             numeral = x * integer
#         elsif integer == 4
#             numeral = x + y
#         elsif integer == 5
#             numeral = y
#         elsif integer > 5 and integer < 9
#             numeral = y + (x * (integer - 5))
#         else
#             numeral = x + z
#         end
#         reference_numerals[ref][integer] = numeral
#     end  
# end
# pp reference_numerals



dec_number = 5
dec_num_array = dec_number.to_s.split(//).map {|num| num.to_i}
length = dec_num_array.length
if length == 1
    dec_num_array.push(0, 0)
    dec_num_array = dec_num_array.reverse
elsif length == 2
    dec_num_array.push(0)
    dec_num_array = dec_num_array.reverse
else
    dec_num_array = dec_num_array
end


pp dec_num_array