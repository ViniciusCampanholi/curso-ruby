require 'net/http'

https = Net::HTTP.new('api.invertexto.com', 443)
https.use_ssl = true #Para fazer chamadas https
cep = "08740470"
response = https.get("/v1/cep/#{cep}?token=153|IizI3MqKmi7Hn4akkpOIvXweFSnRZPIH")
puts response.code #Codigo de status
puts response.message #Mensagem do status
puts response.body #Body (Json)