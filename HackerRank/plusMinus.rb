# calculate the ratios of positive, negative and zeros within a given array. Output should be printed as a string to 6 decimal places. 

def plusMinus(arr)
  # Write your code here
  element_total = arr.length
  pos = 0
  zeros = 0
  neg = 0
  arr.each do |number|
    if number == 0
      zeros += 1
    elsif number > 0
      pos += 1
    else
      neg += 1
    end
  end
  pos_ratio = sprintf('%6f', (pos.to_f / element_total))
  neg_ratio = sprintf('%6f', (neg.to_f / element_total))
  zeros_ratio = sprintf('%6f', (zeros.to_f / element_total))
  
  return p pos_ratio, neg_ratio, zeros_ratio
end

plusMinus([-4, 3, -9, 0, 4, 1])