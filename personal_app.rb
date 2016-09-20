require 'sinatra'
# http calls: get, delete, puts
get '/' do
	erb :get_name
end
