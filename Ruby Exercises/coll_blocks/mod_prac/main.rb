require_relative 'printer_module'
class Array
	include Printer
end

class String
	include Printer
end

[1,2,3].print_each_element
"hello".print_each_element

puts ["ant", "bear", "cat"].any? { |word| word == "ant" }

puts ["ant", "bear", "cat"].each { |word| print word, "--" }

puts (1..4).collect { |i| i*i }

puts (1..4).collect { "cat" }

puts (1..100).detect { |i| i%5 == 0 and i%7 == 0 }

puts (1..10).find_all { |i| i%3 == 0 }

class Thing
	attr_accessor :name, :age
	def initialize(name, age)
		@name = name
		@age = age
	end
end

thing = { :name => "Andrew"}

puts thing.has_key?(:name)
puts thing.has_value?("Andrew")
puts thing.key("Andrew")
