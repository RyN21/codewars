require 'pry'

# MY SOLUTION
#=======================================================================================

def justify(text, width)
  text_length = text.width
  index = 6
end

# def justify(text, width)
#   text_length = text.length
#   index = 6
#   new_text = text.chars.insert(index, "\n").join
#   lines = new_text.split(("\n"))
#   lines.map do |line|
#     if line.size < width
#       line.gsub(/ /, '  ').concat("\n")
#     elsif line.chars.length == 1 || line.chars.length == 2 && line.chars.include?(" ")
#       line.delete(' ')
#     end
#   end.join
# end

# def add_lines(text, width)
#
# end
#
# def space_lines(text, width)
#
# end

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

# string method ".ljust"
# takes in a string and width
# add a line break to the string at " " whitespaces only
# maybe convert string to an array
# then the 7th element add a new line... if its a whitespace
# if it is not... then back track to the begining of the array until a whitespace is found
# and then add a new line
# break each line into a possible array
# then iterate over each array and add whitespaces to them so the total length is equal the width
