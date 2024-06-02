class Person
    def initialize(input_eye_color, input_hair_color, input_height)
        @eye_color = input_eye_color
        @hair_color = input_hair_color
        @height = input_height
    end

    def formatted_height
        feet = @height / 12
        inches = @height % 12
        return feet.to_s + " feet " + inches.to_s + " inches"
    end

    # this will just tell us what the eye color of a given person is
    def eye_color
        return @eye_color
    end
    
    # if I want to change the instance variable to an instance object
    # only when this function is called, but it will be permanent
    def hair_color=(input_hair_color)
        @hair_color = input_hair_color
    end
end