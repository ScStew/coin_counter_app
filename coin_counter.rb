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

	updated_hash = {}

	# if coins[:penny] > 1
	# 	pen = coins[:penny]
	# 	coins.delete(:penny)
	# 	coins[:pennies] = pen
	# end

	# if coins[:dime] > 1
	# 	dim = coins[:dime]
	# 	coins.delete(:dime)
	# 	coins[:dimes] = dim
	# end

	qua = coins[:quarter]
	dim = coins[:dime]
	nic = coins[:nickel]
	pen = coins[:penny]

	if coins[:quarter] > 1
		updated_hash[:quarters] = qua
	else
		updated_hash[:quarter] = qua
	end

	if coins[:dime] > 1
		updated_hash[:dimes] = dim
	else
		updated_hash[:dime] = dim
	end

	if coins[:nickel] > 1
		updated_hash[:nickels] = nic
	else
		updated_hash[:nickel] = nic
	end

	if coins[:penny] > 1
		updated_hash[:pennies] = pen
	else
		updated_hash[:penny] = pen
	end

	updated_hash.each do |key,value|
	 	if value == 0
	 		updated_hash.delete(key)
	 	end
	end

updated_hash


end	

def hash_remover(key,value)
	"#{value} #{key}"
end

def seperator(arr)
	if arr.any?
		arr.slice!(0)
	end
end
