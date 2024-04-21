def numeral_converter
    rome = {
            one: "I", five: "V", 
            ten: "X", fifty: "L", 
            one_hundred: "C", 
            five_hundred: "D", 
            thousand: "M"
        }
    def rom_ones_place(integer)

        roman_numeral = ""
        if integer == 0
            roman_numeral = roman_numeral
        elsif integer < 3
            roman_numeral = rome[:one] * integer
        elsif integer == 4
            roman_numeral = rome[:one] + rome[:five]
        elsif integer == 5
            roman_numeral = rome[:five]
        elsif integer > 5 and integer < 9
            roman_numeral = rome[:five] + (rome[:one] * (integer - 5))
        else
            roman_numeral = rome[:one] + rome[:ten]
        
        end
        return roman_numeral
    end


    def rom_tens_place(integer)

        roman_numeral = ""
        if integer == 0
            roman_numeral = roman_numeral
        elsif integer < 3
            roman_numeral = rome[:ten] * integer
        elsif integer == 4
            roman_numeral = rome[:ten] + rome[:fifty]
        elsif integer == 5
            roman_numeral = rome[:fifty]
        elsif integer > 5 and integer < 9
            roman_numeral = rome[:fifty] + (rome[:ten] * (integer - 5))
        else
            roman_numeral = rome[:one_hundred] + rome[:ten]
        end
    end

    def rom_hundreds_place(integer)

        roman_numeral = ""
        if integer == 0
            roman_numeral = roman_numeral
        elsif integer < 3
            roman_numeral = rome[:one_hundred] * integer
        elsif integer == 4
            roman_numeral = rome[:one_hundred] + rome[:five_hundred]
        elsif integer == 5
            roman_numeral = rome[:five_hundred]
        elsif integer > 5 and integer < 9
            roman_numeral = rome[:five_hundred] + (rome[:one_hundred] * (integer - 5))
        else
            roman_numeral = rome[:thousand] + rome[:one_hundred]
        end
    end

    roman_hash = {}
    for num in (1..9)
        roman_hash[:ones] = {num: rom_ones_place(num)}
        roman_hash[:tens] = {num: rom_tens_place(num)}
        roman_hash[:hundreds] = {num: rom_hundreds_place(num)}
    end

    pp roman_hash
    # pp "This is the hundreds place conversion: #{rom_hundreds_place(4).to_s}"
    # pp "This is the tens place conversion: #{rom_tens_place(7).to_s}"
    # pp "This is the ones place conversion: #{rom_ones_place(5).to_s}"
end

# EDGE CASE
# if integer.class != 1.class
#     puts "Error: must be integer"
# end