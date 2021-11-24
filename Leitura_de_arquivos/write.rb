File.open('shopping-list.txt', 'a') do |line|
    time = Time.now
    line.puts(time.strftime('%d/%m/%y'))
    line.puts('Arroz')
    line.puts('Feijão')
    line.puts('Azeite')
    line.puts('Morango')
    line.puts('Tomate')
    line.puts('Brocolis')
end
