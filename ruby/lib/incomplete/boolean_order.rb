require 'pry'

# MY SOLUTION
#=======================================================================================

def solve(s, ops)
  s = s.split("").map do |x|
    if x == "t"
      x = true
    else
      x = false
    end
  end
  ops = ops.split("")
  os = []
  until s.size == 0
    os << s.shift
    os << ops.shift
    os = os.compact
  end
  ss = os.join(",").tr(",", " ")
  create_arrangements(os)
end

def create_arrangements(os)
  
  binding.pry

end

# BEST PRACTICE
#=======================================================================================


# CLEVER
#=======================================================================================


# ALTERNATIVE
#=======================================================================================


# ALTERNATIVE
#=======================================================================================


# ALTERNATIVE
#=======================================================================================


# ALTERNATIV
#=======================================================================================


# PSUEDO CODE
#=======================================================================================

# So to start with what xor is:
#   - examples
#     - t t  =  f
#     - t f  =  t
#     - f t  =  t
#     - f f  =  f
#
# the goal of this kata is to return the number of arrangements
# that the evaluate to true
#
# the arrangement part is go to be tricky.
# Arrangements will be based on the postions of the parantheses.
#
# an example is:
# "tft" - "^&"
#
# ((t ^ f) & t)
# (t ^ (f & t))
#
# these two arrangements both equal 2 so 2 is returned
#
# So im going to assume here with this example that:
# - parantheses will have to be around 2 booleans only.
# - in this case there is only 2 options.
#
# example 2:
# "ttftff" , "|&^&&"
#
# ((t | t) & (f ^ t) & (f & f))
# ((t | t) & ((f ^ t) & (f & f)))
# (((t | t) & (f ^ t)) & (f & f))
# (t | t & f ^ t & f & f)
# (t | t & f ^ t & f & f)
# (t | t & f ^ t & f & f)
#
# - there can be so many possible Arrangements
# - the answer for this is 16.
# - So there are AT LEAST 16 possible arrangements.
# - for creating the different arrangements
#   - I am thinking we could maybe just use the index
#     - solve two at a time in different orders

# As for some psuedo code:
#
# def solve(s, ops)
#   combine s and ops into one string, possible array
#     -start by shoveling first s into new string and convert boolean letter to word
#     -then first ops into the next string.
#     -as these are shoveled into the new string / array
#       - we delete them so we can shovel the next one in an easy fashion
#
#   next step is going to be creating arrangements
#     - I am thinking that whatever way I can cycle or loop to get these arrangements, I can simply store if its true
#     -
#
#   next would be solving for the end boolean
#     - This should be fairly straight forward, as it should solve for itself
#     -
#
#   finally, we will count all the equations that resulted as TRUE
#     - we can group all the equations / arrangements into an array
#     - then map over each arrangement to show the boolean resulte
#     - then once its mapped of, we can simply take the count of how many arrangements resulted in 'true'
#
# end
