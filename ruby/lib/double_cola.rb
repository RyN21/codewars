require 'pry'

# MY SOLUTION
#=======================================================================================

# def who_is_next(names, r)
#   GAVE UP :()
# end


# BEST PRACTICE  &&  CLEVER
#=======================================================================================

def whoIsNext(names, r)
  binding.pry
  r -= 1
  while r >= names.size
    r -= names.size
    r /= 2
  end
  names[r]
end


# ALTERNATIVE
#=======================================================================================

# def whoIsNext(names, r)
#  r-=1
#  r = (r-names.size)/2 while r >= names.size
#  names[r]
# end
#
#
# # ALTERNATIVE
# #=======================================================================================
#
# def whoIsNext(names, can)
#   duplications = 2 ** Math.log(can.fdiv(names.count).ceil, 2).truncate
#   start_of_block = names.count * (duplications - 1)
#   position_within_block = can - start_of_block
#   index = position_within_block.fdiv(duplications).ceil
#   names[index - 1]
# end
#
#
# # ALTERNATIVE
# #=======================================================================================
#
# def whoIsNext(names, r)
#  r-=1
#  r = (r-names.size)/2 while r >= names.size
#  names[r]
# end


# PSEUDO CODE
#=======================================================================================

# n = number of Cola
# input data is a list of names and the numbered cola starting with 1 and is infanite
# first person in queue gets the next cola
# then person doubles and both go to the back of the line
# this process repeats infinately or until n is reached
#
# imput number
# define cola as 0
# loop until imput number == cola number
# incrament cola plus 1
#
# return
# end loop
