#just exercise

=begin
	
long comment	
	
=end

# puts "hello"
# puts "coding"
# puts "dojo"

# print "hello"
# print "coding"

# BEGIN {
# 	puts "this is in the begin block"
# }

# END {
# 	puts "this is in the end block"
# }

# x = "john, charles, matt, joe"

# puts x.include?("DOjo")

# puts "This word has the word 'Dojo'" if x.include? "DOjo"

# puts x.split(",").to_s

# y = ""
# puts "Y is empty" if y.empty?

# puts "I am a string".class
# puts 1.class

# puts String.ancestors

# puts String.instance_methods == "instance".methods
# puts String.methods != "instance".methods

# puts String.new("I am String")

# puts "Ruby!" * 2
# puts "Chunky" << "Bacon"
# puts "Chunky"[2..3]
# puts "RuBy".capitalize
# puts "".empty?

# age = 5

# case age
# when 0..4
# 	puts "hello"
# when 5..7
# 	puts "hey"
# else 
# 	puts "duh"
# end

puts "hello" unless nil

class User
	def first_name=(name)
		@first_name=name
	end
	def first_name 
		@first_name
	end
end

u = User.new
u.first_name = "Andrew"

puts u
puts u.first_name