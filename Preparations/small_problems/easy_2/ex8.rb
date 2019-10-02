# Write a program that asks the user to enter an integer
# greater than 0, then asks if the user wants to determine
# the sum or product of all numbers between 1 and the entered integer.
VALID_CHOICES = %w[sum product].freeze

puts 'Please enter a number greater than 0: '
number = gets.chomp.to_i
puts 'Please enter the operation 1) s for sum 2) p for product :'
operation = gets.chomp
choice = VALID_CHOICES.find { |str| str.start_with?(operation) }

def sum(num, choice)
  count = 1

  if choice == 'sum'
    (2..num).each { |e| count += e }
  elsif choice == 'product'
    (2..num).each { |e| count *= e }
  else
    'Invalid choice please choose either s or p'
  end
  count
end

p sum(number, choice)
