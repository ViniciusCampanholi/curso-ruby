#Crie uma expressão regular que faça o casamento de padrão com o número de telefone presente no texto a seguir.
#“Olá, tudo bem? Meu whats app é (99) 7 4321-1234”

texto = 'Olá, tudo bem? Meu whats app é (99) 7 4321-1234'
/\([0-9]{2}\) [0-9] [0-9]{4}-[0-9]{4}/.match(texto)
