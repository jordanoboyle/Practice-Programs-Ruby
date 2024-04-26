def generate_rand
  array = []
  10.times do 
    array.push(rand(1..15))
  end
  return array
end 

def bubble_sort(need_sort)
  array = need_sort
  swap = true
  while swap
    swap = false
    index = 0
    while index < array.length - 1
      if array[index] > array[index + 1]
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

pp bubble_sort(generate_rand())