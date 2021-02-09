gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/double_cola'

class DoubleColaTest < Minitest::Test
  def test_it
    assert_equal who_is_next(names, 1), "Sheldon"
    assert_equal who_is_next(names, 52), "Penny"
    assert_equal who_is_next(names, 7230702951), "Leonard"
  end
end
