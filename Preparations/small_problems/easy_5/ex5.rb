# def cleanup(str)
#   str.gsub(/\W+/, ' ')
# end

ALPHABETS = [ *"a".."z", *"A".."Z"]

def cleanup(str)
  letters = []
  str.split('').map do |char|
    if ALPHABETS.include?(char)
      letters << char
    else
      letters << " "
    end
  end
  letters.join.squeeze!
end

p cleanup("---what's my +*& line?")

