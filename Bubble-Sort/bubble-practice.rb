# here we will write a bubble sort algorithm for practice. 
def gen_rand_array
  array = []
  10.times do 
    array.push(rand(1..20))
  end
  return array
end

# practice with the temp method

def bubble(need_sort)
  array = need_sort
  array.length.times do
    index = 0
    while index < array.length - 1
      if array[index] > array[index + 1]
        temp = array[index]
        array[index] = array[index + 1]
        array[index + 1] = temp
      end
      index += 1
    end
  end
  return array
end

pp bubble(gen_rand_array)