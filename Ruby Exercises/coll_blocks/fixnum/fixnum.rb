class Fixnum
	def my_upto(num)
		i = self
		while i <= num
			yield i
			i += 1
		end
	end
	def my_times
		i = 0
		while i < self
			yield
			i += 1
		end
	end
end