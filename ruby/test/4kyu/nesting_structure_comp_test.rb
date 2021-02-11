gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/directions_reduction'

class DirectionsReductionTest < Minitest::Test
  def test_it
    assert_equal [1,[1,1]].same_structure_as([2,[2,2]]), "[1,[1,1]] same as [2,[2,2]]"
    assert_equal ![1,[1,1]].same_structure_as([[2,2],2]), "[1,[1,1]] not same as [[2,2],2]"
  end
end
