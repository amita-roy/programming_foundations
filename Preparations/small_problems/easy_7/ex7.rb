def show_multiplicative_average(arr)
  num = arr.reduce(:*) / arr.length.to_f
  format('%.3f', num)
end

p show_multiplicative_average([3, 5])
p show_multiplicative_average([6])
p show_multiplicative_average([2, 5, 7, 11, 13, 17])

# sprintf("%#g", 123.4)  #=> "123.400"
