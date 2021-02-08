gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/directions_reduction'

class DirectionsReductionTest < Minitest::Test
  def test_it
    a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
    assert_equal dirReduc(a), ["WEST"]

    u=["NORTH", "WEST", "SOUTH", "EAST"]
    assert_equal dirReduc(u), ["NORTH", "WEST", "SOUTH", "EAST"]
  end
end
