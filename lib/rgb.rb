require 'pry'

def rgb(r, g, b)
  
  newr = r.to_s(16).upcase.rjust(2, "0")
  newg = g.to_s(16).upcase.rjust(2, "0")
  newb = b.to_s(16).upcase.rjust(2, "0")
  newr + newg + newb
end
