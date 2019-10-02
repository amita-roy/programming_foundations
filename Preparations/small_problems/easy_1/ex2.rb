# Write a method that takes one integer argument, which
# may be positive, negative, or zero. This method returns
# true if the number's absolute value is odd. You may assume
# that the argument is a valid integer value.

def odd?(num)
  num.abs.odd?
end

puts odd?(2)
puts odd?(-17)
puts odd?(-8)
