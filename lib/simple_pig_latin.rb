require 'pry'

def pig_it(string)
  string.split(" ").map do |w|
    if w.index( /[^[:alnum:]]/ ) == nil
      a = w.chars
      a << a.shift
      a << "ay"
      a.join
    elsif w.index( /[^[:alnum:]]/ ) != nil && w.length > 1
      i = w.index( /[^[:alnum:]]/ )
      a = w.chars
      special = a[i]
      a.delete_at(i)
      a << a.shift
      a << "ay"
      a << special
      a.join
    elsif w.index( /[^[:alnum:]]/ ) != nil && w.length == 1
      w
    end
  end.join(" ")
end
