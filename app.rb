require "sinatra"
require_relative "coin_counter.rb"


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

post '/coins' do
	fname = params[:fname]
	lname = params[:lname]
	money = params[:money]
	redirect '/coin_split?fname=' + fname + "&lname=" + lname + "&money=" + money
end

get '/coin_split' do
	fname = params[:fname]
	lname = params[:lname]
	money = params[:money]
	coinshash = coin_changer(money.to_i)
	coinsarr = []
		coinshash.each do |key, value|
			coinsarr << hash_remover(key,value)
		end	
	num1 = ""
	num2 = ""
	num3 = ""
	num4 = ""	

	num1 = seperator(coinsarr)
	num2 = seperator(coinsarr)
	num3 = seperator(coinsarr)
	num4 = seperator(coinsarr)
		

	erb :results, locals:{fname: fname, lname:lname, money:money, num1:num1, num2:num2, num3:num3, num4:num4}
end

post '/try_again' do
	fname = params[:fname]
	lname = params[:lname]
	redirect '/coin?fname=' + fname + '&lname=' + lname
end