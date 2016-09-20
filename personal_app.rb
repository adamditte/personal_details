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

post '/age' do
	age = params[:age]
	name = params[:retrieved_name]
	redirect '/fav_numbers?name=' + name +"&age=" + age
end

get '/fav_numbers' do
	numbers = params[:fav_nums]
	erb :favorite_numbers, :locals => {:name => name, :age => age}
end



