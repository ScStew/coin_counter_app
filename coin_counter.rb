def coin_changer(change)

coins = {quarter:0, dime:0, nickel:0, penny:0}

	while change >= 25 do
		change -= 25
	 	coins[:quarter] += 1
	end
	  
	while change >= 10 do
	 	change -= 10
	 	coins[:dime] += 1 
	end

	while change >= 5 do
	 	change -= 5
	 	coins[:nickel] += 1
	end

	while change >= 1 do
	 	change -= 1
	 	coins[:penny] += 1
	end

	if coins[:quarter] > 1
		qua = coins[:quarter]
		coins.delete(:quarter)
		coins[:quarters] = qua
	end

	if coins[:dime] > 1
		dim = coins[:dime]
		coins.delete(:dime)
		coins[:dimes] = dim
	end

	if coins[:nickel] > 1
		nic = coins[:nickel]
		coins.delete(:nickel)
		coins[nickels] = nic
	end

	if coins[:penny] > 1
		pen = coins[:penny]
		coins.delete(:penny)
		coins[:pennies] = pen
	end

	coins.each do |key,value|
	 	if value == 0
	 		coins.delete(key)
	 	end
	end

coins

end	

def hash_remover(key,value)
	"#{key}: #{value}"
end

def seperator(arr)
	if arr.any?
		arr.pop
	end
end
