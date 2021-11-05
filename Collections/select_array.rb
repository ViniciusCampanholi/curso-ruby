# serve para fazer pesquisas dentro de um array, selecionar os preços acima de tal valor...

array = [1,2,3,4,5,6,7,8,9,10] #criou o array

selecao = array.select do |a| #cada valor do array fica armazenado dentro da variável a a cada vez que é feita a varredura
    a >= 4 #só será armazenado em a os valores que forem maiores ou iguais a 4, de acordo com a condição
end

puts selecao