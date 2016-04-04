class CodingDojo
	@@no_of_branches = 0
	def initialize(id, name, address)
		@branch_id = id
		@branch_name = name
		@branch_address = address
		@@no_of_branches += 1
		puts "\nCreated branch #{@@no_of_branches}"
	end
	def hello
		puts "Hello Coding Dojo #{@@no_of_branches}"
	end
	def displayAll
		puts "Branch ID: %d" % @branch_id
		puts "Branch Name: %s" % @branch_name
		puts "Branch Address: %s" % @branch_address
		puts "This is a test #{@branch_address}"
	end
end

branch = CodingDojo.new(253, "SF Coding Dojo", "Sunnyvale CA")
branch.displayAll
branch.hello

branch2 = CodingDojo.new(155, "Boston Coding Dojo", "Boston MA")
branch2.displayAll

def test(a1="Ruby", a2="Perl")
	puts "The programming language is #{a1}"
	puts "The programming language is #{a2}"
end

test("C", "C++")
test

# Private / Protected

class Heart
	def public_method
	end
	protected #all methods following are protected
	def protected
	end
	def protected_method2
	end
	private #all methods following are private
	def private_method
	end
end

# Class methods
class MyClass
	def self.some_method
		puts 'something'
	end
end

MyClass.some_method

# Inheritance

class ParentClass
	def a_method
		puts 'b'
	end
	protected
	def self.protected_method
		puts "protect me"
	end
	private
	def self.other_method
		puts 'other'
	end
end

class SomeClass < ParentClass
	def another_method
		puts 'a'
	end
end

instance = SomeClass.new
instance.a_method
instance.another_method
# instance.other_method
ParentClass.protected_method
ParentClass.other_method
u =  ParentClass.new
# u.protected_method
u.a_method
u.other_method

