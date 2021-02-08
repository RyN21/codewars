require 'pry'

def dirReduc(dir)
  i = 0
  until i > dir.length
    if dir[i] == "NORTH" && dir[i + 1] == "SOUTH"
      dir.delete_at(i + 1)
      dir.delete_at(i)
      i = 0
    elsif dir[i] == "SOUTH" && dir[i + 1] == "NORTH"
      dir.delete_at(i + 1)
      dir.delete_at(i)
      i = 0
    elsif dir[i] == "WEST" && dir[i + 1] == "EAST"
      dir.delete_at(i + 1)
      dir.delete_at(i)
      i = 0
    elsif dir[i] == "EAST" && dir[i + 1] == "WEST"
      dir.delete_at(i + 1)
      dir.delete_at(i)
      i = 0
    else
      i += 1
    end
  end
  dir
end


# start with i = 0
# 1 index of 0 and index of 1 and compare the two.
# 2 delete both if 0 is north or south and 1 is north or south
# 3 delete both if 0 is north or east and 1 is north or west and reset i = 0
# 4 if they arent == incrament index to look at the next
# repeat steps 1-4
#
# we will want to set a limit. repeat process as long as i < dir.length
#
# then return the dir array
#
# if i == "NORTH" and i + 1 == "SOUTH" ||
# if i == "SOUTH" and i + 1 == "NORTH" ||
# if i == "WEST" and i + 1 == "EAST"
# if i == "EAST" and i + 1 == "NORTH"
# delete index i and i + 1
#
# i = 0
# ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
#
# i = 0
# ["SOUTH", "EAST", "WEST", "NORTH", "WEST"]
#
# i = 1
# ["SOUTH", "EAST", "WEST", "NORTH", "WEST"]
#
# i = 1
# ["SOUTH", "NORTH", "WEST"]
#
# i = 1
# ["SOUTH", "NORTH", "S"]
#
#
#
#
# ["WEST", "SOUTH", "NORTH", "NORTH", "WEST"]
