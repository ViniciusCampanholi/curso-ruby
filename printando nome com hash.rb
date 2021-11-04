print 'Digite seu nome: '
nome = gets.chomp
print 'Digite seu sobrenome: '
sobrenome = gets.chomp
nomeCompleto={nome: nome, sobrenome: sobrenome}
puts "Olá #{nomeCompleto[:nome]} #{nomeCompleto[:sobrenome]}!"