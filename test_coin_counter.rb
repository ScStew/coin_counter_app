require "minitest/autorun"
require_relative "coin_counter.rb"
class Test_coin_counter < Minitest::Test

def test_1_and_1
	assert_equal(1,1)
end

def test_coinchanger_1_quarter
	assert_equal({quarter:1},coin_changer(25))
end

def test_coinchanger_2_coins
	assert_equal({quarter:1,dime:1},coin_changer(35))
end

def test_coinchanger_3_coins
	assert_equal({quarter:1,dime:1,penny:1},coin_changer(36))
end

def test_coinchanger_2_quarters
	assert_equal({quarters:2},coin_changer(50))
end

def test_coinchanger_93_cents
	assert_equal({quarters:3,dime:1,nickel:1,pennies:3},coin_changer(93))
end

end