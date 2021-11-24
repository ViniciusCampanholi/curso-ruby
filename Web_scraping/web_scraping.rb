require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('onebitcode.com', 443) #Fazendo a chamada para o site criando um objeto https, exemplo usado: onebitcode.com
https.use_ssl = true #Habilitando o SSL

response = https.get("/") #Executando o GET, neste caso para a Home

doc = Nokogiri::HTML(response.body) #Criando um objeto chamado doc para HTML

h1 = doc.at('h1') #Buscando as informações contidas em doc da tag <h1>
puts h1.content #Escrevendo o conteúdo da tag <h1>

#Extraindo o ultimo post do blog
puts "- - - Extraindo o ultimo post do blog - - -"
last_post = doc.at('h3 a') #Buscando as informações contidas em doc da tag <h3> que contem a tag <a>
puts last_post.content 
puts last_post['href'] #Escrevendo o url do post

#Extraindo todos os posts do blog
puts "- - - Extraindo todos os posts do blog - - -"
doc.search('h3 a').each do |posts|
    puts posts.content
    puts posts['href']
    puts ''
end
