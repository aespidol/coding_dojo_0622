def my_expect(result)
	if result == yield
		true
	else
		false
	end
end
