flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

def short_names(arr)
  arr.map do |name|
    name[0, 3]
  end
end

p short_names(flintstones)