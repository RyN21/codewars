require 'pry'

def tickets(people)
  drawer = 0
  until people == [] do
    if people[0] == 25
      drawer += people[0]
      return 'YES' if people = []
    elsif people[0] == 50 && drawer >= 25
      drawer += 50
      drawer -= 25
      return 'YES' if people = []
    elsif people[0] == 100 && drawer >= 75
      drawer += 100
      drawer -= 75
      return 'YES' if people = []
    else
      return 'NO'
    end
  end
  people.shift
end






# people.each do |p|
#   if p = 25
#     drawer += p
#   elsif p == 50 && drawer >= 25
#     binding.pry
#     drawer += p
#     drawer -= 25
#   end
