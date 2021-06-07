require 'pry'

# MY SOLUTION
#=======================================================================================

def snail(input)

end


# CLEVER
#=======================================================================================


# ALTERNATIVE
#=======================================================================================


# ALTERNATIVE
#=======================================================================================


# ALTERNATIVE
#=======================================================================================


# PSUEDO CODE
#=======================================================================================

So we have a 2 dimensional array
that is working as a grid
based on the examples in the test, we can assume that it will always be squared
3 arrays of 3 elements or 4 arrays of 4 elements

the input will take the grid, or the 2d array
the output should be a single array
  = it will be in the order of a 'snail'
  - so count clockwise - returning the outside elements of the grid and spiraling into the middle
    until all the elements from the grid have been returned

I think we could basically force it to return what we want by brute force and a lot of CODE
But there should be a more clever way of working it out

we could label each square by 'a1' 'a2' 'a3' 'b1' 'b2' 'b3'... etc.
make a hash out of this ->
  {'a1' => 1, 'a2' => 2, 'a3' => 3, etc.}

Brute force could work still:
  each element will be shoveled into a the output array in order
    - entire first row will be taken first
    - then the last element of the remaining arrays
    - then the last array, but in reverse
    - then the first element in every array, but starting with the last array
    - then repeat the steps until all the arrays are empty

But another interesting way we coult approach this is if we could lable each grid with a number
  - starting with 1 and incramenting by 1 based on the direction of the spiral
  - we could then just assign each element to the number with a hash
  - then sort the hash based on the key order
  - then return the values in an array based on the order

  - the tricky part will be assigning each square a number in the order it should be in despite the size of the grid
  - 
