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

  def execute()
    until solved? do
      add_possibilities
      fill_in_square
      reset_all
    end
    convert_board
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

  def convert_board()
    solution = []
    nums = squares.map do |s|
      s[1].number
    end
    9.times do
      array = []
      9.times do
        array << nums.shift
      end
      solution << array
      array = []
    end
    solution
  end
end


# Sudoku =======================================================================
def sudoku(puzzle)
  board = Board.new(puzzle)
  board.execute
end


# BEST PRACTICE  &&  CLEVER
#=======================================================================================

def get_square(x, y, a)
  k = (y/3)*3
  m = (x/3)*3
  a[k..(k+2)].transpose[m..(m+2)].flatten(1)
end

def sudoku(p)
  i = 0
  while p.flatten(1) != p.flatten(2) || p.flatten.include?(0)
    p.each_with_index do |r, y|
      r.each_with_index do |d, x|
        if d == 0 || d.class == Array
          n = (1..9).to_a - r - p.transpose[x] - get_square(x, y, p.dup)
          p[y][x] = n.size == 1 ? n[0] : n
        end
      end
    end
  end
  p
end


# ALTERNATIVE
#=======================================================================================

def sudoku(puzzle)

    def filterGridSets(ans, grid, i, j, v)
        ans << [i,j,v]
        a,b = 3*(i/3).floor, 3*(j/3).floor
        for z in (0...9) do
            for x,y in [[i,z], [z,j], [a+z/3, b+z%3]] do
                grid[x][y].delete(v)
            end
        end
    end

    ans  = []
    grid = (0...9).map{|x| (0...9).map{|y| puzzle[x][y]!=0 ? [puzzle[x][y]].to_set : [1,2,3,4,5,6,7,8,9].to_set }}

    while ans.size != 81 do
        for x in (0...9) do
            for y in (0...9) do
                if grid[x][y].size == 1
                    v = grid[x][y].to_a[0]
                    grid[x][y].clear
                    filterGridSets(ans, grid, x, y, v)
                end
            end
        end
    end

    out = (0...9).map{|x| [0]*9 }
    ans.each{|x,y,v| out[x][y] = v }
    return out
end


# ALTERNATIVE
#=======================================================================================

require 'set'
Indices = 9.times

def neighbours(i, j)
  a = Indices.map do |x| [i, x] end
  b = Indices.map do |x| [x, j] end
  q = i / 3
  p = j / 3
  c = 3.times.map do |k|
      3.times.map do |l|
        [k + 3 * q, l + 3 * p]
      end
    end
    .flatten(1)
  a.concat(b).concat(c)
end

def sudoku(puzzle)
  possibilities = puzzle.map do |row|
    row.map do |cell|
      Set[1,2,3,4,5,6,7,8,9]
    end
  end
  queue = []
  Indices.map do |i|
    Indices.map do |j|
      next if puzzle[i][j] == 0
      queue.push [i,j]
      possibilities[i][j] = Set[]
    end
  end
  until queue.empty?
    cell = queue.pop
    i, j = cell[0], cell[1]

    neighbours(i, j).each do |neighbour|
      i_n, j_n = neighbour[0], neighbour[1]
      values_for_neighbour = possibilities[i_n][j_n]

      next unless values_for_neighbour.include? puzzle[i][j]

      values_for_neighbour.delete(puzzle[i][j])
      next unless values_for_neighbour.size == 1

      puzzle[i_n][j_n] = values_for_neighbour.to_a.first
      values_for_neighbour.clear
      queue.push [i_n, j_n]
    end
  end

  puzzle
end


# PSUEDO CODE
#=======================================================================================

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
