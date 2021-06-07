gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/snail_sort'

class SnailSortTest < Minitest::Test
  def test_it
    input1 = [[1,2,3],[4,5,6],[7,8,9]]
    output1 = [1, 2, 3, 6, 9, 8, 7, 4, 5]
    assert_equal output1, snail(input1)

    input2 = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]
    output2 = [1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10]
    assert_equal output2, snail(input2)
  end
end
