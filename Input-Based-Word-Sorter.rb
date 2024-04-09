# There are specifications that need to be worked out
#Needs: take into account case, missed inputs, formatting

word_list = []
while true
    puts "Type any word here: "
    word = gets.chomp.to_s
    if word.length > 0
        word_list.push(word)
    else 
        break
    end
end
pp word_list.sort