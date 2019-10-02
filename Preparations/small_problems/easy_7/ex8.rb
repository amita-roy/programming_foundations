def multiply_list(arr1, arr2)
  array = []
  count = 0
  loop do
    array << (arr1[count] * arr2[count])
    count += 1
    break if count == arr1.length
  end
  array
  end

  p multiply_list([3, 5, 7], [9, 10, 11])