# Here we want to get the number of candles that equal the max height allowed by the candles. The output depicted after the array below indicates what we would like. Max height count. 

# find the highest candle unit measure in the array
# loop and record the number of candles that match that height

sample_array = [1, 2, 3, 4, 4, 2, 3, 1, 4, 3, 3] # => output is 3

def birthdayCakeCandles(arr)
  candle_height = arr[0]
  arr.each do |height|
    if height > candle_height
      candle_height = height
    end
  end
  
  big_height = arr.select {|candle| candle == candle_height}

  return big_height.length
end

p birthdayCakeCandles(sample_array)