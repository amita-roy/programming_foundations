def leap_year?(year)
  if year < 1752
    (year % 4).zero?
  else
    (year % 4).zero? && !(year % 100.zero?) || (year % 400).zero?
  end
end

p leap_year?(1752)
