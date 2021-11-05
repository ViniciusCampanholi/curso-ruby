puts "Digite um numero: "
n1 =  gets.chomp.to_i
puts "Digite mais um numero: "
n2 = gets.chomp.to_i
puts "Digite o ultimo numero: "
n3 = gets.chomp.to_i
conjunto = [n1, n2, n3]

conjunto.map! do |a|
    a**2
end
puts "\nOs numeros digitados foram elevados a segunda potencia, e são: \n"
puts conjunto

