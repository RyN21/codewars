require 'pry'

# MY SOLUTION
#=======================================================================================

def cakes(recipe, available)
  count = []
  missing = recipe.map do |k,_|
    available.key?(k)
  end
  if !missing.include?(false)
    cake = recipe.merge(available) do |key, r, a|
      count << a / r
    end
  else
    return 0
  end
  count.min
end

# BEST PRACTICE
#=======================================================================================



# CLEVER
#=======================================================================================




# PSUEDO CODE
#=======================================================================================

# Iterate over the recipe to begin
# take the ingredient from the recipe amount and compare it to the available amount
# based on the comparison, determine how many cakes can be made
# then compare the rest of the ingredients and check for the same
# Based on all the comparisons, determine how many cakes can actually be made
# if an ingredient is missing then no cakes can be made
# take the smallest amount of cakes that can be made based on the ingredients amount
# to determine number of cakes that can actually be used
