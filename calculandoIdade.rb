resultado = ""

loop do
    puts resultado
    puts "Selecione uma das seguintes opções: "
    puts "1 - descobrir a idade de uma pessoa."
    puts "0 - Sair."
    puts "Opção: "

    opcao = gets.chomp.to_i
    if opcao == 1
        print "Digite o ano de nascimento: "
        ano = gets.chomp.to_i
        print "Digite o ano atual: "
        anoAtual = gets.chomp.to_i
        idade = anoAtual - ano
        resultado = "Quem nasceu em #{ano}, tem #{idade} em #{anoAtual}!"
    elsif opcao == 0
        break
    else
        resultado = "Opção inválida"
    end
    system "clear"
end