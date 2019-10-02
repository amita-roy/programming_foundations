def running_total(arr)
  num = []
  new_num = []
  arr.each do |n|
    num << n
    new_num << num.reduce(:+)
  end
  new_num
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])
