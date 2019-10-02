def merge(arr1, arr2)
  arr2.each {|num| arr1.include?(num) ? next : arr1 << num}
  arr1
end

p merge([1, 3, 5], [3, 6, 9])