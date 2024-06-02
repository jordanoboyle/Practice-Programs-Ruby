
number1 = 0
number2 = 1

100.times do 
    pp number2
    temporary = number2
    number2 = number1 + number2
    number1 = temporary

end

fibo = [1, 1]
index = 0 
number = 0
while index < 100
    number = fibo[index] + fibo[index+1]
    fibo.push(number)
    index += 1
end 

pp fibo
