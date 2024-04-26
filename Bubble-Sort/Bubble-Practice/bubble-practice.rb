# here we will write a bubble sort algorithm for practice. 
def gen_rand_array
  array = []
  10.times do 
    array.push(rand(1..20))
  end
  return array
end

# practice with the efficieny method

def bubble(need_sort)
  array = need_sort
  n = array.length - 1
  p array
  array.length.times do
    index = 0
    while index < n
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
      end
      index += 1
    end
    n -= 1
  end
  return array
end

pp bubble(gen_rand_array)