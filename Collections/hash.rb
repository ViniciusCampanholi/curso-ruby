#formas de se declarar um hash
capitais1 = Hash.new #forma 1
capitais2 = {} #forma 2

#atribuir valores ao hash
capitais = {acre:'Rio Branco', São_Paulo:"São Paulo"}

capitais[:Minas_Gerais]="Belo Horizonte" #adiciona a chave Minas_Gerais associada ao valor "Belo Horizonte"
capitais[:acre] #retorna o valor associado a chave acre

capitais.keys #Exibe somente as chaves dentro do hash
capitais.values #exibe somente os valores

capitais.delete(:acre) #deleta a chave acre e o valor associado a ela

capitais.size #retorna o tamanho do hash, numero de chaves contidas

capitais.empty? #verifica se o hash esta vazio, retorna true se sim e false se não

