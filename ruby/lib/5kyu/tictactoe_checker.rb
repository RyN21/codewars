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
  elsif cat?(board) != false
    cat?(board)
  elsif unsolved?(board) != false
    unsolved?(board)
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
  x = board[1][1] if board[1][1] != 0
  if board[0][0] == x && board[2][2] == x
    return x
  elsif board [0][2] == x && board [2][0] == x
    return x
  end
  false
end

def cat?(board)
  a = board.map do |r|
    r.include?(0)
  end
  return 0 if !a.include?(true)
  false
end

def unsolved?(board)
  a = board.map do |r|
    r.include?(0)
  end
  return -1 if a.include?(true)
  false
end


# BEST PRACTICE
#=======================================================================================

def is_solved(board)
  [board,board.transpose].each {|x| x.each {|r| return r[0] if r.uniq.size == 1 and r[0] != 0}}
  [board, board.reverse].any? {|x| return x[0][0] if x.map.with_index {|e,i| e[i]}.uniq.size == 1 and x[0][0] != 0 }
  board.any? {|r| r.any?(&:zero?)} ? -1 : 0
end


# CLEVER
#=======================================================================================

def is_solved(board)
  case board.join
  when /1..(1|.1.)..1|1.1.1..$|111(...)*$/ then 1
  when /2..(2|.2.)..2|2.2.2..$|222(...)*$/ then 2
  when /0/ then -1
  else 0
  end
end


# ALTERNATIVE
#=======================================================================================

def reduceCells cells
  (cells.include? 0) ? 0 : cells.reduce(:+)
end

def is_solved(board)
  redc = []
  redc[0] = reduceCells(board[0])
  redc[1] = reduceCells(board[1])
  redc[2] = reduceCells(board[2])
  redc[3] = reduceCells(board.transpose[0])
  redc[4] = reduceCells(board.transpose[1])
  redc[5] = reduceCells(board.transpose[2])
  redc[6] = reduceCells([board[0][0], board[1][1], board[2][2]])
  redc[7] = reduceCells([board[0][2], board[1][1], board[2][0]])

  if redc.include? 3
    return 1
  elsif redc.include? 6
    return 2
  elsif redc.include? 0
    return -1
  end

  return 0
end


# ALTERNATIVE
#=======================================================================================

def is_solved(board)

    s = (0..2).map{ |x| board[x] }
              .to_set.merge( (0..2).map{|y| (0..2).map{|x| board[x][y] }} )
                     .merge([(0..2).map{|x| board[x][x]   },
                             (0..2).map{|x| board[2-x][x] }])

    return (s.include?([1,1,1])       ?  1
          : s.include?([2,2,2])       ?  2
          : board.flatten.include?(0) ? -1 : 0)
end


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
