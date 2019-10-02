def swapcase(string)
  string.chars.map do |chr|
    if chr =~ /[a-z]/
      chr.upcase
    elsif chr =~ /[A-Z]/
      chr.downcase
    else
      chr
    end
  end.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')