require 'sinatra'
require_relative 'coin_changer'

get '/' do 
	erb :get_name
end

post '/name' do
	name = params[:user_name]
	redirect '/help?user_name=' + name
end

get '/help' do 
	name = params[:user_name].capitalize
	erb :get_help, :locals => {:name => name}
end

post '/help' do
	name = params[:user_name]
	ans = params[:ques]
	if 	ans == "Yes"
		redirect '/changer?user_name' + name
	else
		ans == "No"
		erb :get_move
	end
end

get '/changer' do
	name = params[:user_name]
	erb :get_change, :locals => {:name => name}
end

get '/chance' do
	erb :get_chance
end

post '/chance' do
	name = params[:user_name]
	ans = params[:ques]
	if 	ans == "Yes"
		redirect '/changer?user_name' + name
	else
		ans == "No"
		redirect '/fine'
	end
end

get '/fine' do
	erb :get_fine
end

post '/fine' do
	if value == "OK"
	redirect '/'
	end
end

post '/changer' do
	change = params[:cents]
	coins = coin_changer(change.to_i)
	erb :get_again, :locals => {:coins => coins}
end

