need_sort = [6, 5, 3, 1, 8, 7, 2, 4]
def bubble_partial(array)
    sorted_array = array
    # n = array.length

    while true
        change = true  # this sort of tracks the changes made
        index = 0
        lap = 0
        while index < sorted_array.length
            if sorted_array[index] > sorted_array[index+1]
                sorted_array[index], sorted_array[index + 1] = sorted_array[index + 1], sorted_array[index]
                index += 1
                pp lap
                lap += 1
                change = true
            else
                change = false
            end
        end
        if change = false
            break
        end
    end
    return sorted_array
end

pp bubble_partial(need_sort)