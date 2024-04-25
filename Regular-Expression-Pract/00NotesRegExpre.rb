# here we are going to cover regular expressions...this is a complicated subject, but powerful once understood

text = 'A regular expression is a sequence of characters that define a search pattern.'

matches = text.match(/character/)

p matches  # this will return an instance of the class MatchData
# ==> #<MatchData "character">

matches2 = text.match(/sentence/)  # the /xxxxxxxx/ hashes are how we define a regular expression

p matches2 # this will still 

#ANCHORS(boundaries)
# Beginning or end of a string, line or word. 

text1 = "A regular expression is a sequence of characters that define a search pattern."

puts "Found 'A' at the begining of the string." if text1.match(/^A/)
puts "Found 'O' at the beginning of the string." if text1.match(/^O/)
puts "Found the string 'character'." if text1.match(/character/)
puts "Found the word 'character'." if text1.match(/character\b/)  # this needs a word boundary after the string literal (the literal piece of text). 
puts "-----------------------------"
# So this finds the string 'character', not the word 'character'. 
# Since in the exmple the text 'character' is followed by an 's', the regular expression won't match


# CHARACTER CLASSES
text3 = "A regular expression is a sequence of characters that define a search pattern."
# to find all the words that start with a vowel, we will us a CHARACTER CLASS...a set of allowed characters
# we will use that anchor 'word boundary \b' to express  that the vowel needs to be at the beginning

p text3.scan(/\b[aeiou][a-z]*\b/) 
puts "-----------------------------"

# starts with \b or word boundary, 
#followed by characters [vowels]
# potentially (*) followed by any character a-z
# ends with word boundary