require 'pry'

# MY SOLUTION
#=======================================================================================

def rgb(r, g, b)
  arr = [r, g, b]
  arr.map do |ele|
    ele < 0 ? ele = 0 : ele = ele
    ele > 255 ? ele = 255 : ele = ele
    ele.to_s(16).upcase.rjust(2, "0")
  end.join
end


# BEST PRACTICE  &&  CLEVER
#=======================================================================================

def rgb(r, g, b)
  "%.2X%.2X%.2X" % [r,g,b].map{|i| [[i,255].min,0].max}
end



# ALTERNATIVE
#=======================================================================================

class Numeric
  def clamp r
    [r.begin, r.end, self].sort[1]
  end
end

def rgb(*c)
  "%02X%02X%02X" % c.map { |x| x.clamp(0..255).to_i }
end
