# THIS PROGRAM BUILDS A REFERENCE HASH FOR ALL NUMBERS 1-999
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
    for integer in Array(1..9)
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

puts reference_numerals