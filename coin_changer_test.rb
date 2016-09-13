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

	def test_two_cents_returns_two_pennys
		cents = 2
		assert_equal({:penny => 2}, coin_changer(cents))
	end

	def test_five_cents_returns_one_nickle
		cents = 5
		assert_equal({:nickle => 1}, coin_changer(cents))
	end

	def test_five_cents_returns_one_nickle
		cents = 6
		assert_equal({:nickle => 1, :penny => 1}, coin_changer(cents))
	end

	def test_10_cents_returns_1_dime
		cents = 10
		assert_equal({:dime => 1}, coin_changer(cents))
	end

	def test_16_cents_returns_1_dime_1_nickle_1_penny
		cents = 16
		assert_equal({:dime => 1, :nickle => 1, :penny => 1}, coin_changer(cents))
	end

	def test_63_cents_returns_2_quarter_1_dime_3_penny
		cents = 63
		assert_equal({:quarter => 2, :dime => 1, :penny => 3}, coin_changer(cents))
	end

	def test_99_cents_returns_3_quarter_2_dime_4_penny
		cents = 99
		assert_equal({:quarter => 3, :dime => 2, :penny => 4}, coin_changer(cents))
	end
end