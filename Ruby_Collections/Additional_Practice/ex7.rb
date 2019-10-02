statement = "The Flintstones Rock"

def frequency(str)
  str.chars.each_with_object({}) do |chr, hsh|
    count = str.count(chr)
    if chr == ' '
      next
    else
      hsh[chr] = count
    end
  end
end

p frequency(statement)