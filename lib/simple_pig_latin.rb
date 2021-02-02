require 'pry'

# MY SOLUTION
#=======================================================================================

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
    else
      w
    end
  end.join(" ")
end


# BEST PRACTICE
#=======================================================================================

def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end


# CLEVER
#=======================================================================================

def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end
