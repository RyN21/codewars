gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/tictactoe_checker'

class TicTacToeCheckerTest < Minitest::Test
  def test_it
    assert_equal -1, is_solved([[0,0,1],[0,1,2],[2,1,0]])
    assert_equal 2, is_solved([[0,0,1],[2,2,2],[2,1,0]])
    assert_equal 1, is_solved([[1,0,1],[0,1,2],[2,1,1]])
  end
end
