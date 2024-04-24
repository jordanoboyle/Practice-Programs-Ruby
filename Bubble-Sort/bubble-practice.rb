# here we will write a bubble sort algorithm for practice. 
def gen_rand_array
  array = []
  10.times do 
    array.push(rand(1..20))
  end
  return array
end

def bubble_sort(need_sort)
  array = need_sort
  change = true
  while change
    change = false
    index = 0
    while index < array.length - 1  # '- 1' makes sure that we stay within the index bounds of array
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        change = true
      end
      index += 1
    end
  end
  return array
end

pp bubble_sort([10, 9, 8, 7, 6, 5, 3])