require 'sinatra'

get '/' do 
	erb :index
end
post '/posting_form' do
	@location = params[:location]
	session[:language] = params[:language]
	erb :"results/index"
end
get '/hello' do
	if session[:number]
		session[:number] += 1
	else
		session[:number] = 1
	end
end