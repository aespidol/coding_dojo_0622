a = ["Andrew", "Linh", "Alfred"]
b = [5,6,7,3,24]
c = [24, "Andrew"]

puts a[0]
puts b[2]

puts b.class

puts b.shuffle.join("-")
x = a+b
puts x.to_s

puts y = (a+b)-c
puts y.to_s

puts y.delete("Alfred")
puts y.to_s

# .fetch
puts a.fetch(1, "dog")
puts a.fetch(-3)
puts a.fetch(5, "dog")
# .reverse
puts a.reverse.to_s
# .sort
puts b.sort.to_s
puts b.sort { |x,y| y <=> x}.to_s
# .slice
puts b.slice(2,2)
# .insert

# values_at()
x = %w{ a b c d e f }
puts x.values_at(0,2)