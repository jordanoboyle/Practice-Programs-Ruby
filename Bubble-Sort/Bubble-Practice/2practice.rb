
def rand_array_generator
  random_array = []
  20.times do
    random_array << rand(5...41)
  end
  return random_array
end

def bubble_sort_normal(need_sort)
  array1 = need_sort
  array1.length.times do
    index = 0
    while index < array1.length - 1
      if array1[index] > array1[index + 1]
        array1[index], array1[index + 1] = array1[index + 1], array1[index]
      end
    index += 1
    end
  end
  return array1
end

pp bubble_sort_normal(rand_array_generator())