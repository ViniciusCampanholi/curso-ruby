puts 'Bem vindo! Vamos trabalhar com potencias?'
puts 'Digite um numero base: '
base = gets.chomp.to_i

puts 'Digite um expoente: '
expoente = gets.chomp.to_i

def calc(base, expoente)
    result =  base ** expoente
    puts "#{base} elevado a #{expoente} é igual a #{result}"
end

calc(base, expoente)