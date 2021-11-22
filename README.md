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

## Operadores
operador | nome
--|---
"+" | adição
"-" | subtração
"*" | multiplicação
"/" | divisão
"**" | potencia
"%" | módulo

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

## Atributos
Atributos (ou variáveis de instância) no Ruby são sempre privados e começam com **@**, eles só podem ser alterados pelos métodos de um objeto.
~~~ruby
attr_accessor :atributo1, :atributo2
~~~

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
>"Fish don't have walkbehavior" #retorno do metodo inexistente na classe
~~~
>Quando o método chamado é inexistente ele cai dentro do *method_missing* que recebe por parâmetro o nome do método chamado.

## Self

## Private and Protected
