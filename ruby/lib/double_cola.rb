require 'pry'

# MY SOLUTION
#=======================================================================================

def who_is_next(names, r)

  names.first
end

1
["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"]

2
["Leonard", "Penny", "Rajesh", "Howard", "Sheldon", "Sheldon"]

3
["Penny", "Rajesh", "Howard", "Sheldon", "Sheldon", "Leonard", "Leonard"]

4
["Rajesh", "Howard", "Sheldon", "Sheldon", "Leonard", "Leonard", "Penny", "Penny"]

5
["Howard", "Sheldon", "Sheldon", "Leonard", "Leonard", "Penny", "Penny", "Rajesh", "Rajesh"]

6
["Sheldon", "Sheldon", "Leonard", "Leonard", "Penny", "Penny", "Rajesh", "Rajesh", "Howard", "Howard"]

7
["Sheldon", "Leonard", "Leonard", "Penny", "Penny", "Rajesh", "Rajesh", "Howard", "Howard", "Sheldon", "Sheldon"]

8
["Leonard", "Leonard", "Penny", "Penny", "Rajesh", "Rajesh", "Howard", "Howard", "Sheldon", "Sheldon", "Sheldon", "Sheldon"]

9
["Leonard", "Penny", "Penny", "Rajesh", "Rajesh", "Howard", "Howard", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Leonard", "Leonard"]

11
["Penny", "Penny", "Rajesh", "Rajesh", "Howard", "Howard", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Leonard", "Leonard", "Leonard", "Leonard"]

12
["Penny", "Rajesh", "Rajesh", "Howard", "Howard", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Leonard", "Leonard", "Leonard", "Leonard", "Penny", "Penny"]

13
["Rajesh", "Rajesh", "Howard", "Howard", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Leonard", "Leonard", "Leonard", "Leonard", "Penny", "Penny", "Penny", "Penny"]

14
["Rajesh", "Howard", "Howard", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Leonard", "Leonard", "Leonard", "Leonard", "Penny", "Penny", "Penny", "Penny", "Rajesh", "Rajesh"]

15
["Howard", "Howard", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Leonard", "Leonard", "Leonard", "Leonard", "Penny", "Penny", "Penny", "Penny", "Rajesh", "Rajesh", "Rajesh", "Rajesh"]

16
["Howard", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Leonard", "Leonard", "Leonard", "Leonard", "Penny", "Penny", "Penny", "Penny", "Rajesh", "Rajesh", "Rajesh", "Rajesh", "Howard", "Howard"]

17
["Sheldon", "Sheldon", "Sheldon", "Sheldon", "Leonard", "Leonard", "Leonard", "Leonard", "Penny", "Penny", "Penny", "Penny", "Rajesh", "Rajesh", "Rajesh", "Rajesh", "Howard", "Howard", "Howard", "Howard"]

18
["Sheldon", "Sheldon", "Sheldon", "Leonard", "Leonard", "Leonard", "Leonard", "Penny", "Penny", "Penny", "Penny", "Rajesh", "Rajesh", "Rajesh", "Rajesh", "Howard", "Howard", "Howard", "Howard", "Sheldon", "Sheldon"]

19
["Sheldon", "Sheldon", "Leonard", "Leonard", "Leonard", "Leonard", "Penny", "Penny", "Penny", "Penny", "Rajesh", "Rajesh", "Rajesh", "Rajesh", "Howard", "Howard", "Howard", "Howard", "Sheldon", "Sheldon", "Sheldon", "Sheldon"]

20
["Sheldon", "Leonard", "Leonard", "Leonard", "Leonard", "Penny", "Penny", "Penny", "Penny", "Rajesh", "Rajesh", "Rajesh", "Rajesh", "Howard", "Howard", "Howard", "Howard", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Sheldon"]

21
["Leonard", "Leonard", "Leonard", "Leonard", "Penny", "Penny", "Penny", "Penny", "Rajesh", "Rajesh", "Rajesh", "Rajesh", "Howard", "Howard", "Howard", "Howard", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Sheldon"]

22
["Leonard", "Leonard", "Leonard", "Penny", "Penny", "Penny", "Penny", "Rajesh", "Rajesh", "Rajesh", "Rajesh", "Howard", "Howard", "Howard", "Howard", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Sheldon", "Leonard", "Leonard"]

# def who_is_next(names, r)
#   name = nil
#   r.times do
#     name = names[0]
#     names.push(names[0], names[0]).shift
#   end
#   name
# end

# BEST PRACTICE
#=======================================================================================



# CLEVER
#=======================================================================================



# ALTERNATIVE
#=======================================================================================



# ALTERNATIVE
#=======================================================================================



# PSEUDO CODE
#=======================================================================================

# n = number of Cola
# input data is a list of names and the numbered cola starting with 1 and is infanite
# first person in queue gets the next cola
# then person doubles and both go to the back of the line
# this process repeats infinately or until n is reached
#
# imput number
# define cola as 0
# loop until imput number == cola number
# incrament cola plus 1
#
# return
# end loop
