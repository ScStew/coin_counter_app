require "sinatra"

get '/' do
erb :login 
end

post '/login' do
	correct_login = {"scstew" => "12345"}
	username = params[:username]
	password = params[:password]
		correct_login.each do |key, value|
			if key == username and value == password
				redirect '/names'
			else
				redirect '/'
			end
		end
end

get '/names' do
	erb :names
end
