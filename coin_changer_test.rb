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
