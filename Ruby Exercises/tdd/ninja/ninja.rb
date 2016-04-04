require_relative "human"

class Ninja < Human
	attr_accessor :stealth
	def initialize
		@stealth = 175
	end
	def steal
		@stealth =+ 10
	end
end