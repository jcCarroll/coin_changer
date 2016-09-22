require 'sinatra'

get '/' do 
	erb :get_name
end

post '/user_name' do
	name = params[:user_name]
	redirect '/help?user_name=' + name
end

get '/help' do 
	name = params[:user_name].capitalize
	erb :get_help, :locals => {:name => name}
end