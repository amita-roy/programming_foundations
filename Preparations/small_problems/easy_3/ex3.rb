# Write a program that will ask a user for an input of a word
# or multiple words and give back the number of characters.
# Spaces should not be counted as a character.

puts 'Please write word or multiple words: '
input = gets.chomp

def char_count(str)
  character_count = str.gsub(" ", "").length
  p "There are #{character_count} characters in #{str}"
end

char_count(input)
