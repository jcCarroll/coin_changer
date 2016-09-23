require 'sinatra'

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
	if value = "Yes"
		redirect '/changer?name'
	else
		value = "No"
		redirect '/move_on'
	end
end

get '/changer' do
	name = params[:user_name]
	erb :get_change, :locals => {:name => name}
end

# get '/' do
# 	name = params[:user_name]
# 	erb :get_change, :locals => {:name => name}
# end