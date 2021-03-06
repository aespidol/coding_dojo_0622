require_relative "node"

describe Node do 
	before do
		@node = Node.new(1)
	end

	it "initializes with one argument to set the element attribute" do 
		expect(@node.element).to eq(1)
	end

	it "has a next instance variable with default value of nil" do 
		expect(@node.next).to eq(nil)
	end
end