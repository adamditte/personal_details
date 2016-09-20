require 'sinatra'
# http calls: get, delete, puts
get '/' do
	erb :get_name
end

post '/name' do
	name = params[:user_name] #this is calling the name response to our submit box"
	redirect '/age?users_name=' + name   #/ is the root. ? means we are using an optional variable
end

get '/age' do
	name = params[:users_name].capitalize
	erb :get_age, :locals => {:name => name}
end
