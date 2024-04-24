# This was built with Kevin Mitchel, Actualize instructor. 
# teaches the more efficient 'speed-wise' method of building the bubble sort. explanation at the end

def r_array_gen()
  array = []  
  10.times do
    array.push(rand(1...20))  # note: Three dot syntax calls a 
  end
  return array
end

def bubble_efficient(need_sort)
  array = need_sort
  n = array.length - 1
  array.length.times do
    index = 0
    while index < n 
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
      end
      index += 1
      p array
    end
    n -= 1
  end
  return array
end


'''Fundamentally you have to think about this sorting method like this:
array = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
The absolute maximum number of spaces that 1 needs to move is 9. But, 1 will only move backward once
per time that it is reached with index referencing. Effectively the algorthim is saying that
mathematically we will not need to loop as many times in the while loop given that the amount of times
1 will need to move will decrease each time we activate the while loop.
The same can be said of 10. 10 will only move once index reference over per loop. 

For reference point, observe below in the console to see how it is working.'''

bubble_efficient([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])
