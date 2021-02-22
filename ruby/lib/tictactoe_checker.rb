require 'pry'

# MY SOLUTION
#=======================================================================================

def is_solved(board)
  if solved_horizontally?(board) != false
    solved_horizontally?(board)
  elsif solved_vertically?(board) != false
    solved_vertically?(board)
  elsif solved_diagonally?(board) != false
    solved_diagonally?(board)
  else
    cat?(board)
  end
end

def solved_horizontally?(board)
  board.each do |r|
    if r.uniq.size == 1 && !r.include?(0)
      return r[0]
    end
  end
  false
end

def solved_vertically?(board)
  i = 0
  indexes = []
  3.times do
    board.each do |r|
      indexes << r[i]
    end
    if indexes.uniq.size == 1 && !indexes.include?(0)
      return indexes[0]
    else
      i += 1
      indexes = []
    end
  end
  false
end

def solved_diagonally?(board)
  x = board[1][1]
  if board[0][0] == x && board[2][2] == x
    return x
  elsif board [0][2] == x && board [2][0] == x
    return x
  end
  false
end

def cat?(board)
  board.map do |r|
    return 0 if !r.include?(0)
  end
  -1
end

# [0,0,1]
# [0,1,2]
# [2,1,0]

# BEST PRACTICE
#=======================================================================================



# CLEVER
#=======================================================================================



# ALTERNATIVE
#=======================================================================================



# ALTERNATIVE
#=======================================================================================




# PSUEDO CODE
#=======================================================================================

# argument takes in an array or 3 arrays that represent a board
#
# array 1 is top row
# array 2 is middle row
# array 3 is lasr row
#
# each array will consist of 3 possible elements
# 0 = empty
# 1 = "X"
# 2 = "O"
#
# we will want to compare many different possibilities
#
#
# if the board is solved it should now check to see if there is a winner or if its a cats game
#
# one test will check each array. If any of the arrays contains 3 "X"s or 3 "O"s, then it is solved and the winner
# is whichever the array consisted off, so it will return the integer attached to that string
#
# one test will check all the arrays and compare index spots. If all the arrays of the same index match with
# "X" or "O", then there is a winner and its whichever the indexed consisted off.
#
# So the test above check for linear wins: up and down and sideways
# the next tests will need to check diagonals
#
# First test will check if the middle row middle index is the same as either:
# first row first index and last row last index OR
# first row last index and last row first index
#
# one test will check if the board is even solved or not. If any array consists of the integer 0
# then the board is not solved and will return -1
#
# if no winner... then cat wins the game
