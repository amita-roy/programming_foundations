# Build a program that displays when the user will retire and how many years she has to work till retirement.

  puts 'What is your age? '
  age = gets.chomp.to_i

  puts 'At what age would you like to retire? '
  retirement_age = gets.chomp.to_i

  current_year = Time.new.year
  years_left = retirement_age - age
  retirement_year =  + years_left + current_year

  p "It's #{current_year}. You will retire in #{retirement_year}."
  p "You have only #{years_left} years of work to go!"
