array = [1,2,3,4]

puts "\n Executando .map multiplicando cada item do array por 2"
    # .map não altera o conteúdo do array original
new_array = array.map do |a| #criou um novo array para receber as modificações 
    a*2
end

puts "\n Array original"
puts " #{array}"

puts "\n Novo  array (multiplicado por 2)"
puts " #{new_array}"

puts "\n Executando .map! multiplicando cada item do array por 2"
    # .map! altera o conteúdo do array
    array.map! do |a| #alterou o array original
        a*2
    end

puts "Array original"
puts " #{array}"
puts ''