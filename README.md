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
    >end

O comando *Classe = Classe.new* cria um objeto da classe

>Computer = Computer.new

### Herança
As classes podem herdar atributos e métodos de outras classes, para criar a herança deve-se usar:  
*Classe_filha **<** Classe pai*

>class Cachorro < Animal
>    def latir
>        puts 'Au au'
>    end
>end