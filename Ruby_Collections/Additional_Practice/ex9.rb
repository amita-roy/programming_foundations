munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def categorized(hsh)
  group = "age_group"
  hsh.each do |key, val|
    if val['age'].between?(0, 17)
      val[group] = 'Kid'
    elsif val['age'].between?(18, 64)
      val[group] = 'Adult'
    elsif val['age'] >= 65
      val[group] = 'Senior'
    end
  end
end

p categorized(munsters)