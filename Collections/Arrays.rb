#declarlando um array
estados = []

#Adicionando valores ao final do array
estados.push("São Paulo")
estados.push("Rio Grande do Sul")
#Aicionando multiplos valores ao final do Array
estados.push("Minas Gerais", "Amazonas", "Santa Catarina")

#Inserindo valores no início do Array
#Deve-se passar a posição
estados.insert(0, "Maranhão")
estados.insert(3, "Este veio para a posição 3")

#Alterando dados dentro do array
estados[3] = "Ceará"

#printando o array
#printa todos os valores dentro do array
print estados
#Printa a posição 2
print estados[2]
#printand com um intervalo
print estados[1..3]
#printando de traz pra frente
print estados[-3]
#pegar o primeiro elemento
print estados.first
#pegar o ultimo
print estados.last
#contando os elementos
print estados.count

#verificar se esta vazio
print estados.empty?

#verificar um valor especifico
estados.include?("São Paulo") #verifica se a string "São Paulo" está dentro do array

#deletar um valor a partir de sua posição
estados.delete_at(2) # deleta o valor que está na posição 2
estados.pop #deleta o primeiro valor
estados.shift #deleta o ultimo valor