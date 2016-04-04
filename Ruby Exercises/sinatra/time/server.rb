require 'sinatra'

get '/' do
	time = Time.now()
	if time.hour > 12
		h = time.hour - 12
	else
		h = time.hour
	end
	m = time.min
	s = time.sec

	@stamp = "#{h}:#{m}:#{s}"
	erb :index
end