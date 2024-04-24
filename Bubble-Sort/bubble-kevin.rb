# built during personal office hours with Kevin Mitchel, Actualize Instructor

def gen_rand_array
  r_array = []
  10.times do
    r_array << rand(1..15)
  end
  return r_array
end

def bubble_sortK(need_sort)
  array = need_sort
  array.length.times do
    index = 0
    while index < array.length - 1
      if  array[index] > array[index + 1]
        temp = array[index]
        array[index] = array[index + 1]
        array[index + 1] = temp
      end
    index += 1
    end
  end
  return array
end 

p bubble_sortK(gen_rand_array())

