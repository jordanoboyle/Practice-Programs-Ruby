


numbers_array = [[9, 7, 8], [2, 3], [3], [6, 3], [6, 4, 6, 6], [2, 8, 1], [1, 5], [2, 8, 9]]
sum = 0

numbers_array.each do |array|
  sum += ([array[0], array[-1]].join().to_i)
end

p sum