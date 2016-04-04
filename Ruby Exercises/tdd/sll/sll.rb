require_relative "node"

class SinglyLinkedList
	attr_accessor :head, :list
	def initialize
		@head = Node.new("head")
		@list = []
		@element_list = []
	end
	def insert(val, pos)
		if pos == "head"
			@head.element = val
		else
			current = @head
			while current.next != nil
				current = current.next
			end
			current.next = Node.new(val)
		end
	end
	def display_nodes
		current = @head
		while current.next != nil
			@list.push(current)
			current = current.next
		end
		@list.push(current)
		puts @list
		@list
	end
	def display_elements
		i = 0
		while i < @list.length
			@element_list.push(@list[i].element)
			i += 1
		end
		@element_list
	end
end

