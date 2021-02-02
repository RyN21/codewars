require 'pry'

def pig_it(string)
  special = "?<>',?[]}{=-)(*&^%$#`~{}"
  string.split(" ").map do |w|
    if !special.include?(w)
      n = w.chars
      n << n.shift
      n << "ay"
      n.join
    elsif special.include?(w)
      w
    end
  end.join(" ")
end
