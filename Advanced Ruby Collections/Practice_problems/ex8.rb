arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end