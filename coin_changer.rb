# Coin changer kata

# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

# eg. if you have 11 cents you should return {:dime => 1, :penny => 1}; if you have 31 cents you should return {:quarter => 1, :nickle => 1, :penny => 1}.


def coin_changer(cents)
	coins = {}
	changer = {:quarter => 25, :dime => 10, :nickle => 5, :penny => 1}
		changer.each do |key, value|
			if cents >= value
				coins[key] = cents / value				
			end	
			cents = cents % value		
		end
	coins
end

def bill_changer(dollars)
	bills = {}
	if dollars >= 5
		bills[:five] = dollars / 5
		dollars = dollars % 5
	end
	if dollars >= 1
		bills[:one] = dollars
	end
	bills
end