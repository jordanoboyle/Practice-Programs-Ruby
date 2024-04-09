# There are specifications that need to be worked out
#Needs: take into account case, missed inputs, formatting
def create_sort_word_array_from_inputs
    word_list = []
    while true
        puts "Type any word here: "
        word = gets.chomp.to_s
        if word.length > 0
            word_list.push(word)
        else 
            break
        end
    end
    return word_list.sort
end


def array_of_rand_word_inputs
    word_list2 = []
    while true
        puts "Type any word here: "
        word = gets.chomp.to_s
        if word.length > 0
            word_list2.push(word)
        else 
            break
        end
    end
    return word_list2
end


def sort_array_NOsort(array_to_sort)
    sorted_array = []
    while true
        if 0 < array_to_sort.length
            sorted_array.push(array_to_sort.min)
            array_to_sort.delete(array_to_sort.min)
        else
            break
        end    
    end
    return sorted_array
end

puts sort_array_NOsort(array_of_rand_word_inputs)


'''Ignore below, testing tools.'''
# list1 = ['game', 'name', 'job', 'weight']
# # alph = "abcdefghijklmnopqrstuvwxyz"
# # alphabet = alph.split('')
# # puts alphabet.min 
# # puts list1.min