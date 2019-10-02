def swap(str)
  string_arr = str.split
  string_arr.map do |string|
    letter_arr = string.split('')
    letter_arr[0], letter_arr[-1] = letter_arr[-1], letter_arr[0]
    letter_arr.join
  end.join('')
end
p swap('Oh what a wonderful day it is')
