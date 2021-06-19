require 'pry'

# MY SOLUTION
#=======================================================================================

class Calculator
  def evaluate(string)
    binding.pry
  end

  def convert_string(string)
  end

  
end

# BEST PRACTICE
#=======================================================================================


# CLEVER
#=======================================================================================


# ALTERNATIVE
#=======================================================================================


# ALTERNATIVE
#=======================================================================================


# ALTERNATIVE
#=======================================================================================


# ALTERNATIV
#=======================================================================================


# PSUEDO CODE
#=======================================================================================

# To start we are going to create a new calculator class
# we will add a method to evaluate the string
#
# the class it self does not need to have any iniializers... I do believe
#
# this calculator looks like it will only need to perform the basics:
#   - addition
#   - subtraction
#   - multiplications
#   - division
# order of operation is important, so multiplications and division are frist/has the highest priority
#   - from left-to-right
# then addition and subtraction from left-to-right
#
#
#
# since we are taking in a string, we will need to convert the string to integers and operators

# so once we have the string converted to what we need,
# we can look for all the "*" and "/" first from left-to-right and perform the calculation
# then we can find all the "+" and "-" and then perform those calculations last
