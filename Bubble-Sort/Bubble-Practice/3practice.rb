def rand_num_array
  array = []
  25.times do
    array << rand(1...31) 
  end
  return array
end

def bubble_sort(need_sort)
  array = need_sort
  n = array.length - 1

  index = 0
  while index < array.length
    index2 = 0
    while index2 < n
      if array[index2] > array[index2 + 1]
        temp = array[index2 + 1]
        array[index2 + 1] = array[index2]
        array[index2] = temp
      end
      index2 += 1 
    end
    index += 1
    n -= 1    
  end
  return array
end

pp bubble_sort(rand_num_array)