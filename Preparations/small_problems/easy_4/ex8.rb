
def string_to_integer(str)
  x = 0
  array = str.split('')
  array.each.with_index do |y, i|
    x = (x + y.hex)
    x *= 10 unless i == array.length - 1
  end
  if array[0] == '-'
    x * -1
  else
    x
  end
end

p string_to_integer('-570')
p string_to_integer('4321')
p string_to_integer('+100')
