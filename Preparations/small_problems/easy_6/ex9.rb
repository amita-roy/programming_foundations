def include?(arr, num)
  arr.any?(num)
end

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)
p include?([], 3)
p include?([], nil) 
p include?([nil], nil)