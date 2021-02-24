gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/beeramid'

class BeeramidTest < Minitest::Test
  def test_it
    assert_equal 1, beeramid(9, 2)
    assert_equal 3, beeramid(21, 1.5)
    assert_equal 3, beeramid(21, 1.5)
  end
end
