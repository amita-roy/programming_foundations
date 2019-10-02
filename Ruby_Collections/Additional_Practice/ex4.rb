ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

def min_age(hsh)
  hsh.min {|a, b| a <=> b}
end
p min_age(ages)

p ages.values.min