require 'pry'
require 'matrix'

# MY SOLUTION
#=======================================================================================

def sudoku(puzzle)
  b = Matrix[
    puzzle[0],
    puzzle[1],
    puzzle[2],
    puzzle[3],
    puzzle[4],
    puzzle[5],
    puzzle[6],
    puzzle[7],
    puzzle[8],]
  row1 = puzzle[0]
  row2 = puzzle[1]
  row3 = puzzle[2]
  row4 = puzzle[3]
  row5 = puzzle[4]
  row6 = puzzle[5]
  row7 = puzzle[6]
  row8 = puzzle[7]
  row9 = puzzle[8]
  column1 = puzzle.collect { |s| s[0] }
  column2 = puzzle.collect { |s| s[1] }
  column3 = puzzle.collect { |s| s[2] }
  column4 = puzzle.collect { |s| s[3] }
  column5 = puzzle.collect { |s| s[4] }
  column6 = puzzle.collect { |s| s[5] }
  column7 = puzzle.collect { |s| s[6] }
  column8 = puzzle.collect { |s| s[7] }
  column9 = puzzle.collect { |s| s[8] }
  box1 = [
    puzzle[0][0..2],
    puzzle[1][0..2],
    puzzle[2][0..2]]
  box2 = [
    puzzle[0][3..5],
    puzzle[1][3..5],
    puzzle[2][3..5]]
  box3 = [
    puzzle[0][6..8],
    puzzle[1][6..8],
    puzzle[2][6..8]]
  box4 = [
    puzzle[3][0..2],
    puzzle[4][0..2],
    puzzle[5][0..2]]
  box5 = [
    puzzle[3][3..5],
    puzzle[4][3..5],
    puzzle[5][3..5]]
  box6 = [
    puzzle[3][6..8],
    puzzle[4][6..8],
    puzzle[5][6..8]]
  box7 = [
    puzzle[6][0..2],
    puzzle[7][0..2],
    puzzle[8][0..2]]
  box8 = [
    puzzle[6][3..5],
    puzzle[7][3..5],
    puzzle[8][3..5]]
  box9 = [
    puzzle[6][6..8],
    puzzle[7][6..8],
    puzzle[8][6..8]]
  binding.pry
end

# BEST PRACTICE
#=======================================================================================


# CLEVER
#=======================================================================================


# ALTERNATIVE
#=======================================================================================


# PSUEDO CODE
#=======================================================================================

# This method will be to solve a 9x9 sudoku puzzle
# it will take in an puzzle argument that is an array that consists of 9 arrays with 9 elements
# 0's represents unknown squares
# This could be a pattern recognition / grid type of problem
#
# we will have to divide the arrays somehow to so that we can get 3x3 squares
#
# backtracking algorithm or recursion possibly
#
# -steps to take:
# create a way to check rows columns and 3x3 squares
# check possibilities of unknown spaces. if space has only one possibility, the space becomes that number
# if unknown square has more than one possibilities then space remains unknown and moves onto next space to check
#
# so each unknown square can contain an array of possibilities
# and when the array has a count of one, the square will be set to that number
#
# create 9 boxes:
# first three rows will be its own section
# then next three
# then last three
#
# then first 3 columns
# then next three
# then last three
#
# row1 row2 row3
# col1 col2 col3
#
#
#
# def sudoku(puzzle)
#   row1 = [puzzle[0], puzzle[1], puzzle[2]]
#   row2 = [puzzle[3], puzzle[4], puzzle[5]]
#   row3 = [puzzle[6], puzzle[7], puzzle[8]]
#   col1 = []
#   puzzle.each do |array|
#     array
#   end
# end
