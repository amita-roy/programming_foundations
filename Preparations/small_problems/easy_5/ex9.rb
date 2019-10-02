# def crunch(str)
#   str = str.split
#   str = str.map do |st|
#     st.split('').uniq.join
#   end
#   str.join(' ')
# end

def crunch(str)
 arr = []
 str.chars.each do |letter|
  letter == arr.last ? next : arr << letter
 end
 arr.join
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')