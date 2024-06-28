# 4) Write a function that takes in an array of words and returns the number of words that begin with the letter “a”.


word_array = ["acrobat", "batman", "apple", "orange", "anaconda", "Acrobat", "Armadillo"]

def count_letter_a(arr)
  num_a = 0
  for word in arr
    if word[0].downcase == "a"
      num_a += 1
    end
  end
  return num_a
end

p count_letter_a(word_array)