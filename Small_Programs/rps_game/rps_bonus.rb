# frozen_string_literal: true

VALID_CHOICES = %w[rock paper scissors lizard spock].freeze
WIN = {
  'rock' => %w[scissors lizard],
  'scissors' => %w[paper lizard],
  'paper' => %w[rock spock],
  'lizard' => %w[spock paper],
  'spock' => %w[scissors rock]
}.freeze

MAX_SCORE = 5

def print_line(length = 15, char = '-')
  puts char * length
end

def styled_display(message, char)
  print_line(message.length, char)
  puts message
  print_line(message.length, char)
end

def message_display(message)
  puts message
end

def user_choice
  loop do
    message_display("Please make a choice: #{VALID_CHOICES.join(', ')}")
    input = gets.chomp
    choice = VALID_CHOICES.find { |str| str.start_with?(input) }
    break choice unless choice.nil?

    message_display('That\'s not a valid choice')
  end
end

def win?(player1, player2)
  WIN[player1].include?(player2)
end

def calculate_result(user_choice, comp_choice)
  if win?(user_choice, comp_choice)
    :user
  elsif win?(comp_choice, user_choice)
    :computer
  else
    :tie
  end
end

# write & update scores
def display_result(result, choice, computer_choice)
  message_display("You chose: #{choice} & computer chose: #{computer_choice}")
  if result == :user
    message_display('You Won!')
  elsif result == :computer
    message_display('Computer Won!')
  else
    message_display('It\'s a Tie!!!')
  end
end

def calculate_score(score, result)
  updated_score = score.clone
  if result == :user
    updated_score[:user] += 1
  elsif result == :computer
    updated_score[:comp] += 1
  end
  updated_score
end

def winner(score)
  user = score[:user]
  computer = score[:comp]
  if user == MAX_SCORE
    message_display('You are Winner!')
  elsif computer == MAX_SCORE
    message_display('Computer is wimnner!')
  end
end

# reading scores
def display_score(score)
  user = score[:user]
  computer = score[:comp]
  puts "You score is: #{user} and computer score is: #{computer}"
end

def play_again?
  loop do
    message_display('You want to play again?')
    answer = gets.chomp
    if answer.start_with?('y') then game
    elsif answer.start_with?('n')
      message_display('Thank you for playing, Good day!')
      break
    end
    message_display('That is not a valid choice. Choose yes/no')
  end
end

def game_over?(score)
  score[:user] == MAX_SCORE || score[:comp] == MAX_SCORE
end

styled_display 'Welcome to my RPS game', '%'

def game
  score = { user: 0, comp: 0 }
  loop do
    choice = user_choice
    computer_choice = VALID_CHOICES.sample
    result = calculate_result(choice, computer_choice)
    display_result(result, choice, computer_choice)
    score = calculate_score(score, result)
    display_score(score)
    winner(score)
    break if game_over?(score)
  end
  play_again?
end

game
