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

    