gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/boolean_order'

class SnailSortTest < Minitest::Test
  def test_it
    assert_equal 2, solve("tft","^&")
    assert_equal 16, solve("ttftff","|&^&&")
    assert_equal 339, solve("ttftfftf","|&^&&||")
    assert_equal 851, solve("ttftfftft","|&^&&||^")
    assert_equal 2434, solve("ttftfftftf","|&^&&||^&")
  end
end
