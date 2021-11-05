result = ""
loop do
    print "#{n1} #{operacao} #{n2} = #{result}"
    puts "Vamos calcular?"
    puts "1 - Sim"
    puts "0 - Não, sair"
    escolha = gets.chomp.to_i
    if escolha == 1
        puts "Digite um número: "
        n1 = gets.chomp.to_i
        puts "Digite outro número: "
        n2 = gets.chomp.to_i
        puts "Escolha a operação | + | - | / | * |"
        operacao = gets.chomp
        
        case operacao
        when "+"
            result = n1+n2
        when "-"
            result = n1-n2
        when "/"
            result = n1/n2
        when "*"
            result = n1*n2
        end
    elsif escolha == 0
        break
    else 
        result = "Escolha uma operação válida"
    end
        system "clear"
end