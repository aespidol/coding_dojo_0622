require 'sinatra'
get '/corny/:word' do
	"#{params[:word]}"
end