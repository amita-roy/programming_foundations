
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
def hash(arr)
  arr.each_with_object({}) do |char, hsh|
    val = arr.index(char)
    hsh[char] = val
  end
end

p hash(flintstones)