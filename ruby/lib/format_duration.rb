require 'pry'

# MY SOLUTION
#=======================================================================================

def format_duration(seconds)
  m, s = seconds.divmod(60)
  h, m = m.divmod(60)
  d, h = h.divmod(24)
  y, d = d.divmod(365)

  time = {yy: y, dd: d, hh: h, mm: m, ss: s}

  until time.first[1] > 0
    time.delete(time.first[0])
  end
  binding.pry
  # "#{yy} year, #{dd} day, #{hh} hour, #{mm} minute and #{ss} second"
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

# This kata, I will have to write a functions that takes in an amount of seconds
# and then converts it to a human friendly way to read it
#
# Example (5) will convert to "5 seconds"
# I am taking in an integer and returning a string
#
# -the first step will be converting the number of seconds to years:days:hours:minutes:seconds
# -then we can take the new conversion and interpolate it into a string
#   -may contain if statements
# -consider modulo
#
# other things to note
# -must be a non-negative integer
# -if 0 then return 'now'
# -will need to pluraize second, minute, etc. if > 1
#
# def format_duration(s)
#
# end
