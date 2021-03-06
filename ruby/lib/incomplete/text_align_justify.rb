require 'pry'

# MY SOLUTION
#=======================================================================================

def justify(text, width)
  text_length = text.length
  space_lines(add_lines(text, width), width)
end

def add_lines(text, width)
  index = width - 1
  text_array = text.chars
  if text_array[index] == " "
    text_array[index] = "\n"
  elsif text_array[index] != " "
    until text_array[index] == " "
      index -= 1
    end
    text_array[index] = "\n"
  end
  text_array.join
end

def space_lines(text, width)
  text.split("\n").map do |l|
    if correct_length?(l, width)
      l
    else
      add_spaces(l, width)
    end
  end.join("\n")
end

def add_spaces(text, width)
  total_words = text.split(" ").count
  total_spots = text.split("").count
  total_spaces = total_words - 1
  spaces_needed = width - total_spots
  split_spaces = spaces_needed.to_f / total_spaces
  space = " "
  spaces_needed.times do
    
    binding.pry

  end
  # until text.length >= width && i < total_words
  #   text.split(" ")[i].concat(" ")
  #   i += 1
  # end
end

def correct_length?(text, width)
  text.chars.last == " " || text.chars.length == width
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
