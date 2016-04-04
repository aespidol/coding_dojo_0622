module MyEnumerable
	def my_each
		i = 0
		while i < self.length
			yield self[i]
			i += 1
		end
	end

	def my_select
		i = 0
		selected = []
		while i < self.length
			selected << self[i] if yield(self[i]) == true
			i += 1
		end
		selected
	end

	def my_reject
		i = 0
		selected = []
		while i < self.length
			selected << self[i] if yield(self[i]) == false
			i += 1
		end
		selected
	end

	def my_map
		i = 0
		mapped = []
		while i< self.length
			mapped << yield(self[i])
			i += 1
		end
		mapped
	end
end

