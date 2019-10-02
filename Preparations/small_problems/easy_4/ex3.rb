def leap_year?(year)
  (year % 4).zero? && (year % 100 != 0) || (year % 400).zero?
end

p leap_year?(2100)
p leap_year?(2016)
p leap_year?(240_001)
