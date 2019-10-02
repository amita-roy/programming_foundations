def multisum(num)
  arr = []
  (1..num).each do |n|
    arr << n if n % 3.zero? || n % 5.zero?
  end
  arr.sum
end

p multisum(20)
p multisum(10)
