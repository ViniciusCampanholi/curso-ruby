require 'net/http'

url = Net::HTTP::Post.new("/api/users") #Criando o objeto url
url.set_form_data({name:'Vinicius Campanholi', job:'Developer', age:'26'}) #Passando os parametros

response = Net::HTTP.start('reqres.in', use_ssl: true) do |https| #Passando os parametros da conexão para um bloco
    https.request(url)
end

puts response.message
puts response.body
