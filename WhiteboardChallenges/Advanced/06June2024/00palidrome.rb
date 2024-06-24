# 1. Write a function that accepts a string and returns whether it’s a palindrome.

palindrome = "Tacocat"
def test_for_palindrone(string)
  test_against = string.downcase
  testee = ""
  i = -1
  while i > -test_against.split("").length - 1
    testee += test_against.split("")[i]
    i -= 1
  end
  if testee == test_against
    return "Palindrome confirmed"
  else
    return "Not Palindrome"
  end
end

p test_for_palindrone(palindrome)


# Bonus:
# 10) Write a function that takes in an array of words and returns the number of times the letter “a” appeared in total.
count_the_as = ["highelves", "aragorn", "harley bear", "AnAlysis", "marker"]  # ==> 7

def count_letters(word_array)
  count_a = 0
  word_array.join.split("").each do |letter|
    if letter.downcase == "a"
      count_a += 1
    end
  end
  return "The number of a's is #{count_a}"
end

p count_letters(count_the_as)