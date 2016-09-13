# Coin changer kata

# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

# eg. if you have 11 cents you should return {:dime => 1, :penny => 1}; if you have 31 cents you should return {:quarter => 1, :nickle => 1, :penny => 1}.
cents = 1
def coin_changer(cents)
	coins = {}
	if cents == 5
		coins[:nickle] = cents / 5
	elsif 
		cents .between?(1,4)
		coins[:penny] = cents
	end
	coins
end