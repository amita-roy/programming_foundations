def multiply_all_pairs(arr1, arr2)
  array = []
  arr1.each do |num|
    arr2.each do |num1|
      array << (num * num1)
    end
  end
  array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])