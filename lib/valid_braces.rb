require 'pry'

# MY SOLUTION
#=======================================================================================

def validBraces(str)
  return true if str.empty?
  s = str.gsub(/\(\)|\[\]|\{\}/,"")
  binding.pry
  return false if s == str
  validBraces(s)
end


# BEST PRACTICE  &&  CLEVER
#=======================================================================================

def validBraces(braces)
  while braces.gsub!(/(\(\)|\[\]|\{\})/,'') do; end
  braces.empty?
end


# ALTERNATIVE
#=======================================================================================

def validBraces(braces)

  (braces.length / 2).times do |i|
    braces.sub!("{}", "")
    braces.sub!("[]", "")
    braces.sub!("()", "")
  end
  braces.empty?
end


# ALTERNATIVE
#=======================================================================================

def validBraces(braces)
  while braces.gsub!(/(\(\)|\[\]|\{\})/,'') do; end
  braces.empty? ? true : false
end


# ALTERNATIVE
#=======================================================================================

BRACES = { "(" => ")", "[" => "]", "{" => "}" }
def validBraces(braces)
  braces.each_char.each_with_object([]) { |char, stack|
    case char
    when *BRACES.keys
      stack.push(BRACES[char])
    when *BRACES.values
      return false unless stack.last == char
      stack.pop
    end
  }.empty?
end
