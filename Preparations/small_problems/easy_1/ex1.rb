# Write a method that takes two arguments, a string and a
# positive integer, and prints the string as many times as the integer indicates.

def repeat(str, int)
  int.times do
    puts str
  end
end

p repeat('Hello', 3)