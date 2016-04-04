require 'sinatra'

get '/' do 
	if session[:counter].nil?
		session[:counter] += 1
	else
		session[:counter] = 1
	end
	erb :index
end
