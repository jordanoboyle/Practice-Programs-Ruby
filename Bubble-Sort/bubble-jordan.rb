
# this is my cleaned up version with the 'slick' boolean condition
def generate_rand
  array = []
  10.times do 
    array.push(rand(1..15))
  end
  return array
end 

def bubble_sort(need_sort_array)
  array = need_sort_array
  change = true
  while change
    change = false
    index = 0
    while index < array.length - 1
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        change = true
      end
      index += 1
    end
  end
  return array
end

p bubble_sort([10, 9, 8, 7, 6, 5, 3])