# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not the
# 6th number appears amongst the first 5 numbers.
array = []
puts 'Please enter first number: '
array << first = gets.chomp.to_i


puts 'Please enter second number: '
array << second = gets.chomp.to_i


puts 'Please enter third number: '
array << third = gets.chomp.to_i


puts 'Please enter fourth number: '
array << fourth = gets.chomp.to_i

puts 'Please enter fifth number: '
array << fifth = gets.chomp.to_i

puts 'Please enter sixth number: '
sixth = gets.chomp.to_i

if array.include?(sixth)
  p "The number #{sixth} appears in #{array}."
else
  p "The number #{sixth} does not appear in #{array}."
end