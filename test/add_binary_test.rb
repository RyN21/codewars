gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/add_binary'

class AddBinaryTest < Minitest::Test
  def test_it_adds_binary
    assert_equal add_binary(1,1), "10"
    assert_equal add_binary(0,1), "1"
    assert_equal add_binary(1,0), "1"
    assert_equal add_binary(2,2), "100"
    assert_equal add_binary(51,12), "111111"
  end
end

# Implement a function that adds two numbers together and returns their sum in binary.
# The conversion can be done before, or after the addition.
# The binary number returned should be a string.
