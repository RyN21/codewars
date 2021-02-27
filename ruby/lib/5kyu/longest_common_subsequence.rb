require 'pry'

DID NOT FINISH

# MY SOLUTION
#=======================================================================================

def lcs(x, y)
  binding.pry
  ss = []
  x.length < y.length ? s = x.split("") : s = y.split("")
  s.length == x.split("").length ? l = y.split("") : l = x.split("")
  s.each do |e|
    ss << e if l.include?(e)
    l.delete_at(l.find_index(e)) if l.include?(e)
  end
  ss.sort.join
end

# BEST PRACTICE  &&  CLEVER
#=======================================================================================

def subsequences(str)
  (1..str.length).map { |i| str.chars.combination(i).to_a.map(&:join) }.flatten(1)
end

def lcs(x, y)
  (subsequences(x) & subsequences(y)).max { |s| s.length } || ""
end


# ALTERNATIVE
#=======================================================================================

def lcs(x, y)
  return "" if x.empty? || y.empty?
  return x[0] + lcs(x[1..-1], y[1..-1]) if x[0] == y[0]

  return [lcs(x[1..-1], y), lcs(x, y[1..-1])].max_by(&:length)
end


# ALTERNATIVE
#=======================================================================================

def lcs(x, y)
  x, y = [x,y].sort.map(&:chars)
  x.size.downto(0) do | ec |
    x.combination(ec) { | xv | if y.combination(ec).include?(xv); return xv.join(''); end }
  end
end


# ALTERNATIVE
#=======================================================================================

def lcs(x, y)
  if x.empty? or y.empty?
    ''
  elsif x[-1] == y[-1]
    lcs(x[0...-1], y[0...-1]) + x[-1]
  else
    [lcs(x, y[0...-1]), lcs(x[0...-1], y)].max_by(&:length)
  end
end


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
