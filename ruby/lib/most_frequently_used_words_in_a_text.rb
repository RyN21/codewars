require 'pry'

# MY SOLUTION
#=======================================================================================

def top_3_words(text)
  binding.pry
end


# BEST PRACTICE
#=======================================================================================


# CLEVER
#=======================================================================================



# PSUEDO CODE
#=======================================================================================

Steps to go about this problem:
- Take in the text argument
- convert argument to an array
- create a hash that will contain each unique word as the key and the number
of times it occurs as the value
- return the top 3 in an array
  - or top 2, 1, or empty array if no words are in 'text'

def top_3_words(text)
  text_array = text to array
  new_hash  = Hash.new
  return_aray = []
  text_array.each do |t|
    throw t into new_hash and add a counter to it
    value += 1 if t already exists
  end
  3.times do
    return_aray << new_hash.key where new_hash.value is the max then delete this pair
  end
end
