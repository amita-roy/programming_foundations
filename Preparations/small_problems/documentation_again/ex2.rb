# Assume you have the following code:

require 'date'

puts Date.new #<Date: -4712-01-01 ...>
puts Date.new(2016) #<Date: 2016-01-01 ...>
puts Date.new(2016, 5) #<Date: 2001-05-01 ...>
puts Date.new(2016, 5, 13) #<Date: 2016-05-13 ...>