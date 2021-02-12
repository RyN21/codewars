require 'pry'

# MY SOLUTION
#=======================================================================================

class Array
  def same_structure_as(a)
    self.convert_array
    a.convert_array
    self == a ? "#{self} same as #{a}" : "#{self} not same as #{a}"
  end

  def convert_array

  end
end


# BEST PRACTICE
#=======================================================================================



# CLEVER
#=======================================================================================



# PSUEDO CODE
#=======================================================================================

for the self array = convert every element to something like 'x' for instance
if an element is an array, then keep it an array and convert every element inside to the same 'x'. and so on

for the argu array = do the same thing as above

then compare the two arrays to see if they are the same.

Looks like these arrays consist of integers. So maybe we can convert every element to something simple like 0


as for the code:

class Array
  def same_structure_as(a)
    self.convert_array
    a.convert_array
    self == a ? "#{self} same as #{a}" : "#{self} not same as #{a}"
  end

  def convert_array(a)

  end
end
