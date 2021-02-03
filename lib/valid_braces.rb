require 'pry'

# MY SOLUTION
#=======================================================================================

def validBraces(str)
  return true if str.empty?
  s = str.gsub(/\(\)|\[\]|\{\}/,"")
  binding.pry
  return false if s == str
  validBraces(s)
end
