def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven')
