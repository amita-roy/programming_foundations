# frozen_string_literal: true

VALID_CHOICES = %w[rock paper scissors].freeze
WIN = {
  'rock' => 'scissors',
  'scissors' => 'paper',
  'paper' => 'rock'
}.freeze

def test_method
  message_display('Test method')
end

def message_display(message)
  puts message
end

def user_choice
  loop do
    message_display("Please make a choice: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    break choice if VALID_CHOICES.include?(choice)

    message_display('That\'s not a valid choice')
  end
end

def win?(player1, player2)
  WIN[player1] == player2
end

# def win?(player1, player2)
#   player1 == 'rock' && player2 == 'scissors' ||
#     player1 == 'scissors' && player2 == 'paper' ||
#     player1 == 'paper' && player2 == 'rock'
# end

def display_result(player, computer)
  if win?(player, computer)
    message_display('You Won!')
  elsif win?(computer, player)
    message_display('Computer Won!')
  else
    message_display('It\'s a Tie!!!')
  end
end

def play_again
  message_display('You want to play again?')
  answer = gets.chomp
  if answer.start_with?('y')
    game
  else
    message_display('Thank you for playing, Good day!')
  end
end

def game
  choice = user_choice

  computer_choice = VALID_CHOICES.sample

  message_display("You chose: #{choice} and computer chose: #{computer_choice}")

  display_result(choice, computer_choice)
  play_again
end

game
