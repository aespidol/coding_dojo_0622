class Queue 
	attr_accessor :data_store
	attr_reader :back
	def initialize
		@data_store = []
		@back = 0
	end
	def enqueue(num)
		@data_store[@data_store.length] = num
	end
	def queue_display
		@data_store
	end
	def dequeue
		a ,*b = @data_store
		@data_store = b
		@back = a
		@back
	end
end