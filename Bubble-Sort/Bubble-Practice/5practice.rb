def bubble_sort(unsorted_array)
  
  sorted_array = unsorted_array
  n = sorted_array.length - 1
  i = 0
  while i < n
    j = 0
    while j < n
      if  sorted_array[j] > sorted_array[j + 1]
        sorted_array[j], sorted_array[j + 1] = sorted_array[j + 1], sorted_array[j]
      end
      j += 1
    end
    i += 1 
  end
  return sorted_array
end

p bubble_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])