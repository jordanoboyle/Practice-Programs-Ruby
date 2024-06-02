
# Step 1: Read the problem below.
# Step 2: Decompose the problem into smaller testable problems. DO NOT SOLVE THE PROBLEM YET.
# Step 3: Solve each problem until you get stuck. YOU DO NOT NEED TO SOLVE THE COMPLETE PROBLEM!

# QUESTION 1
# Start your program with the line of code below.
# The rest of your program should create and print out 
# an array that removes all duplicates from the original array. 
# That is, the second array should look like: [4, 6, 1, 2, 8, 3, 7]
# The one catch: Don't use the "uniq" method available to arrays! (That would do this for you.)
numbers = [4, 6, 1, 4, 2, 8, 3, 4, 1, 7]

# write a method that accepts an array and prints out array

def print_array(input_nums)
    pp input_nums
end

print_array(numbers)

# write a method that acts on all the values with an mathematical operator and rreturns new array

def math_the_array(input_nums)
    multiplied_numbers = []
    input_nums.each {|num| multiplied_numbers.push(num * 2)}
    return multiplied_numbers
end

pp math_the_array(numbers)

# write an method that takes an array and returns a has that counts the elements within the array
def hash_counting_elements(number_array)
    count_of_elements = {}
    for number in number_array
        if count_of_elements[number.to_s] == nil
            count_of_elements[number.to_s] = 1
        else 
            count_of_elements[number.to_s] += 1
        end
    end
    return count_of_elements
end



# finish, method that uses the count_of_elements to loops against original array and produces a new array with no duplicates
def return_no_dups(number_array)
    
    count_elements = {}
    for number in number_array
        if count_elements[number.to_s] == nil
            count_elements[number.to_s] = 1
        else 
            count_elements[number.to_s] += 1
        end
    end

    no_duplicate_nums = []
    index = 0
    while index < number_array.length
        if count_elements[number_array[index].to_s] > 1 
            if no_duplicate_nums.any?(number_array[index]) == false
                no_duplicate_nums.push(number_array[index])
            else 
                index += 1
                next
            end
        else
            no_duplicate_nums.push(number_array[index])
        end
        index += 1
    end
    return no_duplicate_nums
end

pp return_no_dups(numbers)


