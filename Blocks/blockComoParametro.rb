##função generica
def foo1
    yield #Comando yield faz a execução de um bloco que foi passado por parametro para a função
    yield
end

##passando um block como parametro
foo1 {puts "Exec the block: este bloco foi passado como parametro"}

##Verificando se um bloco foi passado
def foo2
    if block_given? #verifica se um block foi passado como parametro, se foi executa o bloco
        yield
    else
        puts "Sem bloco como parametro"
    end
end
foo2
foo2 {puts "Com parametro do tipo block"}

#passando um parametro e um bloco para uma função
def foo3(name, &block)
    @name = name
    block.call
end
foo3('Jose') {puts "hello #{@name}"}

##Passando um bloco como parametro para ser executado por outro bloco em uma função
def foo(numbers, &block)
    if block_given?
        numbers.each do |key, value|
            block.call(key, value)
        end
    end
end

numbers = {2 => 2 , 3 => 3 , 4 => 4}

foo(numbers) do |key, value|
    puts "#{key} * #{value} = #{key * value}"
    puts "#{key} + #{value} = #{key + value}"
end