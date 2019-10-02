def century(year)
  century = 0
  (year / 100.to_f) > (year / 100.to_i) ? century = year / 100.to_f.to_i + 1 : century = year / 100.to_i
  if century.to_s[-1].to_i == 1 && century.to_s[-2, 2].to_i != 11
    century = century.to_s + 'st'
  elsif century.to_s[-1].to_i == 2 && century.to_s[-2, 2].to_i != 12
    century = century.to_s + 'nd'
  elsif century.to_s[-1].to_i == 3 && century.to_s[-2, 2].to_i != 13
    century = century.to_s + 'rd'
  else
    century = century.to_s + 'th'
  end
  century
end

p century(1127)
