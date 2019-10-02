# Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards and backwards.

def palindromic_number?(numbers)
  numbers = numbers.to_s
  numbers == numbers.reverse
end

p palindromic_number?(34543)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5)