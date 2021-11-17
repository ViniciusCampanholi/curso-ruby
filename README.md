# curso-ruby-puro

## O que são Gems?
Uma gem é o equivalente a uma lib em outras linguagens. São um conjunto de códigos já prontos e para serem usados basta instalar e chamar no seu código. 
Para chamar uma gem usamos o comando *require* seguido pelo nome da gem entre aspas.
**Exemplo:**
>require 'os'

Para instalar uma biblioteca usamos o termial com seguinte comando
>gem install os
*onde **os** é o nome da gem a ser instalada.*

## Objetos e POO
as classes começam com o comando *class* seguido pelo nome da clase

>class computer

O comando *classe = Classe.new* cria um objeto da classe

>computer = Computer.new

## Herança
As classes podem herdar atributos e métodos de outras classes, para criar a herança deve-se usar:  
*Classe_filha **<** Classe pai*

>class Cachorro < Animal

## Polimorfismo
Polimorfismo é um príncipio da orientação a objetos onde as classes filhas podem invocar metodos com o mesmo nome dos metodos da classe pai sobeescrevendo-os.

## Require
Com ele é possível carregar outros arquivos ruby, como uma gem.
para buscar os arquivos deve-se atentar para a herença entre as classes. As classes pai devem ser chamadas antes das classes filhas.

>require '*nome_arquivo.rb*'

>require_relative '*nome_arquivo.rb*'

## Escopo das variáveis

>- **Variável local:** É declarada com a primeira letra do nome em minúscula ou underline, só pode ser utilizada dentro do metado ou classe em que foi declarada. Exemplo: **nome** | **_nome**

>- **Variável global:** Declarada com o prefixo **$**. Pode ser acessada em qualquer lugar do programa, seu uso merece cautela, pois ela pode ser em qualquer local do código e isso pode causar dificuldades no rastreamento de bugs. Exemplo: **$nome**

>- **Variável de classe:** É declarada com o prefixo **@@**. Pode ser acessada em qualquer lugar da classe onde foi declarada e seu valor é compartilhado entre todas as instâncias de sua classe. Exemplo: **@@nome**

>- **Variável de instancia:** Muito comuns, declaradas com o prefixo **@**. Semelhante a variável de classe, tendo como única diferença o valor que não é compartilhado entre todas as instâncias de sua classe.

## Atributos
Atributos (ou variáveis de instância) no Ruby são sempre privados e começam com **@**, eles só podem ser alterados pelos métodos de um objeto.
~~~ruby
>attr_accessor :atributo1, :atributo2
~~~

## Construtores
Toda vez que uma instância de uma classe é criada, o Ruby procura por um método chamado **initalize**.
Você pode criar este método para especificar valores padrões durante a construção do objeto.

## Blocks
Um *block* pode ser entendido como uma função sem nome. É definido pelo uso de **do** ... **end** ou **chaves {}**. Pode receber parâmetros para ser executado.

## Lambda
É como se fosse um block, mas se diferencia por poder ser armazenado em uma variável

~~~ruby
first_lambda = lambda {puts "my first lambda"}
~~~
variavel first lambda recebe a expressão lambda
