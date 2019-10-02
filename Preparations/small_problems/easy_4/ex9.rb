DIGITS = %w[0 1 2 3 4 5 6 7 8 9].freeze

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number.zero?
  end
  result
end
