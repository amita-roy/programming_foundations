ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

def younger(hsh)
  hsh.reject {|_, val| val >= 100}
end

p younger(ages)