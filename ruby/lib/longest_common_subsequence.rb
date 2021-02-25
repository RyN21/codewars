require 'pry'


# MY SOLUTION
#=======================================================================================

def lcs(x, y)
  ss = []
  x.length < y.length ? s = x.split("") : s = y.split("")
  s == x ? l = y.split("") : l = x.split("")
  s.each do |e|
    binding.pry
    ss << e if l.include?(e)
    l.delete_at(l.find_index(e)) if l.include?(e)
  end
  ss.join
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
#
# so the new game plan is to choose the smaller of the strings
# then however long the string is, do that many times and find the first
# element in the other string if it exists and throw it in an array
# at the end join the array for the new string
