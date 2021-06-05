require 'pry'

# MY SOLUTION
#=======================================================================================

def prereq(prereqs)
  prereq_classes = {}
  prereqs.each do |p|
    prereq_classes[p[0]] = p[1]
  end.to_h
  binding.pry
  class_count = prereqs.flatten.uniq.map do |c|
    [c, prereqs.flatten.count(c)]
  end
  sae = class_count.find_all do |c|
    c[1] == 1
  end

  starting_class = sae.find do |c|
    prereq_classes[c[0]] != nil
  end

  sorted = [starting_class[0]]
  until prereq_classes[sorted.last] == nil
    sorted << prereq_classes[sorted.last]
  end

  half = sorted.count / 2 - 1 if sorted.count.even?
  half = sorted.count / 2 if sorted.count.odd?
  sorted[half]
end




# PSEUDO CODE
#=======================================================================================

# To sort the classes:
# we can start by shoveling the starting class name into sorted array
# then we can use the last element in the sorted array (the last class added / the first class)
# this would give us it's value which is the next class in the track
# We can then shovel that next class in the sorted array.
# we can then do this until the returned value from the last class added is nil
# we will first call on the starting class by putting it in as a key
