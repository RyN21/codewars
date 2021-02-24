require 'pry'

# MY SOLUTION
#=======================================================================================

def beeramid(bonus, price)
  level = 1
  beers = bonus/price
  while beers >= 0
    sq = level*level
    beers -= sq
    level += 1
  end
  level - 2
end


# BEST PRACTICE
#=======================================================================================



# CLEVER
#=======================================================================================



# ALTERNATIVE
#=======================================================================================



# ALTERNATIVE
#=======================================================================================



# PSUEDO CODE
#=======================================================================================

# create variables for number of beers bounus - price
# create varibale for level. Will incrament + 1
# square the level to find out how many beers it will take for that row
# compare beers to number needed
# if theres enough then incrament level + 1 and subtract from beers

# loop back to do the same thing but now the next level

# if / until beers are not enough then return level - 1
