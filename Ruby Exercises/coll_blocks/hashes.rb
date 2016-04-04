x = {
	"first_name" => "Coding",
	"last_name" => "Dojo"
}

puts x["first_name"]

puts "Your last name is Dojo" if x["last_name"].eql? "Dojo"

y = {
	:first_name => "Coding", :last_name => "Dojo"
}

puts y[:first_name]
puts y[:last_name], y[:first_name]

y.delete(:first_name)

z = "Y is now ", y

puts y.has_key?(:last_name)

puts y.has_value?("Dojo")

puts y.empty?()

y[:dojo] = "new"

puts y