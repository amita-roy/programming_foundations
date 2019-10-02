arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

def selected(arr)
  arr.select do |hsh|
    hsh.all? do |key, val|
      val.all? {|num| num.even?}
    end
  end
end

p selected(arr)
