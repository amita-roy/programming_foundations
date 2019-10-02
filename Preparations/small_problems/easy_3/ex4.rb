# Create a method that takes two arguments, multiplies
# them together, and returns the result.

puts 'Please enter first number: '
first = gets.chomp.to_i

puts 'Please enter second number: '
second = gets.chomp.to_i

def multiply(num1, num2)
  num1 * num2
end

p multiply(first, second)
