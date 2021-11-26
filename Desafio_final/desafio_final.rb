require 'net/http'

# nome dos métodos em inglês
# nome das classes em inglês
# nome das variáveis em inglês

class ColetaDados
  def coletar
    puts "- - - -Olá! Vamos conferir o CEP - - - -"
    puts ''
    puts 'Digite o CPF: '
    cep = gets.chomp # não precisa atribuir a variável, pois não está sendo utilizada
  end
end

class ConectaApi
  def conecta
    coletaDados = ColetaDados.new
    https = Net::HTTP.new('api.invertexto.com', 443) # definir os valores em constantes
    https.use_ssl = true
    tokenApi = "153|IizI3MqKmi7Hn4akkpOIvXweFSnRZPIH" # utilizar apóstrofo ao invés de aspas, pois não há concatenação de strings
    response = https.get("/v1/cep/#{coletaDados.coletar}?token=#{tokenApi}")
    @@code = response.code # por que aqui ser uma variável de classe e não de instância?
    @@message = response.message
    @@body = response.body
  end
end

class Escrever < ConectaApi # Geralmente nomes de classes são substantivos
  # por que Escrever está herdando a classe ConectaApi?
  #
  #por que esse código não está num construtor ou em outro método?
  conectaApi = ConectaApi.new
  conectaApi.conecta
  def escreverTerminal
    puts @@code
    puts @@message
    puts @@body
  end

  def escreverArquivo # convenção ruby é ter classes com camel case (escrever_arquivo)
    # será que um create_file não seria mais interessante? O que acha?
    time = Time.now
    date = time.strftime('%d/%m/%y')
    day = time.day
    hour = time.strftime('%H:%M')
    File.open('Endereco_completo.txt','a') do |line| # nome do arquivo poderia estar em uma constante de classe
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
