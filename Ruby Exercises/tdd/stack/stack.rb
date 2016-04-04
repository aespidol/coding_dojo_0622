class Stack
	attr_accessor :data_store
	attr_reader :back
	def initialize
		@data_store = []
		@back = 0
	end
	def push(num)
		@data_store[@data_store.length] = num
	end
	def stack_display
		@data_store
	end
	def pop
		*a ,b = @data_store
		@data_store = a
		@back = b
		@back
	end
end

# <span class="keyword control from-rainbow"></span>