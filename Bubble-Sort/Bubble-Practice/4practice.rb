def random_num_array_gen
  array = []
  index = 0

  while index < 25
    array << rand(1...46)
    index += 1
  end
  return array
end



def bubble_clever(need_sort)  
  array = need_sort
  swap = true
  p need_sort
  while swap == true
    swap = false
    index = 0
    while index < array.length - 1
      if array[index] > array[index + 1]  # let's use the temp version here
        temp = array[index]
        array[index] = array[index + 1]
        array[index + 1] = temp
        swap = true
      end
      index += 1
    end
  end
  return array
end

p bubble_clever(random_num_array_gen)