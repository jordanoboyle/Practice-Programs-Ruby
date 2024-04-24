def roman_converter(dec_number)
    
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
    #pp dec_num_array  --->test
    rome = {
        one: "I", five: "V", 
        ten: "X", fifty: "L", 
        one_hundred: "C", 
        five_hundred: "D", 
        thousand: "M"
        }
    
    place = ["hundreds", "tens", "ones"]    
    reference_numerals = {}
    for ref in place
        if ref == "hundreds"
            x, y, z = rome[:one_hundred], rome[:five_hundred], rome[:thousand]
        elsif ref == "tens"
            x, y, z = rome[:ten], rome[:fifty], rome[:one_hundred]
        elsif ref == "ones"
            x, y, z = rome[:one], rome[:five], rome[:ten]
        end
        reference_numerals[ref] = {}

        for integer in Array(0..9)
            numeral = ''
            if integer == 0
                numeral = numeral
            elsif integer < 3
                numeral = x * integer
            elsif integer == 4
                numeral = x + y
            elsif integer == 5
                numeral = y
            elsif integer > 5 and integer < 9
                numeral = y + (x * (integer - 5))
            else
                numeral = x + z
            end
            reference_numerals[ref][integer] = numeral
        end  
    end

    roman_numeral = ''
    for key, value in Hash[place.zip(dec_num_array)]
        roman_numeral += reference_numerals.dig(key, value) 
    end

    return roman_numeral
end    


puts "Enter a number between 1-999: "
user_number = gets.chomp.to_i

pp roman_converter(user_number)

