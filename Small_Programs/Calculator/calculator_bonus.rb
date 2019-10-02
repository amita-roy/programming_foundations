# frozen_string_literal: true

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

OPERATORS = %w[1 2 3 4].freeze

def messages(key, lang = 'en')
  MESSAGES[lang][key]
end
# -------------------------------------------------------------

def prompt(key, lang = 'en')
  message = messages(key, lang)
  puts("=> #{message}")
end

def valid_num?(num)
  num.to_i.positive? && num == num.to_i.to_s
  num.to_f
end
# -------------------------------------------------------------

def valid_operator?(input)
  OPERATORS.include?(input)
end
# -------------------------------------------------------------

def get_input(message_key, lang)
  loop do
    prompt(message_key, lang)
    input = gets.chomp
    break input if valid_num?(input)

    prompt('valid_number', lang)
  end
end
# -------------------------------------------------------------

def operator_get(lang)
  prompt('prompt_operator', lang)
  loop do
    operator = gets.chomp
    break operator if valid_operator?(operator)

    prompt('valid_operator', lang)
  end
end
# -------------------------------------------------------------

def display(message)
  puts message
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

def operation_to_message(operation)
  case operation
  when '1'
    'adding'
  when '2'
    'subtracting'
  when '3'
    'multiplying'
  when '4'
    'dividing'
  end
end
# -------------------------------------------------------------

def get_key(operation, lang)
  if operation == 'multiplying'
    messages('multiplying', lang)
  elsif operation == 'adding'
    messages('adding', lang)
  elsif operation == 'subtracting'
    messages('subtracting', lang)
  elsif operation == 'dividing'
    messages('dividing', lang)
  end
end

def display_result(first, second, operator, lang)
  operation = operation_to_message(operator)
  operation_key = get_key(operation, lang)
  display1 = messages('result_display1', lang)
  puts operation_key + ' ' + display1
  calculation = calculation(first, second, operator)
  result = messages('result_display2', lang)
  puts result + ' ' + calculation.to_s
end
# -------------------------------------------------------------

def retrieve_new_calculation_answer?(lang)
  prompt('prompt_run_again', lang)
  gets.chomp
end

def run_again(answer, lang)
  if answer == 'yes'
    calculator(lang)
  elsif answer == 'no'
    prompt('goodbye', lang)
  else
    prompt('incorrect_choice', lang)
    run_again(retrieve_new_calculation_answer?(lang), lang)
  end
end

def language_setting(message_key, lang = 'en')
  prompt(message_key, lang)
  gets.chomp
end
# -------------------------------------------------------------
language = language_setting('prompt_lang')
prompt('enter_name', language)
name = gets.chomp.gsub(/ /, '')
puts "Hello #{name}! -->"
prompt('welcome', language)

def calculator(language)
  first_num = get_input('first_input', language)
  second_num = get_input('second_input', language)
  operator = operator_get(language)
  display_result(first_num, second_num, operator, language)
  answer = retrieve_new_calculation_answer?(language)
  run_again(answer, language)
end

calculator(language)
