require "minitest/autorun"
require_relative "coin_changer.rb"


class TestCoinChanger <Minitest::Test
	
	def test_0_cents_returns_empty_hash
		assert_equal({}, coin_changer(0))
	end

	def test_1_cent_equals_1_penny
		assert_equal({:penny => 1}, coin_changer(1))
	end

	def test_two_cents_returns_two_pennys
		assert_equal({:penny => 2}, coin_changer(2))
	end

	def test_five_cents_returns_one_nickle
		assert_equal({:nickle => 1}, coin_changer(5))
	end

	def test_six_cents_returns_one_nickle_and_one_penny
		assert_equal({:nickle => 1, :penny => 1}, coin_changer(6))
	end

	def test_10_cents_returns_1_dime
		assert_equal({:dime => 1}, coin_changer(10))
	end

	def test_16_cents_returns_1_dime_1_nickle_1_penny
		assert_equal({:dime => 1, :nickle => 1, :penny => 1}, coin_changer(16))
	end

	def test_63_cents_returns_2_quarter_1_dime_3_penny
		assert_equal({:quarter => 2, :dime => 1, :penny => 3}, coin_changer(63))
	end

	def test_99_cents_returns_3_quarter_2_dime_4_penny
		assert_equal({:quarter => 3, :dime => 2, :penny => 4}, coin_changer(99))
	end
end

# class TestBillChanger <Minitest::Test
	
# 	def test_0_dollars_returns_empty_hash
# 		assert_equal({}, bill_changer(0))
# 	end

# 	def test_1_dollar_returns_1_dollar_bill
# 		assert_equal({:one => 1}, bill_changer(1))
# 	end

# 	def test_2_dollars_returns_2_1_dollar_bills
# 		assert_equal({:one => 2}, bill_changer(2))
# 	end

# 	def test_5_dollars_returns_5_dollar_bill
# 		assert_equal({:five => 1}, bill_changer(5))
# 	end

# 	def test_6_dollars_returns_1_5_dollar_bill_and_1_one_dollar_bill
# 		assert_equal({:five => 1}, bill_changer(5))
# 	end

# 	def test_10_dollars_returns_10_dollar_bill
# 		assert_equal({:ten => 1}, bill_changer(10))
# 	end

# 	def test_20_dollars_returns_20_dollar_bill
# 		assert_equal({:twenty => 1}, bill_changer(20))
# 	end

# 	def test_50_dollars_returns_50_dollar_bill
# 		assert_equal({:fifty => 1}, bill_changer(50))
# 	end

# 	def test_100_dollars_returns_100_dollar_bill
# 		assert_equal({:hundred => 1}, bill_changer(100))
# 	end

# 	def test_186_dollars_returns_1_of_every_bill
# 		assert_equal({:hundred => 1, :fifty => 1, :twenty => 1, :ten => 1, :five => 1, :one => 1}, bill_changer(186))
# 	end
# end

# class TestBillsandCentsChanger <Minitest::Test
	
# 	def test_0_returns_empty_hash
# 		assert_equal({}, money_changer(0))
# 	end

# 	def test_1_25_returns_1_dollar_1_quarter
# 		assert_equal({:one => 1, :quater => 1}, money_changer(1.25))
# 	end
# end