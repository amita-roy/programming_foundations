words = "the flintstones rock"

def titelize(str)
str.split.map(&:capitalize).join(' ')
end

p titelize(words)