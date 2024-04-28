def random_array_gen
  random_numbers = [] 
  20.times do
    random_numbers.push(rand(5...38))
  end
  return random_numbers
end

def bubble_sort_efficient(need_sort)
  array = need_sort
  n = array.length - 1

  array.length.times do
    index = 0
    while index < n
      if array[index] > array[index + 1]
        temp             = array[index + 1]
        array[index + 1] = array[index]
        array[index]     = temp 
      end
      index += 1
    end
    n -= 1
  end 
  return array
end 

pp bubble_sort_efficient(random_array_gen())