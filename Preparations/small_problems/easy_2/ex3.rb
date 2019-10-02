# Create a simple tip calculator. The program should prompt
# for a bill amount and a tip rate. The program must compute
# the tip and then display both the tip and the total amount of the bill.

puts 'Please enter the bill amount: '
bill_amount = gets.chomp.to_i

puts 'Please enter the tip percentage in numbers: '
tip_percentage = gets.chomp.to_i

tip_amount = bill_amount * tip_percentage / 100.to_f

total_amount = bill_amount + tip_amount.to_f

p "The tip is $#{tip_amount}"
p "The total is $#{total_amount}"



