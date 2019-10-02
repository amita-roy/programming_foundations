def find_fibonacci_index_by_length(num)
  arr = [1, 1]
  counter = 2
  loop do
    arr[counter] = arr[-1] + arr[-2]
    counter += 1
    break if arr.last.to_s.size == num
  end
 arr.index(arr[-1]) + 1
end


p find_fibonacci_index_by_length(2)