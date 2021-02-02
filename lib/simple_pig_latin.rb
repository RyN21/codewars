require 'pry'

def pig_it(string)
  special = "?<>',?[]}{=-)(*&^%$#`~{}"
  string.split(" ").map do |w|
    if w.index( /[^[:alnum:]]/ ) == nil
      a = w.chars
      a << a.shift
      a << "ay"
      a.join
    else
      binding.pry
      i = w.index( /[^[:alnum:]]/ )
      a = w.chars
      special = a[i]
      a.delete_at(i)
      a << a.shift
      a << "ay"
      a << special
      a.join
    end
  end.join(" ")
end
