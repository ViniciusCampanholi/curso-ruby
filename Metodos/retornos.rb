def compare(a, b)
    a>b
end

a = 1
b = 2

result = compare(a,b)
puts "O resultado da comparação é #{result}"


#O metodo retorna o ultimo valor
def retorno
    "Hello1"
    "Hello2"
end

puts retorno


#Se colocar um return ele retorna o valor do return e para de executar
def retorno
    return "Hello1"
    "Hello2"
end
puts retorno