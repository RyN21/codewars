require 'pry'

# MY SOLUTION
#=======================================================================================

def top_3_words(text)
  top_3 = []
  hash = Hash.new(0)
  text.downcase.split(" ").each do |e|
    if e[0].count("a-z") == 0 && e.count("a-z") > 0
      until e.chars.first.count("a-z") > 0
        e = e[1..-1]
      end
    end
    hash[e] += 1
  end
  if hash.count >= 3
    3.times do
      top_3 << hash.key(hash.values.max) if hash.key(hash.values.max).count("a-z") > 0
      hash.delete(hash.key(hash.values.max))
    end
  elsif hash.count < 3 && !hash.empty?
    hash.count.times do
      top_3 << hash.key(hash.values.max) if hash.key(hash.values.max).count("a-z") > 0
      hash.delete(hash.key(hash.values.max))
    end
  else
    top_3
  end
  top_3
end


# BEST PRACTICE  &&  CLEVER
#=======================================================================================

def top_3_words(text)
  text.scan(/[A-Za-z']+/)
      .select { |x| /[A-Za-z]+/ =~ x }
      .group_by { |x| x.downcase }
      .sort_by { |k,v| -v.count }
      .first(3)
      .map(&:first)
end


# ALTERNATIVE
#=======================================================================================

def top_3_words(text)
  text.downcase.scan(/\w+[\w']*/)
               .inject(Hash.new(0)){|h,w|h[w]+=1;h}
               .sort_by{|k,v|-v}
               .take(3)
               .map(&:first)
end


# ALTERNATIVE
#=======================================================================================

def top_3_words text
  arr = text.downcase.scan(/\w(?:'|\w)*/)
  arr.uniq.max_by(3){|w| arr.count w }
end

# PSUEDO CODE
#=======================================================================================

# Steps to go about this problem:
# - Take in the text argument
# - convert argument to an array
# - create a hash that will contain each unique word as the key and the number
# of times it occurs as the value
# - return the top 3 in an array
#   - or top 2, 1, or empty array if no words are in 'text'
#
# def top_3_words(text)
#   text_array = text to array
#   new_hash  = Hash.new
#   return_aray = []
#   text_array.each do |t|
#     throw t into new_hash and add a counter to it
#     value += 1 if t already exists
#   end
#   3.times do
#     return_aray << new_hash.key where new_hash.value is the max then delete this pair
#   end
# end
