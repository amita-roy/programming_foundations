# Write a method that returns true if the string passed as
# an argument is a palindrome, false otherwise. A palindrome
# reads the same forward and backward. For this exercise, case
# matters as does punctuation and spaces.

def palindrome?(str)
  str == str.reverse
end

p palindrome?('madam')
p palindrome?('Madam')
p palindrome?("madam i'm adam")
p palindrome?('356653')