
# 1: Reverse a String: Write a program that takes a string as input and outputs the string in reverse order. For example, if the input is "hello", the output should be "olleh".

def reverse(string)
  need_reverse = string.split("")
  reversed = []
  i = -1
  while i > -(need_reverse.length + 1)
    reversed << need_reverse[i]
    i -= 1
  end
  return reversed.join("")
end

puts reverse("hello")