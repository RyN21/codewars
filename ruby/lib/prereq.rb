require 'pry'

# MY SOLUTION
#=======================================================================================

def prereq(prereqs)
  prereq_classes = {}
  prereqs.each do |p|
    prereq_classes[p[0]] = p[1]
  end
  binding.pry
end




# PSEUDO CODE
#=======================================================================================
