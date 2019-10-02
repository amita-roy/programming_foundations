def word_sizes(str)
  sizes = {}
  str = str.split
  str.each do |word|
    size = word.gsub(/[^0-9a-z ]/i, '').length
    if sizes.include?(size)
      sizes[size] += 1
    else
      sizes[size] = 1
    end
  end
  sizes
end

p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes('Four score and seven.')
p word_sizes("What's up doc?")
p word_sizes('')