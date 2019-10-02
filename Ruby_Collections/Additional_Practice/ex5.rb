flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

def index(arr)
  match = ''
  arr.each do |char|
    match << char if char.match?(/Be/)
  end
  arr.index(match)
end

p index(flintstones)