require 'pry'


def tickets(people)
  drawer = {'25' => 0, '50' => 0, '100' => 0}
  while people.count > 0
    if people[0] == 25
      drawer['25'] += 1
      people.shift
      return "YES" if people.count == 0
    elsif people[0] == 50 && drawer['25'] > 0
      drawer['25'] -= 1
      drawer['50'] += 1
      people.shift
      return "YES" if people.count == 0
    elsif people[0] == 100 && drawer['25'] == 3
      drawer['25'] -= 3
      people.shift
      return "YES" if people.count == 0
    elsif people[0] == 100 && drawer['25'] == 2 && drawer['50'] >= 1
      drawer['25'] -= 2
      drawer['50'] -= 1
      drawer['100'] += 1
      people.shift
      return "YES" if people.count == 0
    else
      return "NO"
    end
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
