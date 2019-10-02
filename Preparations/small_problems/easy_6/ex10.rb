def triangle(n)
  space = n - 1
  count = 1
  loop do
    puts (' ' * space) + ('*' * count)
    space -= 1
    count += 1
    break if count == n
  end
end


p triangle(9)