def ascii_value(str)
  str.split('').map {|char| char.ord}.sum
end


p ascii_value('Four score')
p ascii_value('Launch School')

