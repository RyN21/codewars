# def evaluate("4 + 5 / 3")
#   # 1. [4, +, 5, /, 3]
#   # 2. if ^ array has * or /
#   3. find the index of the 1st * or / and set the index to 'i'
#   4. then calculate 'i-1' 'i' 'i+1' and replace 'i-1' 'i' 'i+1' with the answer
#   5. repeat above until there are no * or / left
#   6. if ^ array has + or -
#   7. find the index of the 1st + or - and set the index to 'i'
#   8. then calculate 'i-1' 'i' 'i+1' and replace 'i-1' 'i' 'i+1' with the answer
#   9. repeat above until there are no + or - left
#   10. return last remaining number in the array array[0]
# end
require 'pry'

# MY SOLUTION
#=======================================================================================

class Calculator
  def evaluate(string)
    array = string.split(" ")
    while array.include?("*") || array.include?("/")
      m = nil
      d = nil
      m = array.find_index("*") if array.include?("*")
      d = array.find_index("/") if array.include?("/")
      if m == nil || d == nil
        i = m if d == nil
        i = d if m == nil
      else
        i = m if m < d && d != nil
        i = d if d < m && m != nil
      end
      calc = [array[i-1], array[i], array[i+1]]
      result = calc[0].to_f * calc[2].to_f if array[i] == '*'
      result = calc[0].to_f / calc[2].to_f if array[i] == '/'
      array[i] = result.to_s
      array.delete_at(i+1)
      array.delete_at(i-1)
    end
    while array.include?("+") || array.include?("-")
      a = nil
      s = nil
      a = array.find_index("+") if array.include?("+")
      s = array.find_index("-") if array.include?("-")
      if a == nil || s == nil
        i = a if s == nil
        i = s if a == nil
      else
        i = a if a < s && s != nil
        i = d if s < a && a != nil
      end
      calc = [array[i-1], array[i], array[i+1]]
      result = calc[0].to_f + calc[2].to_f if array[i] == '+'
      result = calc[0].to_f - calc[2].to_f if array[i] == '-'
      array[i] = result.to_s
      array.delete_at(i+1)
      array.delete_at(i-1)
    end
    array[0].to_f
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

# PSUEDO CODE
#
# def evaluate("4 + 5 / 3")
#   1. [4, +, 5, /, 3]
#   2. if ^ array has * or /
#     3. find the index of the 1st * or / and set the index to 'i'
#     4. then calculate 'i-1' 'i' 'i+1' and replace 'i-1' 'i' 'i+1' with the answer
#     5. repeat above until there are no * or / left
#   6. if ^ array has + or -
#     7. find the index of the 1st + or - and set the index to 'i'
#     8. then calculate 'i-1' 'i' 'i+1' and replace 'i-1' 'i' 'i+1' with the answer
#     9. repeat above until there are no + or - left
#   10. return last remaining number in the array array[0]
# end
#
# def calculation(array?)
#
# end
