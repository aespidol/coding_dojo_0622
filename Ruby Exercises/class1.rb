class User
	attr_accessor :first_name, :last_name
	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end
end

u = User.new("Kobe", "Bryant")

puts u.first_name
puts u.last_name

class Pirate
	attr_accessor :name, :crew
	def initialize(name, crew)
		@name = name
		@crew = crew
	end
end

p = Pirate.new("Luffy", "Strawhats")

puts p.name
puts p.crew