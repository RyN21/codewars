require 'pry'

# MY SOLUTION
#=======================================================================================

def format_duration(seconds)
  m, s = seconds.divmod(60)
  h, m = m.divmod(60)
  d, h = h.divmod(24)
  y, d = d.divmod(365)

  time = [[year, y], [day, d], [hour, h], [minute, m], [second, s]]

  time.delete_if { |k,v| v == 0 }

  string = ""
  time.each do |k,v|
    if v > 1
      key = k.to_s + 's'
    else
      key = k.to_s
    end

    if time
    string.concat(v.to_s, 32, key)
    binding.pry
  end
  string
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
