gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/snail_sort'

class SnailSortTest < Minitest::Test
  def test_it
    input = [[1,2,3],[4,5,6],[7,8,9]]
    output = [1, 2, 3, 6, 9, 8, 7, 4, 5]
    assert_equal output, snail(input)
  end
end
