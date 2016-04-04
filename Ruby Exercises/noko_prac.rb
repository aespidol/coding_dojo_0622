require 'open-uri'
require 'nokogiri'
puts "Enter a site"
url = gets.chomp
page = Nokogiri::HTML(open(url))
content = page.css('p').collect { |node| node.text }.join(" ")
list = content.downcase.gsub(/[^-a-z0-9'\s]/, '').split(" ")

j = 0
words = []
while j < list.length
	count = []
	i = 0
	while i < list.length
		if list[j] == list[i]
			count.push(list[j])
		end
		i += 1
	end
	k = 0
	if words.length > 0
		words.push(count)
	else
		while k < words.length
			if count.length < words[k].length
				words.insert(k-1, count)
				break
			end
		end
	end
	j += 1
end

puts words.inspect
