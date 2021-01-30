require 'pry'


def tickets(people)
  drawer = []
  until people.count == 1
    drawer << people[0]
    people.shift
    binding.pry

  end
end



# def tickets(people)
#   drawer = 0
#   until people == [] do
#     if people[0] == 25
#       drawer += people[0]
#       people.shift
#       return 'YES' if people = []
#     elsif people[0] == 50 && drawer >= 25
#       drawer += 25
#       people.shift
#       return 'YES' if people = []
#     elsif people[0] == 100 && drawer >= 75
#       drawer += 25
#       people.shift
#       return 'YES' if people = []
#     else
#       break
#     end
#     return 'NO'
#   end
# end






# people.each do |p|
#   if p = 25
#     drawer += p
#   elsif p == 50 && drawer >= 25
#     binding.pry
#     drawer += p
#     drawer -= 25
#   end
