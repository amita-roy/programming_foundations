def display(message, char = '')
  puts char * message.length
  puts message
  puts char * message.length
end

def valid?(input)
  !(input.empty? || input.to_f.zero?)
end

def amount_get
  puts 'Please enter the loan amount!'
  loop do
    amount = gets.chomp
    break amount.to_f if valid?(amount)

    puts 'Please enter a valid amount'
  end
end

def years_get
  puts 'Please enter the loan duaration in years'
  loop do
    years = gets.chomp
    break years.to_i if valid?(years)

    puts 'Please enter valid year( greater than 0)'
  end
end

def apr_get
  puts 'what is the annual interest rate? '
  loop do
    apr = gets.chomp
    break apr.to_f / 100 if valid?(apr)

    puts 'Please enter the valid interest rate'
  end
end

def name_get
  puts display('Please enter your name!:')
  loop do
    name = gets.chomp.gsub(/ /, '').capitalize
    break name unless name.empty?

    puts 'name should not be blank'
  end
end

def monthly_payment(amount, years, apr)
  monthly_interest = apr / 12
  months = years * 12
  monthly = amount * (monthly_interest / (1 - (1 + monthly_interest)**-months))
  monthly.ceil
end

def retrive_run_again_answer?
  puts 'Do you want more calculations?:'
  gets.chomp
end

def run_again?
  answer = retrive_run_again_answer?
  loop do
    if answer.start_with?('y') then loan_calculation
    elsif answer.start_with?('n')
      display('Thanks for using car loan calculator, Goodday!!!', '*')
      break
    else
      display('That is not a valid choice. Choose either yes/no.')
    end
  end
end

def loan_calculation
  amount = amount_get
  years = years_get
  apr = apr_get

  payment = monthly_payment(amount, years, apr)
  puts "Your monthly payment is $#{payment}"

  run_again?
end

name = name_get
display("Welcome to car loan calculator #{name}!", '*')
loan_calculation
