require "sinatra"


get '/' do
message = params[:message]
erb :login , locals: {message: message}
end

post '/login' do
	correct_login = {"scstew" => "12345", "test" => "1234"}
	username = params[:username]
	password = params[:password]
		correct_login.each do |key, value|
			if key == username and value == password
				redirect '/names'
			end
		end
		message = "incorrect username or password"
		redirect '/?message=' + message
end

get '/names' do
	erb :names
end

post '/name' do
	fname = params[:fname]
	lname = params[:lname]
	redirect '/coin?fname=' + fname + "&lname=" + lname
end

get '/coin' do
	fname = params[:fname]
	lname = params[:lname]
	erb :coins ,locals:{fname:fname,lname:lname}
end