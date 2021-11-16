class Animal
    def pular
        puts 'Tóing! tóim! tóim! tóim! tóim'

    end
    def dormir
        puts 'ZzZzzzzz...'
    end
end

class Cachorro < Animal
    def latir
        puts 'Au au'
    end
end

class Gato < Animal
    def mair
        puts 'Miau miau'
    end
end

#criando o objeto cachorro
cachorro = Cachorro.new
#chamando um método da classe pai Animal
cachorro.pular
#chamando um método da classe pai Animal
cachorro.dormir
#chamando um método da prória classe
cachorro.latir



