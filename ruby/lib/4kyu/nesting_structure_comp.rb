require 'pry'

# MY SOLUTION
#=======================================================================================

class Array
  def same_structure_as(a)
    new_a = convert_array(a)
    new_s = convert_array(self)
    "#{self.to_s.delete(" ")} same as #{a.to_s.delete(" ")}" if new_a == new_s
    "#{self.to_s.delete(" ")} not same as #{a.to_s.delete(" ")}" if new_a != new_s
  end

  def convert_array(a)
    a.map do |e|
      if e.class == Array
        convert_array(e)
      else
        e = e * 0
      end
    end
    binding.pry
    new
  end
end


# BEST PRACTICE
#=======================================================================================



# CLEVER
#=======================================================================================



# PSUEDO CODE
#=======================================================================================

# for the self array = convert every element to something like 'x' for instance
# if an element is an array, then keep it an array and convert every element inside to the same 'x'. and so on
#
# for the argu array = do the same thing as above
#
# then compare the two arrays to see if they are the same.
#
# Looks like these arrays consist of integers. So maybe we can convert every element to something simple like 0
#
#
# as for the code:
#
# class Array
#   def same_structure_as(a)
#     self.convert_array
#     a.convert_array
#     self == a ? "#{self} same as #{a}" : "#{self} not same as #{a}"
#   end
#
#   def convert_array(a)
#
#   end
# end
