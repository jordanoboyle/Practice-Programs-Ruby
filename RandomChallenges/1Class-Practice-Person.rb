# Let's cover classes

puts 4.class
puts "hello".class
puts true.class
puts [1, 2, 3].class

class Person
    def initialize(input_eye_color, input_hair_color, input_height)
        @eye_color = input_eye_color
        @hair_color = input_hair_color
        @height = input_height
    end
end

person = Person.new("brown", "black", 70)

# here we have a ton of control over the person. With a hash, not so much.

person2 = {"eye" => "brown", "hair" => "black", "height" => 70,
"wheel" => 4}  # people don't have wheels!

# this is the basic point. Watch what happens here:
# code crash, our person class cannot have wheels, whereas hashes
# can pretty much do what they want
pp person 
puts person2

person3 = Person.new("blue", "blonde", 60, 4) 
puts person3


