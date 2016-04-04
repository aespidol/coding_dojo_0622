require_relative "sll"

describe SinglyLinkedList do 
	before do 
		@sll = SinglyLinkedList.new
	end

	describe "initialization" do 
		it "has an attribute head that is an instance of Node with Element Head" do 
			expect(@sll.head.class).to eq(Node)
			expect(@sll.head.element).to eq("head")
		end
	end

	describe "behavior" do
		before do
			@sll.insert(1, "head")
			@sll.insert(3, 1)
			@sll.insert(2, 1)
		end

		describe "insertion" do 
			it "inserts new Node to list" do 
				nodes = @sll.display_nodes
				expect(nodes[0].element).to eq(1)
				expect(nodes[1].element).to eq(3)
				expect(nodes[2].element).to eq(2)
				expect(nodes.count).to eq(3)
				expect(@sll.display_elements).to eq([1,2,3])
			end
		end

	end
end