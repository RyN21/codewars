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


# ALTERNATIVE
#=======================================================================================

def pig_it(text)
  text.split.map{|word| word =~ /\w/ ? "#{word[1..-1]}#{word[0]}ay" : word}.join(" ")
end

# ALTERNATIVE
# =======================================================================================

def pig_it(text)
  text.split(' ').map { |word| pig_word(word) }.join(' ')
end

def pig_word(word)
  word.match(/\W/) ? word : word.chars.rotate(1).join + "ay"
end

# ALTERNATIVE
# =======================================================================================

def pig_it(text)
  text.gsub(/(\w)(\w+)?/, '\2\1ay')
end
