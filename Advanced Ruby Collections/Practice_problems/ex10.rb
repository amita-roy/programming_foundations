arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

def selected(arr)
  arr.map do |ar|
    ar.select do |num|
      num % 3.zero?
    end
  end
end

p selected(arr)