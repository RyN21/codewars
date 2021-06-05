require 'pry'

# MY SOLUTION
#=======================================================================================

def prereq(prereqs)
  prereq_classes = {}
  prereqs.each do |p|
    prereq_classes[p[0]] = p[1]
  end.to_h
  class_count = prereqs.flatten.uniq.map do |c|
    [c, prereqs.flatten.count(c)]
  end
  sae = class_count.find_all do |c|
    c[1] == 1
  end

  starting_class = sae.find do |c|
    prereq_classes[c[0]] != nil
  end

  sorted = 
  binding.pry
  sorted_classes = []
  prereqs.each do |p,c|
  end
end




# PSEUDO CODE
#=======================================================================================
