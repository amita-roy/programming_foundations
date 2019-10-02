def remove_vowels(arr)
  arr.map { |str| str.gsub(/[aeiouAEIOU]/, '') }
end

p remove_vowels(%w[green YELLOW black white])
p remove_vowels(%w[ABC AEIOU XYZ])
p remove_vowels(%w[abcdefghijklmnopqrstuvwxyz])
