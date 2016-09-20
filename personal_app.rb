require 'sinatra'
# http calls: get, delete, puts
get '/' do
	erb :get_name
end

post '/name' do
	name = params[:user_name] #this is calling the name response to our submit box
  "Hello #{name}"
end