gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/greed_is_good'

class GreedIsGoodTest < Minitest::Test
  def test_it_should_value_this_as_worthless
    assert_equal score( [2, 3, 4, 6, 2] ) == 0,   "Should be 0 :-(" )
  end

  def test_it_should_value_this_triplet_correctly
    assert_equal score( [2, 2, 2, 3, 3] ) == 200, "Should be 200" )
  end

  def test_it_should_value_this_mixed_set_correctly
    assert_equal score( [2, 4, 4, 5, 4] ) == 450, "Should be 450" )
  end
end
