def timer
	time = yield
	change = time/2.0
	change
end

puts timer{ sleep(0.5) }