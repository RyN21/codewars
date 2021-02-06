require 'pry'

# MY SOLUTION
#=======================================================================================

def rgb(*args)
  args.map do |e|
    e < 0 ? e = 0 : e = e
    e > 255 ? e = 255 : e = e
    e.to_s(16).upcase.rjust(2, "0")
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


# ALTERNATIVE
#=======================================================================================

def rgb(*args)
  "%02X%02X%02X" % args.map{|n| [[n,255].min, 0].max}
end
