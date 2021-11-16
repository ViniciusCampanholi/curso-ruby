class Dog1
    def name
        @name
    end

    def name= name
        @name = name
    end
end

dog1 = Dog1.new
dog1.name = 'Theo'
puts dog1.name

# Outra forma de trabalhar com atributos é usando o attr_accessor
class Dog2
    attr_accessor :name, :age
end

dog2 = Dog2.new
dog2.name = 'Theodoro'
dog2.age = '3'
puts dog2.name
puts dog2.age