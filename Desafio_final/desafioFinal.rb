require 'net/http'

class ColetaDados
    def coletar
        puts "- - - -Olá! Vamos conferir o CEP - - - -"
        puts ''
        puts 'Digite o CPF: '
        cep = gets.chomp       
    end
end

class ConectaApi
    def conecta
        coletaDados = ColetaDados.new
        https = Net::HTTP.new('api.invertexto.com', 443)
        https.use_ssl = true
        tokenApi = "153|IizI3MqKmi7Hn4akkpOIvXweFSnRZPIH"
        response = https.get("/v1/cep/#{coletaDados.coletar}?token=#{tokenApi}")
        @@code = response.code
        @@message = response.message
        @@body = response.body       
    end
end

class Escrever < ConectaApi    
    conectaApi = ConectaApi.new
    conectaApi.conecta
    def escreverTerminal
        puts @@code
        puts @@message
        puts @@body
    end

    def escreverArquivo
        time = Time.now
        date = time.strftime('%d/%m/%y')
        day = time.day
        hour = time.strftime('%H:%M')
        File.open('Endereco_completo.txt','a') do |line|
            line.puts('')
            line.puts("Consulta feita em #{date} às #{hour}")
            line.puts(@@body)
            line.puts('- - - - - Fim da consulta - - - -')
        end
    end

end

escrever = Escrever.new
escrever.escreverTerminal
escrever.escreverArquivo