class Table
  attr_accessor :table_name, :first_name, :last_name, :age
end
def my_create_table(name)
	yield
end