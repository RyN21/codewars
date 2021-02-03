require 'pry'

def valid_braces(string)
  hash = {}
  a = string.chars.each do |brace|
    hash[brace] = [] if hash[braces].nil?
    hash[brace] << brace
  end

end
