gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/number_add'

class NumberAddTest < Minitest::Test
  def test_it
    assert_equal  15, num_add(5)
    assert_equal  10, num_add(4)
    assert_equal  5050, num_add(100)
  end
end
