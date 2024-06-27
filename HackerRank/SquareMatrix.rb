#Given a square matrix, calculate the absolute difference between the sums of its diagonals.


def diagonalDifference(arr)
  k = 0
  j = arr[0].length - 1
  sum_primary = 0
  sum_secondary = 0
  arr.each do |array|
    sum_primary += array[k]
    sum_secondary += array[j]
    k += 1
    j -= 1
  end
  diff = (sum_primary - sum_secondary).abs
  return diff
end