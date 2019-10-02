def interleave(arr1, arr2)
  count = 0
  array = []
  loop do
    array << arr1[count]
    array << arr2[count]
    count += 1
    break if count == arr1.length
  end
  array
end

p interleave([1, 2, 3], %w[a b c])
