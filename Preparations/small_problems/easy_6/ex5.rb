def reverse(arr)
  counter = 0
  index = -1
  loop do
    arr[counter], arr[index] = arr[index], arr[counter]
    counter += 1
    index -= 1
    break if counter == arr.size / 2
  end
  arr
end

# def reverse(array)
#   result_array = []
#   array.reverse_each { |element| result_array << element }
#   result_array
# end

p reverse([1, 2, 3, 4])
