# Build a program that asks a user for the length and width of
# a room in meters and then displays the area of the room in
# both square meters and square feet.

puts 'Please enter the length of the room in meters: '
length = gets.chomp.to_f

puts 'Please enter the width of the room in meters: '
width = gets.chomp.to_f

area = length * width
puts "The area of the room is #{area} square meters (#{(area * 10.7639).to_f.round(2)} square feet)."
