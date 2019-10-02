hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |arr|
  arr.each do |str|
    str.chars do |chr|
      if ['a', 'e', 'i', 'o', 'u'].include?(chr)
        puts chr
      end
    end
  end
end