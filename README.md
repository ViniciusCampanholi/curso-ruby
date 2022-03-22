# Ruby
- Orientada a objetos
- Tipagem dinâmica: não precisa declarar o tipo da variável;
- Tipagem forte: não soma inteiro com boolean por exemplo.
- Linguagem interpretada
- Os arquivos ruby possuem a extensão .rb

## Hello World!
O comando *puts* é utilizado para imprimir no console
~~~ruby
puts "hello world!"
~~~

## Strings
~~~ruby
string.downcase #retorna o valor em minusculo sem alterar o conteudo da variavel
string.downcase! #retorna em minusculo alterando a variavel

string.upcase #retorna o valor em maiusculo sem alterar o conteudo da variavel
string.upcase! #retorna em maiusculo alterando a variavel
~~~

## Array
<p>Armazenam diversos valores, podem ser acessados utlizando o indice do valor armazenado.</p>
Declaração: 

~~~ruby
meuArray = ['p0','p1','p2','p3','p4']
~~~

Chamada:

~~~ruby
meuArray[0]
~~~
>Vai chamar o valor contido no indice 0, que neste caso é o valor *p0*

~~~ruby
meuArray[-1] #retorna o último elemento
~~~

### Metodos para arrays

~~~ruby
meuArray.first() #retorna o valor da primeira posição
meuArray.last()  #retorna o valor da última posição
meuArray.length() #retorna o tamanho do array
meuArray << 'p5' # adiciona o valor 'p5' na última posição
meuArray.pop() #remove o último valor do array
meuArray.size #retorna o tamanho do array
meuArray.join('') #faz o array virar string
string.scan(/./) #faz a string virar um array 
~~~

## Hash
Organiza uma coleção de dados que contém chaves e valores. São definidos por chaves e são chamados com colchetes.

Declaração:

~~~ruby
meuHash = {nome: 'vinicius' , sobrenome: 'campanholi' , idade: 26}
~~~

Chamada:

~~~ruby
meuHash[:nome]
~~~

>vai retornar *vinicius*, que é o valor armazenado na chave *:nome*.

## Encadeando arrays e hashes

~~~ruby
alunos = [{nome: 'André', disciplina:'Artes', nota:7} , {nome: 'Sophia', disciplina:'Artes', nota:8} , {nome: 'Laura', disciplina:'Artes', nota:9}]
~~~

~~~ruby

alunos.each do |um_aluno|
    puts ("#{um_aluno[:nome]} tirou a nota #{um_aluno[:nota]} em #{um_aluno[:disciplina]}")
end #bloco para fazer a varredura 
~~~

## Operadores
operador | nome
--|---
"+" | adição
"-" | subtração
"*" | multiplicação
"/" | divisão
"**" | potencia
"%" | módulo

## Estruturas de controle condicional

### if - end

~~~ruby
if 1.odd?() #o método .odd?() retorna true um numero é impar / o método even?() retorna true se um numero é par
    puts '1 é um numero impar'
end
~~~

### if - else
~~~ruby
numero_1 = 1
numero_2 = 20

if numero_1 == num1 é um numero impar
    puts 'Os numeros são diferentes'
end
~~~

## Switch/case
Com ela podemos definir uma série de condições e resposas reduzindo a quantidade de codigo

~~~ruby
nota = 7

case nota
when 0
    puts 'Você tirou zero! Precisa melhorar...'
when 1..4
    puts 'Reprovado... precisa se esforçar mais!'
when 5
    puts 'Passou raspando!'
when 6..9
    puts 'Parabéns, você foi aprovado!'
else
    puts 'Tirou 10, você é o melhor!'
end
~~~

### Estruturas de repetição while e each

~~~ruby
alunos = []
condicao = 's'
while condicao == 's' do
    puts "Digite o nome do aluno: "
    nome = gets.chomp

    puts "Digite a nota: "
    nota = gets.to_i

    puts "Digite a disciplina: "
    materia = gets.chomp
    puts "-----------------------------------------"
    alunos << {nome:nome, nota:nota, materia:materia}

    puts 'deseja adicionar outro aluno? '
    condicao = gets.chomp
end
if alunos.length > 0
    alunos.each do |um_aluno|
        if um_aluno[:nota] > 5
            status = "Aprovado"
        else
            status = "Reprovado"
        end
        puts ("#{um_aluno[:nome]} tirou a nota #{um_aluno[:nota]} e está #{status} em #{um_aluno[:materia]}")
    end
end
~~~

## Entrada e Saída
* Exibe no console
~~~ruby
puts
~~~

* Exibe no console
~~~ruby
print
~~~

* Captura uma entrada pelo console
~~~ruby
gets.chomp
~~~

* Exemplo
~~~ruby
print 'Digite seu nome: '
nome = gets.comp
puts "Olá #{nome}, bem vido ao mundo do ruby!"
~~~


## O que são Gems?
Uma gem é o equivalente a uma lib em outras linguagens. São um conjunto de códigos já prontos e para serem usados basta instalar e chamar no seu código. 
Para chamar uma gem usamos o comando *require* seguido pelo nome da gem entre aspas.
**Exemplo:**

~~~ruby
require 'os'
~~~
Para instalar uma biblioteca usamos o termial com seguinte comando
~~~ruby
gem install os
~~~
*onde **os** é o nome da gem a ser instalada.*

## Objetos e POO
as classes começam com o comando *class* seguido pelo nome da clase

~~~ruby
class computer
~~~

O comando *classe = Classe.new* cria um objeto da classe

~~~ruby
computer = Computer.new
~~~

## Herança
As classes podem herdar atributos e métodos de outras classes, para criar a herança deve-se usar:  
*Classe_filha **<** Classe pai*

~~~ruby
class Cachorro < Animal
~~~

## Polimorfismo
Polimorfismo é um príncipio da orientação a objetos onde as classes filhas podem invocar metodos com o mesmo nome dos metodos da classe pai sobeescrevendo-os.

## Require
Com ele é possível carregar outros arquivos ruby, como uma gem.
para buscar os arquivos deve-se atentar para a herença entre as classes. As classes pai devem ser chamadas antes das classes filhas.

~~~ruby
require '*nome_arquivo.rb*'
~~~
~~~ruby
require_relative '*nome_arquivo.rb*'
~~~

## Escopo das variáveis

>- **Variável local:** É declarada com a primeira letra do nome em minúscula ou underline, só pode ser utilizada dentro do metado ou classe em que foi declarada. Exemplo: **nome** | **_nome**

>- **Variável global:** Declarada com o prefixo **$**. Pode ser acessada em qualquer lugar do programa, seu uso merece cautela, pois ela pode ser em qualquer local do código e isso pode causar dificuldades no rastreamento de bugs. Exemplo: **$nome**

>- **Variável de classe:** É declarada com o prefixo **@@**. Pode ser acessada em qualquer lugar da classe onde foi declarada e seu valor é compartilhado entre todas as instâncias de sua classe. Exemplo: **@@nome**

>- **Variável de instancia:** Muito comuns, declaradas com o prefixo **@**. Semelhante a variável de classe, tendo como única diferença o valor que não é compartilhado entre todas as instâncias de sua classe.

## attr_accessor
>Usado para criar os metodos "Getter e Setter" de uma única vez

~~~ruby
class Aluno
    def initialize(nome, telefone, matricula)
      @nome, @telefone, @matricula = nome, telefone, matricula
    end

    #Getter
    def telefone
        return @telefone
    end

    #Setter
    def telefone=(valor)
        @telefone = valor
    end
end

#OU

class Aluno1
    #Definir o getter e o setter
    attr_accessor :nome, :telefone, :matricula

    def initialize (nome, telefone, matricula)
        @nome, @telefone, @matricula = nome, telefone, matricula
    end
end
~~~

## attr_reader
>Usado para criar o método "getter"

## attr_writer
>Usado para criar o método "setter"

## Construtores
Toda vez que uma instância de uma classe é criada, o Ruby procura por um método chamado *__initalize__*.
Você pode criar este método para especificar valores padrões durante a construção do objeto.

~~~ruby
class Person
    def initialize(name, age)
        @name = name
        @age = age
    end

    def check
        puts "Instância da classe iniciada com os valores"
        puts "Name = #{@name}"
        puts "Idade = #{@age}"
    end
end

person = Person.new('João', 12)
person.check
~~~

## Blocks
Um *block* pode ser entendido como uma função sem nome. É definido pelo uso de **do** ... **end** ou **chaves {}**. Pode receber parâmetros para ser executado.

## Lambda
É como se fosse um block, mas se diferencia por poder ser armazenado em uma variável

~~~ruby
first_lambda = lambda {puts "my first lambda"}
~~~
**OU**
~~~ruby
first_lambda = -> {puts "my first lambda"}
~~~

variavel *first_lambda* recebe a expressão lambda

## Modules
Os modules possuem duas funções:

### Namespace
Serve como um container para agrupar objetos relacionados(classes, constantes, métodos ou outros módulos)
~~~ruby
module ReverseWorld
    def self.puts text
        print text.reverse.to_s
    end
end

ReverseWorld::puts 'O resultado é'
puts 'O resultado é'
~~~

### Mixins
Serve para incluir funcionalidades extras as classes. Você pode chamar um modulo dentro de outro modulo ou classe usando o comando **_include_**

~~~ruby
module ImpressaoDecorada
    def imprimir text
        decoracao = '#' * 100
        puts decoracao
        puts text
        puts decoracao
    end
end
 
module Pernas
    include ImpressaoDecorada
    
    def chute_frontal
        imprimir 'Chute Frontal'
    end
    
    def chute_lateral
      imprimir 'Chute Lateral'
    end
end
 
module Bracos
    include ImpressaoDecorada
    
    def jab_de_direita
        imprimir 'Jab de direita'
    end
    
    def jab_de_esquerda
        imprimir 'Jab de esquerda'
    end
    
    def gancho
      imprimir 'Gancho'
    end
end
 
class LutadorX
    include Pernas
    include Bracos
end
 
class LutadorY
    include Pernas
end
 
lutadorx = LutadorX.new
lutadorx.chute_frontal
lutadorx.jab_de_direita
 
lutadory = LutadorY.new
lutadory.chute_lateral
~~~

 ## Regex
Expressões regulares, para representar padrões em strings (como uma máscara). Pode ser usado para fazer validações ou buscas por um determinado padrão.

### Maneiras de criar um regex

>Utilizando /.../
~~~ruby
/expressao/
~~~
>Utilizando %{...}
~~~ruby
%r{expressao}
~~~
>Utilizando um construtor através do Regexp.new('...')
~~~ruby
Regex.new('expressao')
~~~

### Casamento de padrões
É uma operação para buscar um padrão dentro da string através do operador *=~*
É feita uma busca de um regex dentro da string comparada

Para a sua atribuição a  sitáxe é a seguinte:
~~~ruby
/by/ =~ 'ruby'
~~~
>Será feita uma busca, pelo regex *by*, dentro da string *ruby* . O valor retornado é a posição de index onde o padrão se inicia. Neste caso o retornado será **2**.

~~~ruby
nome = 'vinicius'
/vi/ =~ nome
~~~
>També é possível utilizar uma variável para fazer a comparação com o valor armazenado nela. Neste exemplo o valor retornado seŕa **0**

Se o padrão não for encontrado, o valor retornado será **nil**
~~~ruby
/ry/ =~ 'ruby'
~~~
>valor retornado será **nil**

### Match

~~~ruby
texto = 'Olá, tudo bem? Meu whats app é (99) 7 4321-1234'
/\([0-9]{2}\) [0-9] [0-9]{4}-[0-9]{4}/.match(texto)
>#<MatchData "(99) 7 4321-1234">
~~~
>`[0-9]` serve para indicar a que a busca será feita entre 0 e 9

>`{2}` serve para indicar o numero de vezes que a busca será feira

>`[0-9]{2}` significa que a busca será feita de 0 a 9 duas vezes

>`\(\)` indica a inserção mdo caractere `()`

>`\([0-9]{2}\)` uma busca feita dentro dos parenteses, de 0 a 9 duas vezes

## Time (data e hora)
Time é um classe e possui métodos. Para extrair a hora atual utilizamos o método **now** da classe time, e podemos atribuir a uma variavel.

Exemplo de extração da hora atual do sistema:
~~~ruby
time = Time.now
puts time
>2021-11-22 15:45:43.594453723 -0300
~~~
>Vai retornar **dia e hora atual** do sistema `2021-11-22 15:45:43.594453723 -0300`, a variável *time* armazenou essas informações, e podemos usar outros métodos da classe **Time** para extrair o dia ou o ano que foram armazenados em *time*.

>É uma biblioteca bem extensa, podemosverificar a documentação para conhecer mais métodos da classe **Time**
~~~ruby
time.day
>22

time.year
>2021

time.month
>11
~~~
### Formatar data 
para fazer a formatação da data utilizamos o método *strftime('%d/%m/%y')* e passamos para ele um parametro que será o padrão, neste caso o padrão brasileiro dia/mes/ano.

~~~ruby
time.strftime('%d/%m/%y')
>22/11/21
~~~
## Method Missing
Utilizado para interceptar chamadas a métodos que não existem.
~~~ruby
class Fish
 def method_missing(method_name)
   puts "Fish don't have #{method_name} behavior"
 end
 
 def swim
   puts 'Fish is swimming'
 end
end
 
fish = Fish.new
fish.swim #metodo existente
fish.walk #metodo inexistente na classe

>"Fish is swimming" #retorno do metodo existente
>"Fish don't have walk behavior" #retorno do metodo inexistente na classe
~~~
>Quando o método chamado é inexistente ele cai dentro do *method_missing* que recebe por parâmetro o nome do método chamado.

## Self
*Self* é uma variável especial que aponta para o objeto atual.

## Private and Protected
Por padrão, todos os métodos definidos são públicos. Isso significa que eles podem ser acessados por qualquer um.
Mas além dos métodos públicos, existem outros dois tipos de métodos chamados private e protected.

### Private
Método interno de uma classe. Apenas os métodos públicos dessa classe ou de classes descendentes podem chamá-lo.
O self é o único receptor de um método private.

Declaração: 
~~~ruby
class Pessoa
    def braco
        puts 'braço é um método publico'
    end

    private
    def cabeca
       puts 'cabeça é um método privado' 
    end
end

pessoa = Pessoa.new
pessoa.cabeca

>Traceback (most recent call last):
>private.rb:13:in `<main>': protected method `cabeca' called for #<Pessoa:0x00005593edceb6d0> (NoMethodError)
~~~
>Este método só poderá ser chamado por métdodos da própria públicos da própria classe

Se tivermos uma classe herdeira, o método privado só pode ser chamado por outro método publico desta classe herdeira
 ~~~ruby
 class Pessoa
    def braco
        puts 'braço é um método publico'
    end

    private
    def cabeca
       puts 'cabeça é um método privado' 
    end
end

class Homem < Pessoa
    def nova_cabeca
        cabeca
    end
end

homem = Homem.new
homem.nova_cabeca

>'cabeça é um método privado'
~~~

### Protected
A diferença entre ele e o private, é que o método protected pode ter como receptor qualquer instância de sua classe.

~~~ruby
class Foo
 def call_private(instance)
   instance.bar
 end
 
 protected
 
 def bar
   puts "private method"
 end
end
 
instance_1 = Foo.new
 
instance_2 = Foo.new
 
instance_1.call_private(instance_1)
 
instance_1.call_private(instance_2)
~~~

## Leitura e escrita de arquivos

### Leitura

A leitura de arquivos pode ser feita por meio do comando `File.open('caminho/nome_arquivo.ext')`. Essa instrução pode ser armazenada em uma variável.

~~~ruby
file = File.open('arquivo.txt')
~~~

Para fazer a leitura das linhas do arquivos utilizamos um bloco *each*

~~~ruby
file.each do |line|
puts line
end
~~~

### Escita

A escrita pode ser feita através da mesma estrutura com o adicional do *apendice*  `'a'` que informa que as informações serão inseridas ao final do arquivo.
>Se o arquivo não existir, ele será criado automaticamente

>A instrução `'a'` serve para escrever ao final.

>A instrução `'w'` serve para sobescrever o arquivo.

~~~ruby
File.open('arquivo.txt', 'a') do |line|
    time = Time.now
    line.puts(time.strftime('%d/%m/%y'))
    line.puts('Arroz')
    line.puts('Feijão')
    line.puts('Azeite')
    line.puts('Morango')
    line.puts('Tomate')
    line.puts('Brocolis')
end
~~~

## Chamadas Web

Atraves de chamadas Web podemos conectar o nosso software a outros programas através da internet. Para isso utilizaremos a lib *Net::HTTP* do Ruby.

~~~ruby
request 'net/http'
~~~

### Requisições HTTP

~~~ruby
require 'net/http'

example = Net::HTTP.get('example.com', '/index.html')
~~~

### Requisições HTTPS
Exemplo utlizando a API de consulta de CEP do site *invertexto.com* 
~~~ruby
require 'net/http'

https = Net::HTTP.new('api.invertexto.com', 443)
https.use_ssl = true #Para fazer chamadas https
cep = "08740470"
response = https.get("/v1/cep/#{cep}?token=153|IizI3MqKmi7Hn4akkpOIvXweFSnRZPIH")
puts response.code #Codigo de status
puts response.message #Mensagem do status
puts response.body #Body (Json)
~~~

### Requisições HTTPS/POST
Para colocar informações

~~~ruby
require 'net/http'

url = Net::HTTP::Post.new("/api/users") #Criando o objeto url
url.set_form_data({name:'Vinicius Campanholi', job:'Developer', age:'26'}) #Passando os parametros

response = Net::HTTP.start('reqres.in', use_ssl: true) do |https| #Passando os parametros da conexão para um bloco
    https.request(url)
end

puts response.message
puts response.body

>"Created"
>'{"name":"Vinicius Campanholi","job":"Developer","age":"26","id":"445","createdAt":"2021-11-24T19:23:57.901Z"}'
~~~

## Web Scraping
Através do *Web Scraping* conseguimos extrair dados de sites, como por exemplo: uma lista de posts de um blog e etc.

Para fazermos isto, usaremos uma biblioteca chamada *Nokogiri*, que ajudará a encontrar as informações dentro das estruturas HTML dos sites.

Para fazer a instalação da biblioteca *Nokogiri* utilize(linux):
>gem install nokogiri

depois faça o request no arquivo em questão
~~~ruby
require 'nokogiri'
~~~

Exemplo:

~~~ruby
require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('onebitcode.com', 443) #Fazendo a chamada para o site criando um objeto https, exemplo usado: onebitcode.com
https.use_ssl = true #Habilitando o SSL

response = https.get("/") #Executando o GET, neste caso para a Home

doc = Nokogiri::HTML(response.body) #Criando um objeto chamado doc para HTML

h1 = doc.at('h1') #Buscando as informações contidas em doc da tag <h1>
puts h1.content #Escrevendo o conteúdo da tag <h1>
~~~
