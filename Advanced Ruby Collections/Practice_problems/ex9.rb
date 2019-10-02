array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

def incremented_value(arr)
  arr.map do |hsh|
    new_hsh = {}
    hsh.each do |key, val|
      new_hsh[key] = val + 1
    end
    new_hsh
  end
end

p incremented_value(array)