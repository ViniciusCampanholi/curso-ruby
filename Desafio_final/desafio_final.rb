require 'net/http'

# nome dos métodos em inglês >Blz
# nome das classes em inglês >Blz
# nome das variáveis em inglês >Blz

class CollectData
def collect
    puts "- - - -Olá! Vamos conferir o CEP - - - -"
    puts ''
    puts 'Digite o CPF: '
    gets.chomp # não precisa atribuir a variável, pois não está sendo utilizada >Blz
  end
end

class ConnectApi
  def connect
    collectData = CollectData.new
    tokenApi = '153|IizI3MqKmi7Hn4akkpOIvXweFSnRZPIH'
    url = 'api.invertexto.com'
    port = '443'
    https = Net::HTTP.new(url,port) # definir os valores em constantes
    https.use_ssl = true
    $response = https.get("/v1/cep/#{collectData.collect}?token=#{tokenApi}")
    $response.code # por que aqui ser uma variável de classe e não de instância? Para que ela possa ser compartilhada com outra classe
    $response.message
    $response.body
  end
end

class Archive # Geralmente nomes de classes são substantivos
  # por que Escrever está herdando a classe ConectaApi? >Eu precisava usar as variáveis @@code, @@message, @@body, mas eu já estou instanciando a classe e chamando o método então não teria necessidade
  #por que esse código não está num construtor ou em outro método?
  
  def write_terminal
    connectApi = ConnectApi.new
    puts connectApi.connect
  end

  def write_archive # convenção ruby é ter classes com camel case (escrever_arquivo) > Blz
    # será que um create_file não seria mais interessante? O que acha? >Você quer dizer um método para criar o arquivo e depois um para escrever?
    time = Time.now
    date = time.strftime('%d/%m/%y')
    hour = time.strftime('%H:%M')
    @@archive = 'Endereco_completo.txt'
    File.open(@@archive,'a') do |line| # nome do arquivo poderia estar em uma constante de classe >Blz
      line.puts('')
      line.puts("Consulta feita em #{date} às #{hour}")
      line.puts($response.body)
      line.puts('- - - - - Fim da consulta - - - -')
    end
  end
end

archive = Archive.new
archive.write_terminal
archive.write_archive
