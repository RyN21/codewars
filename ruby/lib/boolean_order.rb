require 'pry'

# MY SOLUTION
#=======================================================================================

def solve(s, ops)

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

So to start with what xor is:
  - examples
    - t t  =  f
    - t f  =  t
    - f t  =  t
    - f f  =  f

the goal of this kata is to return the number of arrangements
that the evaluate to true

the arrangement part is go to be tricky.
Arrangements will be based on the postions of the parantheses.

an example is:
"tft" - "^&"

((t ^ f) & t)
(t ^ (f & t))

these two arrangements both equal 2 so 2 is returned

So im going to assume here with this example that:
- parantheses will have to be around 2 booleans only.
- in this case there is only 2 options.

example 2:
"ttftff" , "|&^&&"

((t | t) & (f ^ t) & (f & f))
((t | t) & ((f ^ t) & (f & f)))
(((t | t) & (f ^ t)) & (f & f))
(t | t & f ^ t & f & f)
(t | t & f ^ t & f & f)
(t | t & f ^ t & f & f)

- there can be so many possible Arrangements
- the answer for this is 16.
- So there are AT LEAST 16 possible arrangements.
