vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  counts = Hash.new(0)
  arr.each { |name| counts[name] += 1 }
  counts
end

p count_occurrences(vehicles)