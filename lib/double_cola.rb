require 'pry'

# MY SOLUTION
#=======================================================================================

def who_is_next(names, r)
  r.times do
    names.push(names[0], names[0]).shift
  end
  names.last
end


# BEST PRACTICE
#=======================================================================================



# CLEVER
#=======================================================================================



# ALTERNATIVE
#=======================================================================================



# ALTERNATIVE
#=======================================================================================



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
