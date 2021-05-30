require 'pry'

# MY SOLUTION
#=======================================================================================

# SQUARE =======================================================================
class Square
  attr_reader :coordniate,
  :number,
  :possibilities

  def initialize(coordniate, number = 0)
    @coordniate = coordniate
    @number = number
    @possibilities = []
  end

  def empty?
    @number == 0
  end

  def update_number(num)
    @number = num
  end

  def reset_possibilities
    @possibilities = []
  end
end



# Board ========================================================================
class Board
  attr_reader :squares

  def initialize(puzzle)
    i = 1
    l = "A"
    @squares = {}
    puzzle.each do |e|
      e.each do |n|
        coord = "#{l}#{i}"
        @squares[coord] = Square.new(coord, n)
        i += 1
      end
      l = l.next
      i = 1
    end
  end

  def add_possibilities()
    check_column
    check_row
    filter_possibilities
    check_box
    filter_possibilities
  end

  def fill_in_square()
    squares.each do |s|
      if s[1].possibilities.count == 1
        s[1].update_number(s[1].possibilities.pop)
      end
    end
  end

  def check_row
    possibilities = [1,2,3,4,5,6,7,8,9]
    squares.each do |s|
      if s[1].number == 0
        lc = s[0].split("")[0]
        all = squares.find_all do |k,_|
          k.include?(lc)
        end
        all.each do |a|
          possibilities.delete(a[1].number) if a[1].number != 0
        end
        possibilities.each do |p|
          s[1].possibilities << p
        end
      end
      possibilities = [1,2,3,4,5,6,7,8,9]
    end
  end

  def check_column
    possibilities = [1,2,3,4,5,6,7,8,9]
    squares.each do |s|
      if s[1].number == 0
        ic = s[0].split("")[1]
        all = squares.find_all do |k,_|
          k.include?(ic)
        end
        all.each do |a|
          possibilities.delete(a[1].number) if a[1].number != 0
        end
        possibilities.each do |p|
          s[1].possibilities << p
        end
      end
      possibilities = [1,2,3,4,5,6,7,8,9]
    end
  end

  def filter_possibilities
    squares.each do |s|
      if s[1].number == 0
        s[1].possibilities.delete_if do |e|
          s[1].possibilities.count(e) == 1 && s[1].possibilities.count > 1
        end
        s[1].possibilities.uniq!
      end
    end
  end

  def check_box()
    box1 = [squares["A1"],
            squares["A2"],
            squares["A3"],
            squares["B1"],
            squares["B2"],
            squares["B3"],
            squares["C1"],
            squares["C2"],
            squares["C3"]]
    box2 = [squares["A4"],
            squares["A5"],
            squares["A6"],
            squares["B4"],
            squares["B5"],
            squares["B6"],
            squares["C4"],
            squares["C5"],
            squares["C6"]]
    box3 = [squares["A7"],
            squares["A8"],
            squares["A9"],
            squares["B7"],
            squares["B8"],
            squares["B9"],
            squares["C7"],
            squares["C8"],
            squares["C9"]]
    box4 = [squares["D1"],
            squares["D2"],
            squares["D3"],
            squares["E1"],
            squares["E2"],
            squares["E3"],
            squares["F1"],
            squares["F2"],
            squares["F3"]]
    box5 = [squares["D4"],
            squares["D5"],
            squares["D6"],
            squares["E4"],
            squares["E5"],
            squares["E6"],
            squares["F4"],
            squares["F5"],
            squares["F6"]]
    box6 = [squares["D7"],
            squares["D8"],
            squares["D9"],
            squares["E7"],
            squares["E8"],
            squares["E9"],
            squares["F7"],
            squares["F8"],
            squares["F9"]]
    box7 = [squares["G1"],
            squares["G2"],
            squares["G3"],
            squares["H1"],
            squares["H2"],
            squares["H3"],
            squares["I1"],
            squares["I2"],
            squares["I3"]]
    box8 = [squares["G4"],
            squares["G5"],
            squares["G6"],
            squares["H4"],
            squares["H5"],
            squares["H6"],
            squares["I4"],
            squares["I5"],
            squares["I6"]]
    box9 = [squares["G7"],
            squares["G8"],
            squares["G9"],
            squares["H7"],
            squares["H8"],
            squares["H9"],
            squares["I7"],
            squares["I8"],
            squares["I9"]]

    boxes = [box1,box2,box3,box4,box5,box6,box7,box8,box9]
    boxes.each do |b|
      possibilities = [1,2,3,4,5,6,7,8,9]
      b.each do |s|
        possibilities.delete(s.number) if s.number != 0
      end
      b.each do |s|
        if s.number == 0
          possibilities.each do |p|
            s.possibilities << p
          end
        end
      end
    end
  end

  def reset_all()
    squares.map do |s|
      s[1].reset_possibilities
    end
  end

  def solved?
    unsolved = []
    squares.each do |sv|
      unsolved << sv[1].number if sv[1].number == 0
    end
    unsolved.count == 0 ? true : false
  end
end


# Sudoku =======================================================================
def sudoku(puzzle)
  board = Board.new(puzzle)
  # while !board.solved? do
  until board.solved? do
    board.add_possibilities
    board.fill_in_square
    board.reset_all
    # board.squares.each { |s| s[1].reset_possibilities }
  end
  binding.pry
  board
end


# # BEST PRACTICE
# #=======================================================================================
#
#
# # CLEVER
# #=======================================================================================
#
#
# # ALTERNATIVE
# #=======================================================================================
#
#
# # PSUEDO CODE
# #=======================================================================================
#
# # This method will be to solve a 9x9 sudoku puzzle
# # it will take in an puzzle argument that is an array that consists of 9 arrays with 9 elements
# # 0's represents unknown squares
# # This could be a pattern recognition / grid type of problem
# #
# # we will have to divide the arrays somehow to so that we can get 3x3 squares
# #
# # backtracking algorithm or recursion possibly
# #
# # -steps to take:
# # create a way to check rows columns and 3x3 squares
# # check possibilities of unknown spaces. if space has only one possibility, the space becomes that number
# # if unknown square has more than one possibilities then space remains unknown and moves onto next space to check
# #
# # so each unknown square can contain an array of possibilities
# # and when the array has a count of one, the square will be set to that number
# #
# # create 9 boxes:
# # first three rows will be its own section
# # then next three
# # then last three
# #
# # then first 3 columns
# # then next three
# # then last three
# #
# # row1 row2 row3
# # col1 col2 col3
# #
# #
# #
# # def sudoku(puzzle)
# #   row1 = [puzzle[0], puzzle[1], puzzle[2]]
# #   row2 = [puzzle[3], puzzle[4], puzzle[5]]
# #   row3 = [puzzle[6], puzzle[7], puzzle[8]]
# #   col1 = []
# #   puzzle.each do |array|
# #     array
# #   end
# # end
#
# so we can go through each row. If an element is == to 0
# then we want to create an array of all the possibilities the square can be
# it will check the entire row and then check the comlums (or the same index in the other rows)
#
#
# Lets try to create a grid so that each square has is labeled
# create two classes
#   - board
#   - square
