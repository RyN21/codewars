require 'pry'

# MY SOLUTION
#=======================================================================================

def justify(text, width)
  binding.pry
end

# BEST PRACTICE  &&  CLEVER
#=======================================================================================



# ALTERNATIVE
#=======================================================================================



# ALTERNATIVE
#=======================================================================================



# ALTERNATIVE
#=======================================================================================



# PSUEDO CODE  &&  INITIAL THOUGHTS
#=======================================================================================

string method ".ljust"
takes in a string and width
add a line break to the string at " " whitespaces only
maybe convert string to an array
then the 7th element add a new line... if its a whitespace
if it is not... then back track to the begining of the array until a whitespace is found
and then add a new line
break each line into a possible array
then iterate over each array and add whitespaces to them so the total length is equal the width
