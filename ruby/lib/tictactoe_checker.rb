require 'pry'

# MY SOLUTION
#=======================================================================================

def is_solved(board)
  board.each do |r|
    if r.uniq.size == 1 && !r.include?(0)
      return r[0]
    end
  end
end


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
# one test will check if the board is even solved or not. If any array consists of the integer 0
# then the board is not solved and will return -1
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
# if no winner... then cat wins the game
