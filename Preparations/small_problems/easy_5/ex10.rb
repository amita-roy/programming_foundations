def print_in_box(message, char = '-', blank = ' ')
  puts "+-#{char * (message.length + 2)}-+"
  puts "| #{blank * (message.length + 2)} |"
  puts "|  #{message}  |"
  puts "| #{blank * (message.length + 2)} |"
  puts "+-#{char * (message.length + 2)}-+"
end

p print_in_box('To boldly go where no one has gone before.')
p print_in_box('')

