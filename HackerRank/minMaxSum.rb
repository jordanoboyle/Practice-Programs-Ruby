

number_array = [1, 2, 3, 4, 5]  #==> min = 10, max = 14
number_array_2 = [5, 5, 5, 5, 5] 
# Print two space-separated long integers denoting the respective minimum and maximum values that can be calculated by summing exactly four of the five integers. (The output can be greater than a 32 bit integer.)

# there is an edge case here [5, 5, 5, 5] 
# this could be solved by using sort and min/max methods

def minMaxSum(num_array)
  all_same = true
  compare = num_array[0]
  num_array.each do |n|
    if n == compare
      all_same = true
    else
      all_same = false
    end
  end
  
  new_array = []
  min = 0
  max = 0
  if all_same == false
    num_array.each do |k|
      sum = 0
      num_array.each do |j|
        if num_array.find_index(k) != num_array.find_index(j)
          sum += j
        end
      end
      new_array << sum
    end
    min = new_array.min
    max = new_array.max
  else
    min, max = num_array.slice!(0..-2).sum, num_array.slice!(0..-2).sum
  end
  return pp "#{min} #{max}\n"
end

# Here's the issue...this is clever, but O(n) sucks. 

minMaxSum(number_array)
minMaxSum(number_array_2)

#Solution that uses methods (I had to look up Float::INFINITY)
def MaxMinSum(arr)
  total_sum = arr.sum
  min_sum = Float::INFINITY
  max_sum = -Float::INFINITY

  arr.each do |num|
    currrent_sum = total_sum - num
    min_sum = [min_sum, currrent_sum].min
    max_sum = [max_sum, currrent_sum].max
  end

  puts min_sum, max_sum
end