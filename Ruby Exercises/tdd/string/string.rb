class String
	def my_reverse
		reverse = ""
		i = self.length-1
		while i >= 0
			reverse = reverse.to_s + self[i]
			i -= 1
		end
		reverse
	end
	def my_reverse!
		i = 0
		reverse = self
		while i < reverse.length/2
			@temp = reverse[i]
			reverse[i] = reverse[reverse.length-1-i]
			reverse[reverse.length-1-i] = @temp
			i += 1
		end
		reverse
	end
end

string = "hello"
puts string.my_reverse!
puts string