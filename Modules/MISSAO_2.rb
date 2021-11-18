module Person
    class Juridic
        def initialize (_nome, _cnpj)
            @_nome = _nome
            @_cnpj = _cnpj
        end

        def add
            puts 'Pessoa Jurídica Adicionada'
            puts "Nome: #{@_nome}"
            puts "CNPJ: #{@_cnpj}"
        end
    end

    class Physical
        def initialize(_nome, _cpf)
            @_nome = _nome
            @_cpf = _cpf
        end
        def add
            puts 'Pessoa Física Adicionada'
            puts "Nome: #{@_nome}"
            puts "CPF: #{@_cpf}"
        end
    end
end

Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add
Person::Physical.new('José Almeida', '425.123.123-123').add