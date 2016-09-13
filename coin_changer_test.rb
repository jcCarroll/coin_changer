# Coin changer kata

# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

# eg. if you have 11 cents you should return {:dime => 1, :penny => 1}; if you have 31 cents you should return {:quarter => 1, :nickle => 1, :penny => 1}.

require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChanger <Minitest::Test
	def test_0_cents_returns_empty_hash
		assert_equal({}, coin_changer(0))
	end

	def test_1_cent_equals_1_penny
		cents = 1
		assert_equal({:penny => 1}, coin_changer(cents))
	end
end
