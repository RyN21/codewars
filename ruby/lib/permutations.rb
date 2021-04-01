require 'pry'

# MY SOLUTION
#=======================================================================================

def permutations(s)
  s.chars.permutation.map(&:join).uniq
end

# BEST PRACTICE
#=======================================================================================


# CLEVER
#=======================================================================================


# ALTERNATIVE
#=======================================================================================


# PSUEDO CODE
#=======================================================================================

# -The goal here is to take a string and come up with all the different
# possible combinations based on the letters provided in the string
# -once all the possible combinations are found, place them in an array
# -remove duplicates, if present
#
# -take string
# -convert string into an array with all the elements
-example: "abc"
["a", "b", "c"]
-each combination must consist of all the letters and be used
-the output should be:
['abc', 'acb', 'bac', 'bca', 'cab', 'cba']

-so taking this array...
["a", "b", "c"]
-we want to get something like this
["a", "c", "b"], ["a", "c", "b"], ["b", "a", "c"], ["b", "c", "a"], ["c", "a", "b"], ["c", "b", "a"]
-and join all the arrays of course

-to achieve this we can shift the elements around:

-take the count of the string
- 
