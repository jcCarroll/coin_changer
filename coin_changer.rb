# Coin changer kata

# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

# eg. if you have 11 cents you should return {:dime => 1, :penny => 1}; if you have 31 cents you should return {:quarter => 1, :nickle => 1, :penny => 1}.


def coin_changer(cents)
	coins = {}
	sorter = {:quarter => 25, :dime => 10, :nickle => 5, :penny => 1}
		sorter.each do |key, value|
			if cents >= value
				coins[key] = cents / value
			end
			cents = cents % value
		end
	coins
end

def bill_changer(dollars)
	bills = {}
	changer = {:hundred => 100, :fifty => 50, :twenty => 20, :ten => 10, :five => 5, :one => 1}
		changer.each do |key, value|
			if dollars >= value
				bills[key] = dollars / value
			end
			dollars = dollars % value
		end
	bills
end

def money_changer(cash)
	monies = {}
	cash.to_s.split(".").each do |value|
		
	end
end