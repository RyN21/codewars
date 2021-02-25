require 'pry'


# MY SOLUTION
#=======================================================================================

def lcs(x, y)
  ss = []
  x.length < y.length ? s = x : s = y
  s.length.times do
    s.split("").find do |e|
      binding.pry
    end
  end
end

# CLEVER
#=======================================================================================



# ALTERNATIVE
#=======================================================================================



# ALTERNATIVE
#=======================================================================================



# ALTERNATIVE
#=======================================================================================



# PSUEDO CODE
#=======================================================================================

# take two strings and return the common subsequence
# initial thought is that we are going compare the 2 strings together
# split both strings into arrays to make it more easy to work with
# so I thinking that when we compare the two arrays, we just eliminate elements that do not match
# or take the ones that are matching
#
#
#   "abcdef" "abc"
#   => abc
#
#   "132535365" "123456789"
#   "1235365" "123456789"
#   123
#
#   x = [a,b,c,d,e,f]
#   y = [a,b,c]
#
#
#
#   x = [1,3,2,5,3,5,3,6,5]
#
#   x = [1,3,2,5,3,5,3,6,5]
#   y = [1,2,3,4,5,6,7,8,9]
#
#   [1,]
#   [1,2,3,5,6]
