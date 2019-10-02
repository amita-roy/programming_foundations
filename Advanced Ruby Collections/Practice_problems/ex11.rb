arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]


def new_hsh(arr)
  hsh = {}
  arr.each do |val|
    hsh[val[0]] = val[1]
  end
  hsh
end
  
p new_hsh(arr)