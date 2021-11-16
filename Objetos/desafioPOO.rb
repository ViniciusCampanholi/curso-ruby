class Esportista
    def competir
        print 'Participando de uma competição: '
    end
end

class JogadorDeFutebol < Esportista
    def correr
        print 'Correndo atrás da bola'
    end
end

class Maratonista < Esportista
    def correr 
        print 'Percorrendo circuitos'
    end
end

jogadorDeFutebol = JogadorDeFutebol.new
maratonista = Maratonista.new

puts 'O jogador de futebol está: '
jogadorDeFutebol.competir 
jogadorDeFutebol.correr

puts 'O maratonista esta: '
maratonista.competir 
maratonista.correr