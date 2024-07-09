require "faker"

p Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 4)