# Write a program that will ask for user's name. The program will
# then greet the user. If the user writes "name!" then the computer yells back to the user.

puts 'What is your name? '
name = gets.chomp.capitalize

greeting = 'Hello'
scream = "WHY ARE WE SCREAMING?"

def valid_name?(name, greet, scream)
  if name.include?('!')
    "#{greet.upcase} #{name.chop.upcase}. #{scream}"
  else
    "#{greet} #{name}"
  end
end

p valid_name?(name, greeting, scream)