# frozen_string_literal: true

def print_line(length = 15, char = '-')
  puts char * length
end
# -------------------------------------------------------------

def valid_num?(num)
  num.to_i.positive?
end

def valid_operator?(input)
  operators = %w[1 2 3 4]
  operators.include?(input) == true
end
# -------------------------------------------------------------

def get_input(message)
  loop do
    # get the first number
    puts message
    input = gets.chomp
    break input if valid_num?(input)

    puts 'please enter valid numbers only!'
  end
end

def operator_get
  puts 'Choose the operator 1)add, 2)subtr, 3)multiply, 4)Divide'
  loop do
    operator = gets.chomp
    break operator if valid_operator?(operator)

    puts 'please enter from given options only!'
  end
end

def display(message, char = '-')
  print_line(message.length, char)
  puts message
  print_line(message.length, char)
end
# -------------------------------------------------------------

def calculation(first, second, operator)
  case operator
  when '1'
    first.to_i + second.to_i
  when '2'
    first.to_i - second.to_i
  when '3'
    first.to_i * second.to_i
  when '4'
    first.to_i.to_f / second.to_i
  end
end
# -------------------------------------------------------------

def result(first, second, operator)
  display "Result of the operation is: #{calculation(first, second, operator)}"
end
# -------------------------------------------------------------

def run_again?
  puts 'Do you want to continue the calculation?: '
  answer = gets.chomp

  if answer == 'yes'
    calculator
  else
    display 'Thanks for using my calculator, have a nice day!', '*'
  end
end
# -------------------------------------------------------------

display 'Welcome to my calculator!', '*'

def calculator
  first_num = get_input('Please enter the first number: ')
  second_num = get_input('Please enter the second number: ')
  operator = operator_get
  result(first_num, second_num, operator)
  run_again?
end

calculator
