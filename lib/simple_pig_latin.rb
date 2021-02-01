require 'pry'

def pig_it(string)
  string.split(" ").map do |w|
    n = w.chars
    n << n.shift
    n << "ay"
    n.join
  end.join(" ")
end
