require 'pry'

# MY SOLUTION
#=======================================================================================

def beeramid(bonus, price)
  return 0 if bonus <= 0
  level = 1
  beers = bonus/price
  while beers >= 0
    sq = level*level
    beers -= sq
    level += 1
  end
  level - 2
end


# CLEVER
#=======================================================================================

def beeramid(bonus, price)
  #(1..) in fresh ruby's versions
  (1..Float::INFINITY).lazy.map{|🍺| 🍺*🍺}.take_while{|🍺| (bonus -= 🍺*price) >= 0}.count
end


# ALTERNATIVE
#=======================================================================================

def beeramid(bonus, price, level = 1)
  return level - 1 if level ** 2 * price > bonus
  beeramid(bonus - level ** 2 * price, price, level + 1)
end


# ALTERNATIVE
#=======================================================================================

def beeramid(bonus, price)
  cans = bonus / price
  level = 0
  while cans > 0 do
    cans -= (level + 1) ** 2
    level += 1 if cans >= 0
  end
  level
end


# ALTERNATIVE
#=======================================================================================

def beeramid(bonus, price)
  return 0 if bonus < 0
  i = 1
  while bonus > 0
    bonus -= price * (i**2)
    i += 1
  end
  return bonus < 0 ? i-2 : i-1
end






# PSUEDO CODE
#=======================================================================================

# create variables for number of beers bounus - price
# create varibale for level. Will incrament + 1
# square the level to find out how many beers it will take for that row
# compare beers to number needed
# if theres enough then incrament level + 1 and subtract from beers

# loop back to do the same thing but now the next level

# if / until beers are not enough then return level - 1
