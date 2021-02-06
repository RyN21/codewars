require 'pry'

def rgb(r, g, b)
  arr = [r, g, b]
  arr.map do |ele|
    ele < 0 ? ele = 0 : ele = ele
    ele > 255 ? ele = 255 : ele = ele
    ele.to_s(16).upcase.rjust(2, "0")
  end.join
end
