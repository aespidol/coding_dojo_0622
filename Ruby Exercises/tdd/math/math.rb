class MathDojo
	attr_accessor :answer
	def initialize
		@answer = 0
	end
	def add(num)
		if num.kind_of?(Array) == true
			i = 0
			while i < num.length
				@answer += num[i]
				i += 1
			end
			@answer
			self
		else
			@answer = num + @answer
			@answer
			self
		end
	end
	def subtract(num)
		if num.kind_of?(Array) == true
			i = 0 
			while i < num.length
				@answer -= num[i]
				i += 1
			end
			@answer
			self
		else
			@answer = @answer - num
			@answer
			self
		end
	end
end

math = MathDojo.new

puts math.add(5).add(5)