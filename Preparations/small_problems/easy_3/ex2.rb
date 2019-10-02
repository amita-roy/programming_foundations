# Write a program that prompts the user for two positive integers,
# and then prints the results of the following operations on those
# two numbers: addition, subtraction, product, quotient, remainder,
# and power. Do not worry about validating the input.

puts 'Please enter the first number'
first = gets.chomp.to_i

puts 'Please enter the second number'
second = gets.chomp.to_i

def arithmetic_integer (num1, num2)
  p num1 + num2
  p num1 - num2
  p num1 * num2
  p num1 / num2
  p num1 % num2
  p num1 ** num2
end

arithmetic_integer(first, second)