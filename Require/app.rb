require_relative 'animal.rb'
require_relative 'cachorro.rb'

puts '--Animal--'
animal = Animal.new
animal.pular
animal.dormir

puts '--Cachorro--'
cachorro = Cachorro.new
cachorro.latir
cachorro.pular
cachorro.dormir
