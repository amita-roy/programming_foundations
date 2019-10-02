# Write a method that returns an Array that contains every other
# element of an Array that is passed in as an argument. The values
# in the returned list should be those values that are in the 1st,
# 3rd, 5th, and so on elements of the argument Array.

def oddities(arr)
  array = []
  arr.map.with_index {|num, index| array << num if index.even?}
  array
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])