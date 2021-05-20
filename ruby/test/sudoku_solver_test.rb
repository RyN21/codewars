gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sudoku_solver'



class SudokuSolverTest < Minitest::Test
  def test_it
    puzzle = [
      # [5,3,0,0,7,0,0,0,0],
      # [6,0,0,1,9,5,0,0,0],
      [0,9,8,0,0,0,0,6,0],
      [8,0,0,0,6,0,0,0,3],
      [4,0,0,8,0,3,0,0,1],
      [7,0,0,0,2,0,0,0,6],
      [0,6,0,0,0,0,2,8,0],
      [0,0,0,4,1,9,0,0,5],
      [0,0,0,0,8,0,0,7,9]]

    solution = [
      [5,3,4,6,7,8,9,1,2],
      [6,7,2,1,9,5,3,4,8],
      [1,9,8,3,4,2,5,6,7],
      [8,5,9,7,6,1,4,2,3],
      [4,2,6,8,5,3,7,9,1],
      [7,1,3,9,2,4,8,5,6],
      [9,6,1,5,3,7,2,8,4],
      [2,8,7,4,1,9,6,3,5],
      [3,4,5,2,8,6,1,7,9]]


    puzzle2 = [
      [5,6,0,8,4,7,0,0,0],
      [3,0,9,0,0,0,6,0,0],
      [0,0,8,0,0,0,0,0,0],
      [0,1,0,0,8,0,0,4,0],
      [7,9,0,6,0,2,0,1,8],
      [0,5,0,0,3,0,0,9,0],
      [0,0,0,0,0,0,2,0,0],
      [0,0,6,0,0,0,8,0,7],
      [0,0,0,3,1,6,0,5,9]]

    solution2 = [
      [5,6,1,8,4,7,9,2,3],
      [3,7,9,5,2,1,6,8,4],
      [4,2,8,9,6,3,1,7,5],
      [6,1,3,7,8,9,5,4,2],
      [7,9,4,6,5,2,3,1,8],
      [8,5,2,1,3,4,7,9,6],
      [9,3,5,4,7,8,2,6,1],
      [1,4,6,2,9,5,8,3,7],
      [2,8,7,3,1,6,4,5,9]]


    puzzle3 = [
      [8,0,0,0,6,0,0,0,3],
      [4,0,0,8,0,3,0,0,1],
      [7,0,0,0,2,0,0,0,6],
      [0,6,0,0,0,0,2,8,0],
      [0,0,0,4,1,9,0,0,5],
      [0,0,0,0,8,0,0,7,9],
      [5,3,0,0,7,0,0,0,0],
      [6,0,0,1,9,5,0,0,0],
      [0,9,8,0,0,0,0,6,0]]

    solution3 = [
      [8,5,9,7,6,1,4,2,3],
      [4,2,6,8,5,3,7,9,1],
      [7,1,3,9,2,4,8,5,6],
      [9,6,1,5,3,7,2,8,4],
      [2,8,7,4,1,9,6,3,5],
      [3,4,5,2,8,6,1,7,9],
      [5,3,4,6,7,8,9,1,2],
      [6,7,2,1,9,5,3,4,8],
      [1,9,8,3,4,2,5,6,7]]

    assert_equal solution, sudoku(puzzle)
    assert_equal solution2, sudoku(puzzle2)
    assert_equal solution3, sudoku(puzzle3)
  end
end


# Write a function that will solve a 9x9 Sudoku puzzle.
# The function will take one argument consisting of the
# 2D puzzle array, with the value 0 representing an unknown square.

# The Sudokus tested against your function will be "easy"
# (i.e. determinable; there will be no need to assume and
# test possibilities on unknowns) and can be solved with a brute-force approach.

# For Sudoku rules, see the Wikipedia article.

# puzzle = [[5,3,0,0,7,0,0,0,0],
#           [6,0,0,1,9,5,0,0,0],
#           [0,9,8,0,0,0,0,6,0],
#           [8,0,0,0,6,0,0,0,3],
#           [4,0,0,8,0,3,0,0,1],
#           [7,0,0,0,2,0,0,0,6],
#           [0,6,0,0,0,0,2,8,0],
#           [0,0,0,4,1,9,0,0,5],
#           [0,0,0,0,8,0,0,7,9]]

# sudoku(puzzle)
# # Should return
#  [[5,3,4,6,7,8,9,1,2],
#   [6,7,2,1,9,5,3,4,8],
#   [1,9,8,3,4,2,5,6,7],
#   [8,5,9,7,6,1,4,2,3],
#   [4,2,6,8,5,3,7,9,1],
#   [7,1,3,9,2,4,8,5,6],
#   [9,6,1,5,3,7,2,8,4],
#   [2,8,7,4,1,9,6,3,5],
#   [3,4,5,2,8,6,1,7,9]]
