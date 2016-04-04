require 'sinatra'
get '/' do
  File.read("public/index.html")
end

get '/merc' do
	File.read("public/merc.html")
end